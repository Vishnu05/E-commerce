package Vishnu.Restaurant;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import Vishnu.Dao.CartDAO;
import Vishnu.Dao.ProductDAO;
import Vishnu.Dao.RegisterDao;
import Vishnu.Model.Cart;
import Vishnu.Model.Register;


@Controller
public class OrderController {
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	RegisterDao registerDao;
	
	@RequestMapping("orderconfirm")
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
 