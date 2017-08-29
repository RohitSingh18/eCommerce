package eComm.shop.ShopBack.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eComm.shop.ShopBack.model.Category;
import eComm.shop.ShopBack.model.Product;


@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;

	public boolean addProduct(Product c) {
		Session s=sessionFactory.getCurrentSession();
        s.persist(c);
		return true;
	}

	public boolean deleteProduct(int proid) {
		Session s=sessionFactory.getCurrentSession();
		Product c=(Product)s.load(Product.class,proid);
		s.delete(c);
		return true;

	}

	public boolean updateProduct(Product c) {
		Session s=sessionFactory.getCurrentSession();
		s.update(c);
		return true;
	}

	public List<Product> getAllProduct() {
		 Session s=sessionFactory.getCurrentSession();
		 Query q= s.createQuery("from Product");
		  List<Product> list=q.getResultList();	
		 return list;
	}

	public Product productByid(int proid) {
		 Session s=sessionFactory.getCurrentSession();
			Query<Product> q=s.createQuery("from Product where productID="+proid);
			 Product prolist=(Product)q.getSingleResult();	
			return prolist;
	
	}
	
  public List<Product>productByCategory(int categoryID)
  {
	  Session s=sessionFactory.getCurrentSession();
	  Query<Product>ql=s.createQuery("from Product where categoryID='" +categoryID+"'");
	  List<Product> plist=ql.getResultList();
	  return plist;
  }

	
}
