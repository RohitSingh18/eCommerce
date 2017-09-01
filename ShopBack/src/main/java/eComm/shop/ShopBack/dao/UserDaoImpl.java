package eComm.shop.ShopBack.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eComm.shop.ShopBack.model.Authorities;
import eComm.shop.ShopBack.model.BillingAddress;
import eComm.shop.ShopBack.model.Product;
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

public User getUserById(int id) {
		
		try {
			return (User) sessionFactory.getCurrentSession().get(User.class, id);
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
			
		}
	}

	
	public User getUserByUserName(String username) {
		
		try {
			@SuppressWarnings("rawtypes")
			Query query = sessionFactory.getCurrentSession().createQuery("from User where firstName= '" + username + "'");
			User user = (User) query.uniqueResult();

			return user;
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
		}
	}


	
	public User getUsersById(int id) {
		try {
			@SuppressWarnings("rawtypes")
			Query query = sessionFactory.getCurrentSession().createQuery("FROM User where userID=" + id);
			return (User) query.uniqueResult();
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
		}
	}

	public boolean getStatus(int id) {
		User users = getUsersById(id);
		return users.isActive();
	}

	
	public int changeStatus(int id)  {
		try {
			User users = getUsersById(id);
			boolean isEnable = users.isActive();

			if (isEnable) {
				@SuppressWarnings("rawtypes")
				Query query = sessionFactory.getCurrentSession()
						.createQuery("UPDATE User SET enabled = " + false + " WHERE userID = " + id);
				return query.executeUpdate();
			} else {
				@SuppressWarnings("rawtypes")
				Query query = sessionFactory.getCurrentSession()
						.createQuery("UPDATE User SET enabled = " + true + " WHERE userID = " + id);
				return query.executeUpdate();
			}
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
			
		}
	}
	public boolean update(User u) {
		Session s1 =sessionFactory.getCurrentSession();
		u.setActive(true);
		s1.update(u);
		u.setFirstName(u.getFirstName());
		
		return true;
	}

}

