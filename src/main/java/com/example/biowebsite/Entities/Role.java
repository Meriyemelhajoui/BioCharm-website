package com.example.biowebsite.Entities;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name = "roles")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  int id;
    @Column(nullable=false , unique = true)
    @NotEmpty
    private String name;

    @ManyToMany(mappedBy = "roles")

    private List<User> users;
}
