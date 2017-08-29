package eComm.shop.ShopBack.dao;

import java.util.List;

import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eComm.shop.ShopBack.model.Cart;

@Repository("cartDao")
@Transactional
public class CartDaoImpl implements CartDao {
	

	@Autowired
	SessionFactory sessionFactory;
	public boolean Save(Cart c) {
		Session s=sessionFactory.getCurrentSession();
		s.persist(c);
		return true;
	}

	public boolean delete(int cartID) {
		Cart cart=sessionFactory.getCurrentSession().load(Cart.class, cartID);
		Session s=sessionFactory.getCurrentSession();
		s.delete(cart);
		return true;
	}

	public boolean update(Cart c) {
		Session s=sessionFactory.getCurrentSession();
		s.update(c);
		return true;
	}

	public int getQuantity(String username, String productname) {
		Cart cart=(Cart)sessionFactory.getCurrentSession().createQuery("from Cart where username='"+username+"' and prodName='"+productname+"'");
		
		return (cart.getQuantity());
	}

	public List<Cart> getCartList(String username) {
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	public double getTotalAmount(String username) {
		List<Cart> cartList=sessionFactory.getCurrentSession().createQuery("from Cart").list();
		double total=0;
		for( Cart c :cartList){
			total=total+(c.getPrice()*c.getQuantity());
		};
		return total;
	}

	public List<Cart> getCartByid(int userid,String productname) {
		
		return sessionFactory.getCurrentSession().createQuery("from Cart where userid='"+userid+"'").list();
		
	}

	public int clearCart(String username) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public long getNumberOfProducts(String username){
		Query query=sessionFactory.getCurrentSession().createQuery("SELECT SUM(quantity) FROM Cart where username=?1 and status = 'NEW'");
		query.setParameter(1, username);
		
		if  (query.uniqueResult()==null){
			return 0;
		}
		else{
			long result=(Long)query.uniqueResult();
			return result;
		}
		
	}



	public Cart getCartById(int userid) {
		
		return sessionFactory.getCurrentSession().get(Cart.class,userid);
	}

}
