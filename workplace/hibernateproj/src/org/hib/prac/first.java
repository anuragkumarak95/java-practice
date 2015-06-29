package org.hib.prac;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class first {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserDetail user = new UserDetail();
		Address address = new Address();
		address.setCity("city");
		address.setState("state");
		address.setStreet("street");
		user.setName("Anurag");
		user.setPass("123");
		user.setAddress(address);
		
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();//creates a session Factory that will produce transitions.
		Session session = sessionfactory.openSession();//opens session for connectivity.
		session.beginTransaction();//begins connectivity transaction.
		session.save(user);//save object in db.
		user = null;
		session.getTransaction().commit();//commit the above changes done locally to the connected db.

		//fetching through hibernate
		session.close();
		session = sessionfactory.openSession();
		session.beginTransaction();
		user= (UserDetail) session.get(UserDetail.class,1);//usedto fetch object from tablewith a second args as the value of decided primary key value. & saving it into the object specific to that hibernated table.
		System.out.println("fetched Name : "+user.getName());
		System.out.println("Adress : "+user.getAddress().getCity()+" "+user.getAddress().getState()+ " "+user.getAddress().getStreet());
	}

}
