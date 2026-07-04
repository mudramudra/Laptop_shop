package com.laptopshop.smartlaptop.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class Laptop {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int laptopId;

    private String laptopName;

    private String brand;

    private String processor;

    private String ram;

    private String storage;

    private String graphicsCard;

    private String displaySize;

    private String operatingSystem;

    private String color;

    private double price;

    private int stockQuantity;

    private double rating;

    private String imageUrl;

    private String description;
}
