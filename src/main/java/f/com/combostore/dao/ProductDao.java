package f.com.combostore.dao;

import f.com.combostore.model.Product;

import java.util.List;

public interface ProductDao {
    void addProduct(Product product);
    Product getProductById(String id);
    List<Product> getAllProducts();
    void deleteProduct(String id);
}
