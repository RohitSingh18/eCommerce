package eComm.shop.ShopBack.dao;

import java.util.List;

import eComm.shop.ShopBack.model.Product;

public interface ProductDao {
	boolean addProduct(Product c);
	boolean deleteProduct(int proid);
	boolean updateProduct(Product c);
	List<Product>getAllProduct();
	Product productByid(int proid);

}
