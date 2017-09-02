package eComm.shop.ShopBack.dao;

import java.util.List;

import eComm.shop.ShopBack.model.UserOrder;

public interface UserOrderDao {
	public boolean addUserOrder(UserOrder userOrder);

	public List<UserOrder> getAllOrders();

	public UserOrder getUserOrderById(int id);

	public int changeOrderStatus(int id, String status);

}
