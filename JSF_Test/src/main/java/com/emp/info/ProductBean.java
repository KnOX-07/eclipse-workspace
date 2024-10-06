package com.emp.info;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import java.util.ArrayList;
import java.util.List;

@ManagedBean
@ViewScoped
public class ProductBean {
    private List<Product> productList;
    private Product selectedProduct;

    public ProductBean() {
        productList = new ArrayList<>();
        productList.add(new Product("A0001", "Intel CPU", 700.00, 1));
        productList.add(new Product("A0002", "Harddisk 10TB", 500.00, 2));
        productList.add(new Product("A0003", "Dell Laptop", 11600.00, 8));
        productList.add(new Product("A0004", "Samsung LCD", 5200.00, 3));
        productList.add(new Product("A0005", "A4Tech Mouse", 100.00, 10));
    }

    public List<Product> getProductList() {
        return productList;
    }

    public Product getSelectedProduct() {
        return selectedProduct;
    }

    public void setSelectedProduct(Product selectedProduct) {
        this.selectedProduct = selectedProduct;
    }

    public void editProduct(Product product) {
        this.selectedProduct = product;
    }

    public void saveChanges() {
        selectedProduct = null;
    }
}