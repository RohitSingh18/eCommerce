package eComm.shop.ShopFront.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import eComm.shop.ShopBack.dao.CategoryDao;
import eComm.shop.ShopBack.dao.ProductDao;
import eComm.shop.ShopBack.model.BillingAddress;
import eComm.shop.ShopBack.model.Category;
import eComm.shop.ShopBack.model.Product;
import eComm.shop.ShopBack.model.ShippingAddress;
import eComm.shop.ShopBack.model.User;

@Controller
public class HomeController {
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao;
   @RequestMapping("/")
	public String home(Model model)
	{
	   model.addAttribute("productList",productDao.getAllProduct());
		return "index";
	}
   @RequestMapping("/Category")
	public String Category(Model model)
	
	{
		model.addAttribute("categoryList",categoryDao.getAllCategory());
		model.addAttribute("category", new Category());
		
		return "Category";
	}

	
   
   @RequestMapping("/Product")
  	public String Product(Model model)

     {
		model.addAttribute("categoryList",categoryDao.getAllCategory());
	   model.addAttribute("productList",productDao.getAllProduct());
        model.addAttribute("product", new Product());
  		
  		return "Product";
  	
     }
   
   @RequestMapping("/Registration")
   public String regis(Model model)
{
	   ShippingAddress ship = new ShippingAddress();
	   BillingAddress bill = new BillingAddress();
	   User user= new User();
	   user.setShippingaddress(ship);
	   user.setBillingaddress(bill);
	   model.addAttribute("user",new User());
	return "Registration";
   }
   
   @RequestMapping("/Login")
   public String login()
{
	return "Login";
   }
}
