package com.example.biowebsite.Services;

import com.example.biowebsite.DTO.ProductDTO;
import com.example.biowebsite.Entities.Product;
import com.example.biowebsite.Repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;


@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;

    public List<Product> getAllProducts(){
        return productRepository.findAll();
    }

    public void addProduct(Product product){
        productRepository.save(product);
    }

    public void removeProductById(long id){
        productRepository.deleteById(id);
    }

    public Optional<Product> getProductsById(long id){
        return productRepository.findById(id);
    }



    public List<Product> getAllProductsByCategoryId(int id){
        return productRepository.findAllByCategory_Id(id);
    }

    public List<Product> searchProductsByName(String productName) {
        return productRepository.searchProductsByName("%" + productName.toLowerCase() + "%");
    }

}
