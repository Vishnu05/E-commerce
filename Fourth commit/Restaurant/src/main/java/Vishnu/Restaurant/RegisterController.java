package Vishnu.Restaurant;


import Vishnu.Model.Register;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Vishnu.Dao.RegisterDao;

@Controller
public class RegisterController {

	@Autowired
	RegisterDao registerDao;
	
	@RequestMapping(value="AddRegister",method=RequestMethod.POST)
	public String addRegister(@ModelAttribute("register")Register register,Model m)
	{
		System.out.println(register);
		registerDao.addRegister(register);
		
		List<Register> listRegister=registerDao.retrieveRegister();
		m.addAttribute("registerList",listRegister);
		
		return "redirect:/login";
	}
	
	@RequestMapping("/register")
	public String Showregister(Model m)
	{
		Register register=new Register();
		m.addAttribute(register);
		
		List<Register> listRegister=registerDao.retrieveRegister();
		m.addAttribute("registerList",listRegister);
		return "register";
	}
	
	
	
	@RequestMapping("/login_success")
	public ModelAndView loginSuccess(HttpSession session, Model m) {
		
		String page = null;
		
		boolean loggedIn = true;
		// Retrieving the userId;
		String userId = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("userid", userId);
		session.setAttribute("loggedIn", loggedIn);
		
		// Retrieving the role
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();

		for (GrantedAuthority role : authorities)
		{
			System.out.println("Role:" + role.getAuthority() + "UserName:" + userId);
			if (role.getAuthority().equals("Role_Admin"))
			{
				
				page = "home";
			} 
			else
			{
				
				page = "homeome";
				
					
							
			}
			System.out.println("Login Successfull");
			
		}
		return new ModelAndView(page,"userId",userId);
		
	}
	
} 

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		