package eComm.shop.ShopFront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import eComm.shop.ShopBack.dao.CategoryDao;
import eComm.shop.ShopBack.model.Category;
@Controller
public class CategoryController {

	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="/addCategory",method=RequestMethod.POST)
	
	public String addCategory(@ModelAttribute("category")Category c,Model model)
	{
		
		 if(c.getCategoryID()==0)
		    {
			categoryDao.addCategory(c);

						}
		    else
		    {
		    	categoryDao.updateCategory(c);

				
		    }
		 return "Category";
	}
		@RequestMapping(value="/updateCategory/{categoryTd}")
			public String updatecategory(@PathVariable("categoryId")Integer catid, Model model)
			{
				model.addAttribute("category",categoryDao.categoryByid(catid));
				model.addAttribute("categoryList",categoryDao.getAllCategory());
				return  "Category";
			}
		@RequestMapping(value="/deleteCategory/{catId}")
		public String deletecategory(@PathVariable("catId")Integer catid,Model model)
		{
				model.addAttribute("category",categoryDao.categoryByid(catid));
				categoryDao.deleteCategory(catid);
			    model.addAttribute("categoryList",categoryDao.getAllCategory());
				return "redirect:/Category";
		}
	}

	
	

