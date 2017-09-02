package eComm.shop.ShopBack.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import org.springframework.stereotype.Component;

import java.util.List;

@Entity
@Component
public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id	
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int userID;
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	private String firstName;
	private String  lastName;
	private long phoneNumber;
	private String  emailId;
	private String  password;
	private boolean active;
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
   public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
@OneToOne(mappedBy="user")
   private BillingAddress billingaddress;
	public BillingAddress getBillingaddress() {
	return billingaddress;
}
public void setBillingaddress(BillingAddress billingaddress) {
	this.billingaddress = billingaddress;
}

@OneToOne(mappedBy="usr")
private ShippingAddress shippingaddress;
public ShippingAddress getShippingaddress() {
	return shippingaddress;
}
public void setShippingaddress(ShippingAddress shippingaddress) {
	this.shippingaddress = shippingaddress;
	
}
@OneToMany(mappedBy = "user", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
private List<Cart> cartItems;
public List<Cart> getCartItems() {
	return cartItems;
}
public void setCartItems(List<Cart> cartItems) {
	this.cartItems = cartItems;
}
}
