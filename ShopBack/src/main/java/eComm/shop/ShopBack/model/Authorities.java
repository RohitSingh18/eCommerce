package eComm.shop.ShopBack.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Authorities implements Serializable {
	@Id
	@GeneratedValue
	private int AuthoritiesId;
    private String Username;
    private String Authority;
	
    public int getAuthoritiesId() {
		return AuthoritiesId;
	}
	public void setAuthoritiesId(int authoritiesId) {
		AuthoritiesId = authoritiesId;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getAuthority() {
		return Authority;
	}
	public void setAuthority(String authority) {
		Authority = authority;
	}
	

}
