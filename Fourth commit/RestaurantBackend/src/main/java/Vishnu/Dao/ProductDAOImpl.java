 package Vishnu.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vishnu.Model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean addProduct(Product product) {
	
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(product);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}
	
	@Transactional
	public boolean updateProduct(Product product) { 
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(product);
			 return true;	
		}
		catch(Exception e)
		{
			System.out.println("Expection Arised:"+e);
		    return false;
		}
	}
		
	@Transactional
	public boolean deleteProduct(Product product) {
	 
		try
		{
			sessionFactory.getCurrentSession().delete(product);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	 
	}

	public Product getProduct(int productId) {
	 
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,productId);
		session.close();
		return product;
	}

	 
	public List<Product> retrieveProduct() {
	
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> listProduct=query.list();
		session.close();
		return listProduct;
	  }

}
