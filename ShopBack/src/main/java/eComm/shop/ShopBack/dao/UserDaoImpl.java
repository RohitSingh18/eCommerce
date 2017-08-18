package eComm.shop.ShopBack.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eComm.shop.ShopBack.model.Authorities;
import eComm.shop.ShopBack.model.BillingAddress;
import eComm.shop.ShopBack.model.ShippingAddress;
import eComm.shop.ShopBack.model.User;
@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	UserDao userDao;
	public boolean save(User u) {
		Session ss=sessionFactory.getCurrentSession();
		u.getBillingaddress().setUser(u);
		u.getShippingaddress().setUsr(u);
		u.setActive(true);
		ss.persist(u);
		ss.persist(u.getBillingaddress());
		ss.persist(u.getShippingaddress());
		Authorities auth=new Authorities();
		auth.setAuthority("ROLE_USER");
		auth.setUsername(u.getFirstName());
		ss.persist(auth);		
		
		return true;
	}

	

}
