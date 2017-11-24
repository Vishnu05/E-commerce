package Vishnu.Restaurant;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import Vishnu.Dao.CartDAO;
import Vishnu.Dao.ProductDAO;
import Vishnu.Model.Cart;
import Vishnu.Model.Product;
import Vishnu.Model.Supplier;

 
@Controller
public class CartController {
@Autowired
ProductDAO productDAO;
@Autowired
CartDAO cartDAO;
@RequestMapping(value="addToCart/{productId}")
public String addToCart(@PathVariable("productId") int productId,HttpSession session,Model m)
{

	Cart cart=new Cart();
	System.out.println(cart);
	String userId=(String)session.getAttribute("userId");
	cart.setCartid(1001);
	cart.setProductId(productId);
 
	cart.setStatus("N");
	cart.setUserId(userId); 
	Product product=productDAO.getProduct(productId);
	cart.setProductName(product.getProductName());
	
	cart.setPrice(product.getPrice());
	cartDAO.addToCart(cart);
	List<Cart> list=cartDAO.getCartItems(userId);
	m.addAttribute("cartitems", list);
	return "cart";
}

 

}