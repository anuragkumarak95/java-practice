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
		
		Query qry=  session.createQuery("from CrudUser where id>5");
		List<CrudUser> userlist =  qry.list();
		
		for(CrudUser u : userlist){
			System.out.println("[User] id : "+u.getId()+" || name : "+u.getName());
		}
		System.out.println("user count is :"+ userlist.size());
		
		session.getTransaction().commit();
		session.close();

	}

}
