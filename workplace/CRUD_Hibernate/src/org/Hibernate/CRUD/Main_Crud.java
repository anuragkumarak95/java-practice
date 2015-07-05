package org.Hibernate.CRUD;

import java.util.List;

import org.Hibernate.CRUD.dto.CrudUser;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Main_Crud {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		/* Create.
		 * 
		 * for(int i=0;i<10;i++){
			CrudUser user = new CrudUser();
			user.setName("User "+i);
			session.save(user);
		}*/ 
		
		
		/* Read.
		 * 
		 * CrudUser user =(CrudUser) session.get(CrudUser.class, 15);
		   System.out.println("User fetched "+user.getName());*/
		
		/* Update.
		 * 
		 * CrudUser user = (CrudUser) session.get(CrudUser.class, 15);
		   user.setName("Updated username");
		   session.update(user);*/
		
		/* Delete.
		 * 
		 * CrudUser user = (CrudUser) session.get(CrudUser.class, 15);
		   session.delete(user);
		*/
		
		Query qry=  session.createQuery("from CrudUser where id > ? and name = :uname");
		qry.setInteger(0, 1);// this method is used to fill the parameter binding placeholder(?) defined in the query string.
		qry.setString("uname", "User 9"); // this type of binding where you bind a named placeholder by a string args is very usefull if you get confused in ? binding..
		
		//qry.setFirstResult(5);// setFirstResult(int) skips the list of result to the specified integer in the args, after those many rows of result is passed, it starts fetching
		qry.setMaxResults(5);// this method restricts the query list to only fetch the no of results mentioned as the args in the method. from starting point of the fetch.(after first Result)
		// the above 2 methods can be dynamically used for website or applet pagination... think of it!!
		
		List<CrudUser> userlist =  qry.list();
		
		for(CrudUser u : userlist){
			System.out.println("[User] name : " + u.getName());
		}
		System.out.println("user count is :"+ userlist.size());
		
		session.getTransaction().commit();
		session.close();
		
		/*-----------------------------using named queries------------------------------------------- */
		
		session = sessionFactory.openSession();
		session.beginTransaction();
		qry = session.getNamedQuery("CrudUser.byID");
		qry.setInteger(0, 3);
		userlist = qry.list();
		
		System.out.println();
		System.err.println("Using Named Query at Entity Level..//");
		
		for(CrudUser u : userlist){
			System.out.println("[User] name : " + u.getName());
		}
		System.out.println("user count is :"+ userlist.size());
		session.getTransaction().commit();
		session.close();
		
		/*-----------------------------using named Native queries------------------------------------------- */
		
		session = sessionFactory.openSession();
		session.beginTransaction();
		qry = session.getNamedQuery("CrudUser.byName");
		qry.setString(0, "User 8");
		userlist = qry.list();
		
		System.out.println();
		System.err.println("Using Named Native Query at Entity Level..//");
		
		for(CrudUser u : userlist){
			System.out.println("[User] name : " + u.getName());
		}
		System.out.println("user count is :"+ userlist.size());
		session.getTransaction().commit();
		session.close();

	}

}