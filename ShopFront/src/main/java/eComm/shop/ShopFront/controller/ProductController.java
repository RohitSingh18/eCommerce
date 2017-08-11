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
import eComm.shop.ShopBack.dao.ProductDao;
import eComm.shop.ShopBack.model.Category;
import eComm.shop.ShopBack.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	
	public String addProduct(@ModelAttribute("product")Product p,HttpSession session)
	{
		
		 if(p.getProductID()==0)
		    {
			 productDao.addProduct(p);
			 MultipartFile mp=p.getImage();
				ServletContext context=session.getServletContext();
				String filelocation=context.getRealPath("/resources/images");
				System.out.println(filelocation);
				String filename=filelocation+"\\"+p.getProductID()+".jpg";
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
		    	productDao.updateProduct(p);

				
		    }
		 return "redirect:/Product";
	}
		@RequestMapping(value="/updateProduct/{productId}")
			public String updateproduct(@PathVariable("productId")Integer proid, Model model)
			{
				model.addAttribute("categoryList",categoryDao.getAllCategory());
				model.addAttribute("product",productDao.productByid(proid));
				model.addAttribute("productList",productDao.getAllProduct());
				return  "Product";
			}
		@RequestMapping(value="/deleteProduct/{prodId}")
		public String deleteproduct(@PathVariable("prodId")Integer proid,Model model)
		{
				model.addAttribute("product",productDao.productByid(proid));
				productDao.deleteProduct(proid);
			    model.addAttribute("productList",productDao.getAllProduct());
				return "redirect:/Product";
		}
	}

	
	
