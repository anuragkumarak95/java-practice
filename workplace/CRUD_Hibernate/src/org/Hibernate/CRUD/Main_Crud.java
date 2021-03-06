package org.Hibernate.CRUD;

import java.util.List;

import org.Hibernate.CRUD.dto.CrudUser;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

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
		qry= null;
		userlist = null;
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
		qry= null;
		userlist = null;
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
		qry= null;
		userlist = null;
		/*-----------------------------using CRITERIA API with Restrictions------------------------------------------- */

		session = sessionFactory.openSession();
		session.beginTransaction();

		Criteria criteria = session.createCriteria(CrudUser.class);
		// here we use Criteria API to create a criteria based query without even single line of query . it takes class of the result object as argument.
		criteria.add(Restrictions.eq("name", "User 5"))
				.add(Restrictions.or(Restrictions.between("id", 2, 7), Restrictions.gt("id", 5)));
		//Restriction is an class having defferent restriction functions or where clauses already defined in it and ready to use by the developer.
		//criteria add method has chaining option, e.i, you can call as many add method in chain to single criteria variable. demonstrated above. figure out how....??
		//criteria.add creates and clause btw restrictions, to get or cluase, we use restrictions.or(rst,rst) having restrictions itself as args that have to be in or clause...  very handy..
		userlist = criteria.list();

		System.out.println();
		System.err.println("Using Criteria API with Restrictions..//");

		for(CrudUser u : userlist){
			System.out.println("[User] name : " + u.getName());
		}
		System.out.println("user count is :"+ userlist.size());
		session.getTransaction().commit();
		session.close();
		qry= null;
		userlist = null;

		/*-----------------------------using CRITERIA API with Projections------------------------------------------- */

		session = sessionFactory.openSession();
		session.beginTransaction();

		criteria = session.createCriteria(CrudUser.class)
					.setProjection(Projections.property("name"))
					.addOrder(Order.desc("id"));
		// projections is used to output a single column and / or any projective entity of that single column like distict values, count, maxof ect.
		// and addOrder is used to set any desc or asec order of the resultset by any property name/column name.
		List<String> str =  criteria.list();

		criteria = session.createCriteria(CrudUser.class)
				.setProjection(Projections.rowCount());
		long count = (Long) criteria.uniqueResult();
		System.out.println();
		System.err.println("Using Criteria API with Projections..//");
		System.out.println("user list is :"+ str);
		System.out.println("user count is :"+ count);
		session.getTransaction().commit();
		session.close();
		criteria= null;
		userlist = null;

		/*-----------------------------using CRITERIA API with Examples as clause------------------------------------------- */

		session = sessionFactory.openSession();
		session.beginTransaction();

		CrudUser exampleUser = new CrudUser();
		exampleUser.setId(4);
		exampleUser.setName("User %");
		// to use an object of the same class as the entity as a example, we create an object and give it the example values.
		// here if we only pass id as the example user, all users will be shown, reason is that example ignores any null value and the primary key of the entity,
		// here id was the primary key..
		Example exampleCriteria = Example.create(exampleUser).excludeProperty("name").enableLike();
		//exclude property method is used to decide if you want to exclude any specific value from bein treated as an example.
		// we create an example object of that exampleUser.
		//enable like is used to anble the checking of like factors in the example, as i have given a like option to name property"User %" tyhis method will make sure that this property is set to like clause.
		criteria = session.createCriteria(CrudUser.class).add(exampleCriteria);
		// and then pass the example as the clause in teh criteria of the resultset.
		userlist = criteria.list();

		System.out.println();
		System.err.println("Using Criteria API with Example Objects...//");

		for(CrudUser u : userlist){
			System.out.println("[User] name : " + u.getName());
		}
		System.out.println("user count is :"+ userlist.size());
		session.getTransaction().commit();
		session.close();
		qry= null;
		userlist = null;


	}

}
