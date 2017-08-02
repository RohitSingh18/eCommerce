package eComm.shop.ShopBack.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eComm.shop.ShopBack.model.Category;

@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	SessionFactory sessionFactory;

	public boolean addCategory(Category c) {
		
		Session s=sessionFactory.getCurrentSession();
		c.setCategoryID(c.getCategoryName());
		s.persist(c);
		return true;
	}

	public boolean deleteCategory(Category c) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateCategory(Category c) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Category> getAllCategory() {
		 Session s=sessionFactory.getCurrentSession();
		Query q= s.createQuery("from Category");
		List<Category> list=q.getResultList();
		
		return list;
	}

}


