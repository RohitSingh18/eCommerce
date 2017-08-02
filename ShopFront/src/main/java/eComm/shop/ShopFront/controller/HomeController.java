package eComm.shop.ShopFront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	
   @RequestMapping("/")
	public String home()
	{
		return "index";
	}
   @RequestMapping("/Category")
	public String Category(Model model)
	
	{
		model.addAttribute("category", new eComm.shop.ShopBack.model.Category());
		return "Category";
	}


}
