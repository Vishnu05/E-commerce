package Vishnu.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vishnu.Model.Order;
 
@Repository("orderDetailsDAO")
public class OrderDAO
{
@Autowired
SessionFactory sessionFactory;
public OrderDAO(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}
@Transactional
public void insertOrder(Order order)
{
	sessionFactory.getCurrentSession().saveOrUpdate(order);
	
}
public List<Order> retrieveOrders(String username)
{
	Query q=sessionFactory.getCurrentSession().createQuery("from OrderDetails where username");
			q.setParameter("uname", username);
	List<Order> list=q.list();
	return list;
}
	public Order getOrder()
	{
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("from OrderDetails order by orderid");
		List<Order> list=q.list();
		if(list.size()>0)
		{
			return list.get(0);
		}
		else {
			return list.get(1);
		}
		}
			
}

 