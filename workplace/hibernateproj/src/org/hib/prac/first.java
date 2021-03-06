package org.hib.prac;

import org.hib.prac.kids.fourWheeler;
import org.hib.prac.kids.twowheeler;
import org.hib.prac.kids.kidsOfKids.SUV;
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
		
		Address address1 = new Address();
		address1.setCity("list1-city-name");
		address1.setState("list1-state-name");
		address1.setStreet("list1-street-name");
		
		Address address2 = new Address();
		address2.setCity("list2-city-name");
		address2.setState("list2-state-name");
		address2.setStreet("list2-street-name");
		
		user.getListOfAddresses().add(address1);
		user.getListOfAddresses().add(address2);
		//user membervariable assignment ends here
		
		Vehicle vehicle = new Vehicle();
		vehicle.setName("user-vehicle");
		Vehicle vehicle1 = new Vehicle();
		vehicle1.setName("user-vehicle-list1");
		Vehicle vehicle2 = new Vehicle();
		vehicle2.setName("user-vehicle-list2");
		//vehicle asigned here, now creating a link in between user and vehicle for understanding different mapping schemes, e.i., OnetoOne,OnetoMany,ManytoOne,ManytoMany
/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
		
		user.setVehicle(vehicle);//one-to-one
		
		user.getVehicle_list().add(vehicle1);//One-To
		user.getVehicle_list().add(vehicle2);//-Many
		
		vehicle.setUser(user);//Many-
		vehicle1.setUser(user);//-To-
		vehicle2.setUser(user);//-One
		
		vehicle.getUser_list().add(user);//Many-
		vehicle1.getUser_list().add(user);//-To-
		vehicle2.getUser_list().add(user);//-Many
		
/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
		
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();// TODO creates a session Factory that will produce transitions.
		Session session = sessionfactory.openSession();// TODO opens session for connectivity.
		session.beginTransaction();// TODO begins connectivity transaction.
		session.save(user);// TODO save object in db.
		session.save(vehicle);
		session.save(vehicle1);
		session.save(vehicle2);
		
		user = null;
		vehicle=null;
		vehicle1=null;
		vehicle2=null;
		session.getTransaction().commit();// TODO commit the above changes done locally to the connected db.

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
		
		// TODO fetching through hibernate
		session.close();// TODO closing the current session transaction.
		session = sessionfactory.openSession();
		session.beginTransaction();
		user= (UserDetail) session.get(UserDetail.class,1);// TODO usedto fetch object from tablewith a second args as the value of decided primary key value. & saving it into the object specific to that hibernated table.
		vehicle = (Vehicle) session.get(Vehicle.class, 2);
		vehicle1 = (Vehicle) session.get(Vehicle.class, 3);
		vehicle2 = (Vehicle) session.get(Vehicle.class, 4);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
		
		System.err.println("1[USER - INFO] Fetched Name : "+user.getName());
		System.err.println("2[USER - INFO] Fetched Password : "+user.getPass());
		System.err.println("3[USER - INFO] Fetched Adress : "+user.getAddress().getCity()+" "+user.getAddress().getState()+ " "+user.getAddress().getStreet());
			//session.close();
		System.out.println("4[USER - INFO] List of addresses :");
		for(Address adr : user.getListOfAddresses()){ //this fetch is possible after session closing is because i have get its attribute for fetch to be EAGER rather than the default LAZY where a member list variable is only fetched if called.
			System.out.println(" |__ [USER - INFO] Fetched Adress : "+adr.getCity()+" "+adr.getState()+ " "+adr.getStreet());
		}
		System.err.println("5[USER - INFO]Fetch User Vehicle :" + user.getVehicle().getName());
		System.out.println("6[USER - INFO] List of Vehicles :");
		for(Vehicle veh : user.getVehicle_list()){ //this fetch is possible after session closing is because i have get its attribute for fetch to be EAGER rather than the default LAZY where a member list variable is only fetched if called.
			System.out.println(" |__ [USER - INFO] Fetched Vehicle : "+veh.getName());
		}
		System.err.println("\n\n[VEHICLE - 1 - INFO] Fetched user : "+vehicle.getUser().getName());
		System.err.println("[VEHICLE - 2 - INFO] Fetched user : "+vehicle1.getUser().getName());
		System.err.println("[VEHICLE - 3 - INFO] Fetched user : "+vehicle2.getUser().getName());
	
/*--------------------------------inheritance practices here--------------------------------------------------------------------------------------------------------------------------------------------- */
	session.close();
	Vehicle inveh = new Vehicle();
	inveh.setName("inheritance-vehicle");
	
	twowheeler twee = new twowheeler();
	twee.setSteeringHandle("kawasaki");
	
	fourWheeler fwee = new fourWheeler();
	fwee.setSteeringWheel("porche");
	
	SUV suv1 = new SUV();
	suv1.setSuv("big-one");
	
	session = sessionfactory.openSession();
	session.beginTransaction();
	session.save(inveh);
	session.save(twee);
	session.save(fwee);
	session.save(suv1);
	
	session.getTransaction().commit();
	
	}
}
