package eComm.shop.ShopBack.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class UserOrder implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderID;
	private String orderStatus;
	@OneToOne
	@JoinColumn(name = "userID")
	private User userr;

	@OneToOne
	@JoinColumn(name = "billingID")
	private BillingAddress billingDetails;

	@OneToOne
	@JoinColumn(name = "shippingID")
	private ShippingAddress shippingDetails;

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public User getUserr() {
		return userr;
	}

	public void setUserr(User userr) {
		this.userr = userr;
	}

	public BillingAddress getBillingDetails() {
		return billingDetails;
	}

	public void setBillingDetails(BillingAddress billingDetails) {
		this.billingDetails = billingDetails;
	}

	public ShippingAddress getShippingDetails() {
		return shippingDetails;
	}

	public void setShippingDetails(ShippingAddress shippingDetails) {
		this.shippingDetails = shippingDetails;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
}
