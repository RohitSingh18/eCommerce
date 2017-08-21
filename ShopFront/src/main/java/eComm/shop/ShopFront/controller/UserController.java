package eComm.shop.ShopFront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import eComm.shop.ShopBack.dao.UserDao;
import eComm.shop.ShopBack.model.BillingAddress;
import eComm.shop.ShopBack.model.ShippingAddress;
import eComm.shop.ShopBack.model.User;
@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
@RequestMapping(value="/save",method=RequestMethod.POST)
public String addUser(@ModelAttribute("user")User u)
{
	System.out.print("user data is going to save");

	userDao.save(u);
	
		return "redirect:/";
}

@RequestMapping(value="/logg")
public String logg()

{
	return "/";
}
	
}
