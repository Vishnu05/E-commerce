package Vishnu.Restaurant;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Vishnu.Dao.ProductDAO;
import Vishnu.Model.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="AddProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product product,Model m)
	{
		productDAO.addProduct(product);
		
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "redirect:/Product";
	}
	
	@RequestMapping("/product")
	public String showproduct(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
	
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "product";
	}
	
	@RequestMapping(value="deleteproduct/{catId}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("productId")int ProductId,Model m)
	{
		Product product=productDAO.getProduct(ProductId);
		productDAO.deleteProduct(product);
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("categoryList",listProduct);
		
		Product product1=new Product();
		m.addAttribute(product1);
		
		return "product1";
	}

	
}



