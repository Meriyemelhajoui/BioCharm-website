package com.example.biowebsite.Entities;

import javax.persistence.*;
import lombok.Data;


@Entity
@Data
public class Category {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
   @Column(name = "category_id")
    private int id;

    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }

     private String name;

}
