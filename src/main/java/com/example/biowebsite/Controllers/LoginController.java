package com.example.biowebsite.Controllers;


import com.example.biowebsite.Entities.Role;
import com.example.biowebsite.Entities.User;
import com.example.biowebsite.Repositories.RoleRepository;
import com.example.biowebsite.Repositories.UserRepository;
import com.example.biowebsite.global.GlobalData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LoginController {
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @GetMapping("/login")
    public String login(){
        GlobalData.cart.clear();
        return "Login";
    }

    @GetMapping("/register")
    public String registerGet(){
        return "Registration";
    }

    @PostMapping("/register")
    public String registerPost(@ModelAttribute("user") User user, HttpServletRequest request) throws ServletException{
        String password = user.getPassword();
        //Encode the user's password//
        user.setPassword(bCryptPasswordEncoder.encode(password));
        // Attribute to the User the role
        List<Role> roles= new ArrayList<>();
        user.setRoles(roles);
        roles.add(roleRepository.findById(2).get());
        userRepository.save(user);
        request.login(user.getEmail(),password);
        return "redirect:/";
    }





}
