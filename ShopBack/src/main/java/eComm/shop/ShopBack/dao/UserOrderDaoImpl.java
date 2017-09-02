package eComm.shop.ShopBack.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eComm.shop.ShopBack.model.User;
import eComm.shop.ShopBack.model.UserOrder;
@Transactional
@Repository("userOrderDAO")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class UserOrderDaoImpl implements UserOrderDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean addUserOrder(UserOrder userOrder) {
		Session session = sessionFactory.getCurrentSession();

		User user = userOrder.getUserr();
		userOrder.setBillingDetails(user.getBillingaddress());
		userOrder.setShippingDetails(user.getShippingaddress());
		userOrder.setOrderStatus("Placed");
		session.saveOrUpdate(userOrder);
		session.saveOrUpdate(user);
		session.saveOrUpdate(user.getBillingaddress());
		session.saveOrUpdate(user.getShippingaddress());

		return true;
	}

	public List<UserOrder> getAllOrders() {
		return sessionFactory.getCurrentSession().createQuery("FROM UserOrder").list();
	}

	public UserOrder getUserOrderById(int id) {
		return sessionFactory.getCurrentSession().get(UserOrder.class, id);
	}

	public int changeOrderStatus(int id, String status) {
		Query query = sessionFactory.getCurrentSession()
				.createQuery("UPDATE UserOrder SET orderStatus = '" + status + "' where orderID = " + id);
		return query.executeUpdate();
	}

}
