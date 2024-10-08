package com.emp.info;

public class Product {
    private String orderNo;
    private String name;
    private double price;
    private int quantity;

    public Product(String orderNo, String name, double price, int quantity) {
        this.orderNo = orderNo;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
}