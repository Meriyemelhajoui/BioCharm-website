package com.example.biowebsite.Repositories;

import com.example.biowebsite.Entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category,Integer> {

}
