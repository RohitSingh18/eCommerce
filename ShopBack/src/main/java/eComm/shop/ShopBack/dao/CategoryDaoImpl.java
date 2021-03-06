package eComm.shop.ShopBack.dao;

import java.util.List;
import java.util.UUID;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import eComm.shop.ShopBack.dao.*;
import eComm.shop.ShopBack.model.Category;

@Repository("categoryDao")
@Transactional

public class CategoryDaoImpl implements CategoryDao{
	@Autowired
	SessionFactory sessionFactory;

	public boolean addCategory(Category c) {
		
		Session s=sessionFactory.getCurrentSession();
        s.persist(c);
		return true;
	}

	public boolean deleteCategory(int catid) {
		Session s=sessionFactory.getCurrentSession();
		Category c=(Category)s.load(Category.class,catid);
		s.delete(c);
		return true;
	}

	public boolean updateCategory(Category c) {
		Session s=sessionFactory.getCurrentSession();
		s.update(c);
		return true;
	}

	public List<Category> getAllCategory() {
		 Session s=sessionFactory.getCurrentSession();
		 Query q= s.createQuery("from Category");
		  List<Category> list=q.getResultList();	
		 return list;

	}
	public Category categoryByid(int catid)
	{
		 Session s=sessionFactory.getCurrentSession();
		Query<Category> q=s.createQuery("from Category where categoryID="+catid);
		Category catlist=(Category)q.getSingleResult();	
		return catlist;
	}

}


