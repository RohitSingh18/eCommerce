package eComm.shop.ShopBack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class ShippingAddress {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int ShippingAddressID;
	
	private long houseNo;
	@OneToOne 
	@JoinColumn
	private User usr;
	public User getUsr() {
		return usr;
	}
	public void setUsr(User usr) {
		this.usr = usr;
	}
	public int getShippingAddressID() {
		return ShippingAddressID;
	}
	public void setShippingAddressID(int shippingAddressID) {
		ShippingAddressID = shippingAddressID;
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
