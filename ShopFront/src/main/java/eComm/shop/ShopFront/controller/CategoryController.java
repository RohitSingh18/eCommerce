package eComm.shop.ShopFront.controller;

import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import eComm.shop.ShopBack.dao.CategoryDao;
import eComm.shop.ShopBack.model.Category;
@Controller
public class CategoryController {

	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="/addCategory",method=RequestMethod.POST)
	
	public String addCategory(@ModelAttribute("category")Category c,HttpSession s)
	{
		
		 if(c.getCategoryID()==0)
		    {
			categoryDao.addCategory(c);
			MultipartFile mp=c.getImage();
			ServletContext context=s.getServletContext();
			String filelocation=context.getRealPath("/resources/images");
			System.out.println(filelocation);
			String filename=filelocation+"\\"+c.getCategoryID()+".jpg";
			System.out.println(filename);
			try{
				byte b[]=mp.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
			}
			catch(Exception e){}
		

						}
		    else
		    {
		    	categoryDao.updateCategory(c);

				
		    }
		 return "redirect:/Category";
	}
		@RequestMapping(value="/updateCategory/{categoryId}")
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

	
	

