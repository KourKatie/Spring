package com.test.util.Controller;

/**
 * Created by Katie on 8/14/2017.
 */
public class coffeeItems {
    private String name;
    private String description;
    private int quantity;
    private double price;

    public coffeeItems() {
        name = "";
        description = "";
        quantity = 0;
        price = 0.0;
    }

    public coffeeItems(String cname, String cdescription, int cquantity, double cprice) {
        name = cname;
        description = cdescription;
        quantity = cquantity;
        price = cprice;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
