package com.example.biowebsite.Services;


import com.example.biowebsite.Entities.Category;
import com.example.biowebsite.Repositories.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository;
    public List<Category> getAllCategory(){
        return categoryRepository.findAll();
    }
    public void addCategory(Category category){
        categoryRepository.save((category));
    }
    public void RemoveCategoryById(int id ){
        categoryRepository.deleteById(id);
    }


    // Methode d'update de categorie par ID : Optional presente un objet aui peut etre present ou nn  //
    public Optional<Category> getCategoryById(int id){
        return categoryRepository.findById(id);
    }
}
