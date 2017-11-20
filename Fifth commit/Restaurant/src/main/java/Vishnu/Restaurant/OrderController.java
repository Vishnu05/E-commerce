package Vishnu.Restaurant;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Vishnu.Dao.CartDAO;
import Vishnu.Dao.ProductDAO;
import Vishnu.Model.Cart;


@Controller
public class OrderController {
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/CheckOut")
	public String orderConfirm(HttpSession session,Model m)
	{
		String userId=(String)session.getAttribute("userId");
		List<Cart> list=cartDAO.getCartItems(userId);
		
		int grandtotal=0;
		for(Cart cart:list)
		{
			grandtotal=grandtotal+(cart.getQuantity()*cart.getPrice());
		}
		m.addAttribute("grandtotal", grandtotal);
		m.addAttribute("cartitems", list);
		return "orderconfirm";
		
	}

}
 