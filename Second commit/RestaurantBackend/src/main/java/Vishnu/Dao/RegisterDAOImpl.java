 package Vishnu.Dao;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;


import Vishnu.Model.Register;

public class RegisterDAOImpl {

	public class RegisterDaoimpl implements RegisterDao
	{
		@Autowired
		SessionFactory sessionFactory;

		@Transactional
		public boolean addRegister(Register register) {
	 
			try
			{
			Session session=sessionFactory.getCurrentSession();
			session.save(register);
			return true;
			}
			catch(Exception e)
			{
			
			return false;
			}
		}

		public boolean updateRegister(Register register) {
			 
			try
			{
				Session session=sessionFactory.getCurrentSession();
				session.save(register);
				return true;
			}
			catch(Exception e)
			{
				return false;
			}
	
		}

		public boolean deleteRegister(Register register) {
 
			try
			{
				Session session=sessionFactory.getCurrentSession();
				session.save(register);
				return true;
			}
			catch(Exception e)
			{
			return false;
			}
		}

		  public Register getRegister(int PhoneNo) {
			
			  Session session=sessionFactory.openSession();
				Register register=(Register)session.get(Register.class,PhoneNo);
				session.close();
				return register;	   			 
		}

		public List<Register> retrieveRegister()
		{
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Register");
			List<Register> listRegister=query.list();
			session.close();
			return listRegister; 
			
			
		}
		
	}
}
