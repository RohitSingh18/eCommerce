package eComm.shop.ShopBack.dao;

import java.util.List;

import eComm.shop.ShopBack.model.Cart;

public interface CartDao {
	public boolean Save(Cart c);
	public boolean delete(int cartID);
	public boolean update(Cart c);
	public int getQuantity(String username, String productname);
	public List<Cart> getCartList(String username);
	public double getTotalAmount(String username);
	public List<Cart> getCartByid(int userid, String productname);
	public int clearCart(String username);
	public Cart getCartById(int id);
	public long getNumberOfProducts(String username);
	
	
}
