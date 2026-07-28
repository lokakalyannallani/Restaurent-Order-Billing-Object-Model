package com.restaurant.model;

public class Modifier {

    private String name;
    private double price;

    // Default Constructor
    public Modifier() {

    }

    // Parameterized Constructor
    public Modifier(String name, double price) {
        this.name = name;
        this.price = price;
    }

    // Getter
    public String getName() {
        return name;
    }

    // Setter
    public void setName(String name) {
        this.name = name;
    }

    // Getter
    public double getPrice() {
        return price;
    }

    // Setter
    public void setPrice(double price) {
        this.price = price;
    }
}