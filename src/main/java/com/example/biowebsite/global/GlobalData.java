package com.example.biowebsite.global;

import com.example.biowebsite.Entities.Product;

import java.util.ArrayList;
import java.util.List;

public class GlobalData {
    public static List<Product>cart;
    static{
        cart= new ArrayList<Product>();
    }
}
