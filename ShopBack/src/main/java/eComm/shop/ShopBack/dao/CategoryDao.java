package eComm.shop.ShopBack.dao;

import java.util.List;

import eComm.shop.ShopBack.model.Category;

public interface CategoryDao {
	boolean addCategory(Category c);
	boolean deleteCategory(int catid);
	boolean updateCategory(Category c);
	List<Category>getAllCategory();
	Category categoryByid(int catid);
	
	

}
