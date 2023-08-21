package com.example.biowebsite.Controllers;


import com.example.biowebsite.DTO.ProductDTO;
import com.example.biowebsite.Entities.Category;
import com.example.biowebsite.Entities.Product;
import com.example.biowebsite.Services.CategoryService;
import com.example.biowebsite.Services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

@Controller
public class AdminController {

    private String uploadDir = System.getProperty("user.dir")+"/src/main/resources/static/ProductsImages";

    @Autowired
    CategoryService categoryService;


    @Autowired
    ProductService productService;

    @GetMapping("/admin")
    public String adminHome(){
        return "AdminHome";
    }

    @GetMapping("/admin/categories")
    public String getCat(Model model){
        model.addAttribute("categories",categoryService.getAllCategory());
        return "Categories";
    }



    @GetMapping("/admin/categories/add")
    public String getCatAdd(Model model){
        model.addAttribute("category" , new Category());
        return "CategoriesAdd";

    }


    @PostMapping("/admin/categories/add")
    public String postCatAdd(@ModelAttribute("category")Category category){
        categoryService.addCategory(category);
        return "redirect:/admin/categories";

    }

    @GetMapping("/admin/categories/delete/{id}")
    public String deleteCate(@PathVariable int id ){
    categoryService.RemoveCategoryById(id);
    return "redirect:/admin/categories";

    }

    @GetMapping("/admin/categories/update/{id}")
    public String UpdateCate(@PathVariable int id , Model model){
        Optional<Category> category= categoryService.getCategoryById(id);

        if(category.isPresent()){
            model.addAttribute("category",category.get());
            return "CategoriesAdd";
        }else{
            return "404" ;
        }
    }


    //Product Section
    @GetMapping("/admin/products")
    public String Products(Model model){
        model.addAttribute("products",productService.getAllProducts());
        return "Products";
    }

    @GetMapping("/admin/products/add")
    public String GetAddProduct(Model model){
        model.addAttribute("productDTO",new ProductDTO());
        model.addAttribute("categories",categoryService.getAllCategory());
        return "ProductsAdd";
    }

    @PostMapping("/admin/products/add")
    public String ProductsAddPost(@ModelAttribute("productDTO") ProductDTO productdto,
                                  @RequestParam("productImage") MultipartFile file,
                                  @RequestParam("imgName") String imageName) throws IOException {
        // Création d'un nouvel objet Product
        Product product = new Product();

        // Attribution des valeurs du ProductDTO à l'objet Product
        product.setId(productdto.getId());
        product.setName(productdto.getName());
        product.setCategory(categoryService.getCategoryById(productdto.getCategoryId()).get());
        product.setPrice(productdto.getPrice());
        product.setDescription(productdto.getDescription());

        // Gestion de l'image
        String imageUUID;
        if (!file.isEmpty()) {
            // Si un fichier d'image a été fourni, on enregistre l'image et on récupère son nom
            imageUUID = file.getOriginalFilename();
            Path fileNameAndPath = Paths.get(uploadDir, imageUUID);
            Files.write(fileNameAndPath, file.getBytes());
        } else {
            // Si aucun fichier d'image n'a été fourni, on utilise le nom d'image existant
            imageUUID = imageName;
        }

        // Attribution du nom d'image au produit
        product.setImageName(imageUUID);

        // Ajout du produit en utilisant le service ProductService
        productService.addProduct(product);

        // Redirection vers la page "/admin/products" après la soumission du formulaire
        return "redirect:/admin/products";
    }


    @GetMapping("/admin/product/delete/{id}")
    public String deleteProduct(@PathVariable long id){
        productService.removeProductById(id);
        return "redirect:/admin/products";
    }


    @GetMapping("/admin/product/update/{id}")
    public String updateProductGet(@PathVariable long id, Model model){
        Product product = productService.getProductsById(id).get();
        ProductDTO productDTO= new ProductDTO();
        productDTO.setId(product.getId());
        productDTO.setName(product.getName());
        productDTO.setCategoryId(product.getCategory().getId());
        productDTO.setPrice(product.getPrice());
        productDTO.setPrice(product.getPrice());
        productDTO.setCategoryId(product.getCategory().getId());
        productDTO.setDescription(product.getDescription());
        productDTO.setImageName(product.getImageName());
        model.addAttribute("categories",categoryService.getAllCategory());
        model.addAttribute("productDTO",productDTO);

        return "ProductsAdd";
    }



    @GetMapping("/admin/statistics")
    public String ShowStatistics(){
        return "Statistics";
    }



}
