package Vishnu.Dao;

import java.util.List;

import Vishnu.Model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(Product product);
	public Product getProduct(int ProductId);
	public List<Product> retrieveProduct();
	
}
