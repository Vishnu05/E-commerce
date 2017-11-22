package Vishnu.Dao;

import java.util.List;



import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vishnu.Model.Cart;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO
{
@Autowired
SessionFactory sessionFactory;
public CartDAOImpl(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
	
}
@Transactional
public void addToCart(Cart cartitem)
{
	sessionFactory.getCurrentSession().saveOrUpdate(cartitem);
}
public List<Cart> getCartItems(String userId)
{
	Session session=sessionFactory.openSession();
	Query query=session.createQuery("from Cart where userId=:userId and status='N'");
	query.setParameter("userId",userId);
	@SuppressWarnings("unchecked")
	List<Cart> list=query.list();
	return list;
}
@Transactional
public void deleteCartItem(Cart cart)
{
	sessionFactory.getCurrentSession().delete(cart);
}


public Cart getCartItem(int citemid)
{
	Session session=sessionFactory.openSession();
	Cart cart=(Cart)session.get(Cart.class,citemid);
	return cart;
}

@Transactional
public void updateCartItem(Cart cart)
{
	sessionFactory.getCurrentSession().update(cart);
}
  }