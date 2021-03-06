package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private List<Product> productList;

    public List<Product> getProductList() {
        Product product1 = new Product();
        product1.setProductName("Guitar");
        product1.setProductId("P123");
        product1.setProductCategory("Instrument");
        product1.setProductDescription("This is a fender strut guitar");
        product1.setProductPrice(1200);
        product1.setProductCondition("New");
        product1.setProductStatus("Active");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("fender");

        Product product2 = new Product();
        product2.setProductName("Record");
        product2.setProductId("P124");
        product2.setProductCategory("Record");
        product2.setProductDescription("This is an awesome mix of 20th century! ");
        product2.setProductPrice(25);
        product2.setProductCondition("New");
        product2.setProductStatus("Active");
        product2.setUnitInStock(51);
        product2.setProductManufacturer("EMI");

        Product product3 = new Product();
        product3.setProductName("Speaker");
        product1.setProductId("P125");
        product3.setProductCategory("Accessory");
        product3.setProductDescription("This is a polk shelf speaker");
        product3.setProductPrice(355);
        product3.setProductCondition("New");
        product3.setProductStatus("Active");
        product3.setUnitInStock(9);
        product3.setProductManufacturer("polk");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);

        return productList;

    }
    public Product getProductById(String productId) throws IOException{
        for(Product product:getProductList()){
            if(product.getProductId().equals(productId)){
                return product;
            }
        }
        throw  new IOException("Product not found");
    }
}
