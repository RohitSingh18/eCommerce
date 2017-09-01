package eComm.shop.ShopBack.dao;

import java.io.IOException;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eComm.shop.ShopBack.model.Cart;
@Repository("cartDao")
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired(required=true)
	SessionFactory sessionFactory;
	
	
	public List<Cart> getCartList(String username) {
		Query query = sessionFactory.getCurrentSession()
				.createQuery("from Cart where username = '" + username + "' and status='NEW'");
		return query.list();
	}

	public boolean save(Cart cart) {
		sessionFactory.getCurrentSession().save(cart);
		return true;
	}

	public boolean delete(int id) {
		sessionFactory.getCurrentSession().delete(getCartById(id));
		return true;
	}

	public boolean update(Cart cart) {
		sessionFactory.getCurrentSession().update(cart);
		return true;
	}

	public int getQuantity(String username, String productname) {
		Query query = sessionFactory.getCurrentSession().createQuery("SELECT quantity from Cart WHERE username='"
				+ username + "' and prodName='" + productname + "' and status = 'NEW'");
		return  (Integer) query.uniqueResult();
	}

	public long getTotalAmount(String username) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"SELECT SUM(price*quantity) FROM Cart where username='" + username + "' and status = 'NEW'");
		if (query.uniqueResult() == null) {
			return 0;
		} else {
			long result =  (Long) query.uniqueResult();
			return result;
		}
	}

	public Cart getCartByUsername(String username, String productname) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Cart WHERE username='" + username
				+ "' and prodName='" + productname + "' and status = 'NEW'");
		return (Cart) query.uniqueResult();
	}

	public long getNumberOfProducts(String username) {
		Query query = sessionFactory.getCurrentSession()
				.createQuery("SELECT SUM(quantity) FROM Cart where username='" + username + "' and status = 'NEW'");
		if (query.uniqueResult() == null) {
			return 0;
		} else {
			long result =  (Long) query.uniqueResult();
			return result;
		}
	}

	public Cart getCartById(int id) {
		return sessionFactory.getCurrentSession().get(Cart.class, id);
	}

	public int clearCart(String username) {
		Query query = sessionFactory.getCurrentSession()
				.createQuery("DELETE from Cart where username = '" + username + "'");
		return query.executeUpdate();
	}

	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartById(cartId);
		if (cart == null) {
			throw new IOException(cartId + "");
		}
		update(cart);
		return cart;
	}

}