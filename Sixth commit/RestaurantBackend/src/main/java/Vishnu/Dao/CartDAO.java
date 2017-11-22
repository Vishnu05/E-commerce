package Vishnu.Dao;

import java.util.List;

import Vishnu.Model.Cart;

public interface CartDAO {
	
	public void addToCart(Cart cartitem);
	public List<Cart> getCartItems(String userId);
	public void deleteCartItem(Cart cart);
	public Cart getCartItem(int citemid);
	public void updateCartItem(Cart cart);
}
