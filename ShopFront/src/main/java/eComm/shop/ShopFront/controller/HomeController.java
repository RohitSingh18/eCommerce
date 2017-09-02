package eComm.shop.ShopFront.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import eComm.shop.ShopBack.dao.CategoryDao;
import eComm.shop.ShopBack.dao.ProductDao;
import eComm.shop.ShopBack.dao.UserDao;
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
	@Autowired
	UserDao userDao;
   @RequestMapping("/")
	public String home(Model model)
	{
	   model.addAttribute("productList",productDao.getAllProduct());
	   model.addAttribute("categoryList",categoryDao.getAllCategory());
		return "index";
	}
   @RequestMapping("/admin/Category")
	public String Category(Model model)
	
	{
		model.addAttribute("categoryList",categoryDao.getAllCategory());
		model.addAttribute("category", new Category());
		
		return "Category";
	}

	
   
   @RequestMapping("/admin/Product")
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
   public String login(Model model)
   {
	   model.addAttribute("categoryList",categoryDao.getAllCategory());
	   model.addAttribute("productList",productDao.getAllProduct());
	return "Login";
   }
   	
   
   @RequestMapping("/ProductTable/{catID}")
  
   public String producttable (@PathVariable("catID")Integer catID,Model model)
   {
	   	model.addAttribute("productList",productDao.getAllProduct());
	    model.addAttribute("categoryList",categoryDao.getAllCategory());
	   	model.addAttribute("productList",productDao.productByCategory(catID));
	   	return"ProductTable";
   }
   
	@RequestMapping("/order")
	public String createOrder(Model model1) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		String loggedInUsername = username;

		User user = userDao.getUserByUserName(loggedInUsername);
	
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("productList",productDao.getAllProduct());
		return "redirect:/checkout?userId=" + user.getUserID();
		
	}
	@RequestMapping("/ProductDetails/{proID}")
	public String ProductDetail(@PathVariable("proID")Integer pro,Model model1)
	{
		
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		
		model1.addAttribute("productList",productDao.productByid(pro));
		model1.addAttribute("pro",productDao.getAllProduct());
		return "ProductDetails";
	}
}
