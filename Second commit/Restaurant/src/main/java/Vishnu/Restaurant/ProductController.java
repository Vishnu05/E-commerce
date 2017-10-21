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
		return "redirect:/product";
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
	
	@RequestMapping(value="deleteProduct/{productId}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("productId")int productId,Model m)
	{
		System.out.println("hello");
		Product product=productDAO.getProduct(productId);
		System.out.println(product);
		
		productDAO.deleteProduct(product);
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		
		Product product1=new Product();
		m.addAttribute(product1);
		
		return "redirect:/product";
	}

	@RequestMapping(value="updateProduct/{productId}",method=RequestMethod.GET)
	public String updateProduct(@PathVariable("productId") int productId,Model m)
	{
		System.out.println("---");
		Product product=productDAO.getProduct(productId);
		m.addAttribute(product);
		
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "updateproduct";
	}
	
	@RequestMapping(value="updateproduct",method=RequestMethod.POST)
	public String updateMyProduct(@ModelAttribute("product")Product product,Model m)
	{
		productDAO.updateProduct(product);
		
		Product product1=new Product();
		m.addAttribute(product1);
		
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		
		return "redirect:/product";
	}

	
}



