package eComm.shop.ShopBack.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)		
		private int cartID;
		public int getCartID() {
			return cartID;
		}
		@ManyToOne
		@JoinColumn(name="userID", nullable=false, updatable=false, insertable=false )
		private User user;

		public void setCartID(int cartID) {
			this.cartID = cartID;
		}

		

		public long getPrice() {
			return price;
		}



		public void setPrice(long price) {
			this.price = price;
		}



		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getProdName() {
			return prodName;
		}

		public void setProdName(String prodName) {
			this.prodName = prodName;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public Date getDateAdded() {
			return dateAdded;
		}

		public void setDateAdded(Date dateAdded) {
			this.dateAdded = dateAdded;
		}

		public int getUserID() {
			return userID;
		}

		public void setUserID(int userID) {
			this.userID = userID;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		private long price;
		private String username;
	    private String prodName;
	    private int quantity;
	    private String status;
	    private Date dateAdded;
	    private int userID;

	}




