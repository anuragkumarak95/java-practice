package org.hib.prac;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.CollectionId;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;

@Entity // TODO Entity annotaion is used to specify that this class is to be hibernated to a table in the db with name="table - name".
@Table (name="UserDetail") // TODO Table anootation is used to define attributes specific to a table like table name used in the example.
public class UserDetail {
	@Id @GeneratedValue() // TODO GeneratedVlaue specifically creates a sequencial incrementer for the below member variables.
	private int id;
	
	@Column (name="USER_NAME") // TODO Column annotation is used to specify some attributes of the available membervariable as the column in the hibernated table.
	private String name;
	
	@Column (name="USER_PASS")
	private String pass;
	
	@Embedded // TODO this tag is used to speify that this member variable is to be embedded in the table as pure columns.
	@AttributeOverrides({
		@AttributeOverride(name="street",column=@Column(name="USER_ADDR_STREET")),
		@AttributeOverride(name="city",column=@Column(name="USER_ADDR_CITY")),
		@AttributeOverride(name="state",column=@Column(name="USER_ADDR_STATE"))
	}) // TODO the above set of annotations are used to override column annotation of any embeddable object in a class table.
	private Address address;
	
	@ElementCollection(fetch=FetchType.EAGER) // TODO ElementCollection annotation tells hibernate to treat this SET as seperate table with a foreign key that is the primary key to this class table.
	//fetch type set to EAGER, i.e., first this list will fetch then only user will get the full object rather than proxy sub class generated by LAZY fetch type default by hibernate.
	@JoinTable (name="JOINT_ADDRESS_LIST", // JoinTable annotation is used to customize the Collection list attributes in form of hibarnated table., i.e. jointable name here is customized
		joinColumns=@JoinColumn(name="USER_ID")//used to custom name the foreign key column or joinColumn of the list table
			)
	@GenericGenerator(name="hilo-gen",strategy="hilo")// GenericGenerator annotation is provided by hibernate to generate generics.
	@CollectionId(columns = { @Column(name="ADDR_ID") }, generator = "hilo-gen", type = @Type(type = "long"))
	private Collection<Address> listOfAddresses = new ArrayList<Address>();
	// CollectionId annotation is also provided by hibernate to appoint a index key to the Collection list, and is only applicable to list collection frameworks.
	
	@OneToOne
	@JoinColumn(name="USER_VEHICLE_ID")
	private Vehicle vehicle;
	
	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	//rather than having an extra table to do onetomany and manytoone inversible mapping, we define a column in vehicle to be the mapping source.
	private Collection<Vehicle> vehicle_list = new ArrayList<Vehicle>();
	
	@ManyToMany(mappedBy="user_list")//way to create a single link map table.
	private Collection<Vehicle> vehicle_list_2 = new ArrayList<Vehicle>();
	
	
	//getters and setters below::
	public Collection<Vehicle> getVehicle_list_2() {
		return vehicle_list_2;
	}
	public void setVehicle_list_2(Collection<Vehicle> vehicle_list_2) {
		this.vehicle_list_2 = vehicle_list_2;
	}
	public Vehicle getVehicle() {
		return vehicle;
	}
	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}
	public Address getAddress() {
		return address;
	}
	public Collection<Address> getListOfAddresses() {
		return listOfAddresses;
	}
	public void setListOfAddresses(Collection<Address> listOfAddresses) {
		this.listOfAddresses = listOfAddresses;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public Collection<Vehicle> getVehicle_list() {
		return vehicle_list;
	}
	public void setVehicle_list(Collection<Vehicle> vehicle_list) {
		this.vehicle_list = vehicle_list;
	}
}
