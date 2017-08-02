package eComm.shop.ShopFront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import eComm.shop.ShopBack.dao.CategoryDao;
import eComm.shop.ShopBack.model.Category;
@Controller
public class CategoryController {

	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="/addCategory",method=RequestMethod.POST)
	
	public void addCategory(@ModelAttribute("category")Category c,Model model)
	{
		
		categoryDao.addCategory(c);
		
	}
	
	
}

