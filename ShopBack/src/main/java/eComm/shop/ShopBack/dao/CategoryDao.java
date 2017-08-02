package eComm.shop.ShopBack.dao;

import java.util.List;

import eComm.shop.ShopBack.model.Category;

public interface CategoryDao {
	boolean addCategory(Category c);
	boolean deleteCategory(Category c);
	boolean updateCategory(Category c);
	List<Category>getAllCategory();
	

}
