package com.restaurant.test;

import com.restaurant.model.Modifier;
import com.restaurant.model.Order;
import com.restaurant.model.OrderItem;

public class Main {

    public static void main(String[] args) {

        // Create Modifiers
        Modifier cheese = new Modifier("Extra Cheese", 50);
        Modifier sauce = new Modifier("Extra Sauce", 20);

        // Create Items
        OrderItem pizza = new OrderItem("Pizza", 300, 2, cheese);
        OrderItem burger = new OrderItem("Burger", 200, 1, sauce);

        // Create Order
        Order order = new Order();

        order.addItem(pizza);
        order.addItem(burger);

        // Display Bill
        order.displayOrder();

    }

}