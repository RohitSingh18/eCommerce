package eComm.shop.ShopBack.model;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

public class CustomerOrder {
	private int orderID;
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
    }
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	private int userID;
	private String orderStatus;
	
	@OneToOne
	@JoinColumn(name="username")
	private User user;
	
	@OneToOne
	@JoinColumn(name="shippingAddressID")
	private ShippingAddress shippingaddress;
	
	@OneToOne
	@JoinColumn(name="billingAddressID")
	private BillingAddress billingaddress;

}

