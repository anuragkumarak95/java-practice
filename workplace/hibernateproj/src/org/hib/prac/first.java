package org.hib.prac;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class first {

	public static void main(String[] args) {
		// TODO Understanding and using HIBERNATE ORA API in java.
		UserDetail user = new UserDetail();
		Address address = new Address();
		address.setCity("city-name");
		address.setState("state-name");
		address.setStreet("street-name");
		user.setName("user-name");
		user.setPass("user-password");
		user.setAddress(address);
		
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();// TODO creates a session Factory that will produce transitions.
		Session session = sessionfactory.openSession();// TODO opens session for connectivity.
		session.beginTransaction();// TODO begins connectivity transaction.
		session.save(user);// TODO save object in db.
		user = null;
		session.getTransaction().commit();// TODO commit the above changes done locally to the connected db.

		// TODO fetching through hibernate
		session.close();// TODO closing the current session transaction.
		session = sessionfactory.openSession();
		session.beginTransaction();
		user= (UserDetail) session.get(UserDetail.class,1);// TODO usedto fetch object from tablewith a second args as the value of decided primary key value. & saving it into the object specific to that hibernated table.
		System.out.println("fetched Name : "+user.getName());
		System.out.println("fetched Password : "+user.getPass());
		System.out.println("fetched Adress : "+user.getAddress().getCity()+" "+user.getAddress().getState()+ " "+user.getAddress().getStreet());
	}

}
