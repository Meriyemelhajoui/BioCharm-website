package com.example.biowebsite.Controllers;


import com.example.biowebsite.Entities.Product;
import com.example.biowebsite.Services.CategoryService;
import com.example.biowebsite.Services.ProductService;
import com.example.biowebsite.global.GlobalData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    CategoryService categoryService;
    @Autowired
    ProductService productService;

    @GetMapping({"/", "/home"})
    public String home (Model model){
        model.addAttribute("cartCount", GlobalData.cart.size());
        return "index";
    }


    @GetMapping("/shop")
    public String shop (Model model){
        model.addAttribute("categories",categoryService.getAllCategory());
        model.addAttribute("products",productService.getAllProducts());
        model.addAttribute("cartCount",GlobalData.cart.size());
        return "Shop";
    }

    @GetMapping("/shop/category/{id}")
    public String shopByCategory (Model model , @PathVariable int id ){
        model.addAttribute("categories",categoryService.getAllCategory());
        model.addAttribute("cartCount",GlobalData.cart.size());
        model.addAttribute("products",productService.getAllProductsByCategoryId(id));
        return "Shop";
    }








    @GetMapping("/shop/viewproduct/{id}")
    public String viewProduct (Model model , @PathVariable int id ){
        model.addAttribute("product",productService.getProductsById(id).get());
        model.addAttribute("cartCount",GlobalData.cart.size());

        return "ViewProduct";
    }

    @GetMapping("/filter")
    public String filterProducts(@RequestParam("productName") String productName, Model model) {
        List<Product> filteredProducts = productService.searchProductsByName(productName);
        model.addAttribute("products", filteredProducts);
        model.addAttribute("cartCount", GlobalData.cart.size());
        return "FiltredProducts";
    }
















}
