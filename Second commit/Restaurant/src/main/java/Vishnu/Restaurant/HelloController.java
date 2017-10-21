  package Vishnu.Restaurant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
	public class HelloController {
		@RequestMapping("/index")
		public String index(){
			return "index";
		}
	
	@RequestMapping("/register")
	public String goToregister(){
		return "register";
		}
		

		@RequestMapping("/login")
		public String goTologin(){
			return "login";
		}
		
		@RequestMapping("/aboutus")
		public String goToaboutus()
		{
			return "aboutus";
		}
		
		@RequestMapping("/home")
		public String gotohome()
		{
			return "home";
		}
	
		@RequestMapping("/briyani")
		public String gotobriayani()
		{
			return "briyani";
		}
		
		@RequestMapping("/tandoori")
		public String gototandoori()
		{
			return "tandoori";
		}

		@RequestMapping("/kebab")
		public String gotokebab()
		{
			return "kebab";
		}

		@RequestMapping("/grillchicken")
		public String gotogrillchicken()
		{
			return "grillchicken";
		}
		
		@RequestMapping("/shawarma")
		public String gotoshawrma()
		{
			return "shawarma";
		}
		
	 	
		 
	}

	
