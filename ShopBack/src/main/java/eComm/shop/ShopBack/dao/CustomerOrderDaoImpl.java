package eComm.shop.ShopBack.dao;
import eComm.shop.ShopBack.model.CustomerOrder;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
@Transactional
@Repository("OrderDao")

public class CustomerOrderDaoImpl implements CustomerOrderDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public boolean addOrder(CustomerOrder customerorder) {
		Session session = sessionFactory.getCurrentSession();
		session.save(customerorder);
		return true;
	}

	public List<CustomerOrder> getAllOrders() {
		
		return sessionFactory.getCurrentSession().createQuery("FROM Order").list();
	}

	public CustomerOrder getOrderById(int UserID) {
		return sessionFactory.getCurrentSession().get(CustomerOrder.class, UserID);
	}

	public int changeOrderStatus(int UserID, String status) {
		
		Query query = sessionFactory.getCurrentSession().createQuery("UPDATE CustomerOrder SET orderStatus = '" + status+ "' where id ="+ UserID);
		return query.executeUpdate();
				
	}

}
