package eComm.shop.ShopBack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name="BillingAddress")
public class BillingAddress {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int BillingAddressID;
	@OneToOne 
	@JoinColumn
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Column(unique=true)
	private long houseNo;
	public int getBillingAddressID() {
		return BillingAddressID;
	}
	public void setBillingAddressID(int billingAddressID) {
		BillingAddressID = billingAddressID;
	}

	public long getHouseNo() {
		return houseNo;
	}
	public void setHouseNo(long houseNo) {
		this.houseNo = houseNo;
	}
	public String getStreetName() {
		return streetName;
	}
	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public long getZip() {
		return zip;
	}
	public void setZip(long zip) {
		this.zip = zip;
	}
	private String streetName;
	private String city;
	private String state;
	private long zip;
	
	

}

	


