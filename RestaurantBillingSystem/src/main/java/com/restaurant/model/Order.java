package com.restaurant.model;

import java.util.ArrayList;

public class Order {

    private ArrayList<OrderItem> items;
    private double taxPercentage;
    private double serviceChargePercentage;

    // Default Constructor
    public Order() {
        items = new ArrayList<>();
        taxPercentage = 5;          // 5% Tax
        serviceChargePercentage = 10; // 10% Service Charge
    }

    // Add Item
    public void addItem(OrderItem item) {
        items.add(item);
    }

    // Calculate Subtotal
    public double calculateSubtotal() {
        double subtotal = 0;

        for (OrderItem item : items) {
            subtotal += item.calculateTotal();
        }

        return subtotal;
    }

    // Calculate Tax
    public double calculateTax() {
        return calculateSubtotal() * taxPercentage / 100;
    }

    // Calculate Service Charge
    public double calculateServiceCharge() {
        return calculateSubtotal() * serviceChargePercentage / 100;
    }

    // Calculate Grand Total
    public double calculateGrandTotal() {

        double total = calculateSubtotal()
                     + calculateTax()
                     + calculateServiceCharge();

        return Math.round(total * 100.0) / 100.0;
    }

    // Display Order
    public void displayOrder() {

        System.out.println("----- ORDER -----");

        for (OrderItem item : items) {
            System.out.println(item.getItemName() +
                    " = ₹" + item.calculateTotal());
        }

        System.out.println("-----------------");
        System.out.println("Subtotal : ₹" + calculateSubtotal());
        System.out.println("Tax : ₹" + calculateTax());
        System.out.println("Service Charge : ₹" + calculateServiceCharge());
        System.out.println("Grand Total : ₹" + calculateGrandTotal());

    }
}