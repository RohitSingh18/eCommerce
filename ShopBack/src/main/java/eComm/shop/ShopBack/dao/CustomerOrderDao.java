package eComm.shop.ShopBack.dao;

import java.util.List;

import eComm.shop.ShopBack.model.CustomerOrder;

public interface CustomerOrderDao {
	
	public boolean addOrder(CustomerOrder customerorder);
	
	public List<CustomerOrder> getAllOrders();
	
	public CustomerOrder getOrderById(int UserID);
	
	public int changeOrderStatus(int UserID, String status);

}
