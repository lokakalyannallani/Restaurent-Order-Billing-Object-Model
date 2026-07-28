package com.restaurant.model;

public class OrderItem {

    private String itemName;
    private double price;
    private int quantity;
    private Modifier modifier;
    private boolean isVoided;

    // Default Constructor
    public OrderItem() {

    }

    // Parameterized Constructor
    public OrderItem(String itemName, double price, int quantity, Modifier modifier) {
        this.itemName = itemName;
        this.price = price;
        this.quantity = quantity;
        this.modifier = modifier;
        this.isVoided = false;
    }

    // Calculate Total
    public double calculateTotal() {

        if (isVoided)
            return 0;

        double modifierPrice = 0;

        if (modifier != null) {
            modifierPrice = modifier.getPrice();
        }

        return (price * quantity) + modifierPrice;
    }

    // Void Item
    public void voidItem() {
        isVoided = true;
    }
    

    // Getters and Setters

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Modifier getModifier() {
        return modifier;
    }

    public void setModifier(Modifier modifier) {
        this.modifier = modifier;
    }

    public boolean isVoided() {
        return isVoided;
    }

    public void setVoided(boolean isVoided) {
        this.isVoided = isVoided;
    }
}