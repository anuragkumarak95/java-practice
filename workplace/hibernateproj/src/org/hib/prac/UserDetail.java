package org.hib.prac;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="UserDetail")
public class UserDetail {
	@Id @GeneratedValue() //GeneratedVlaue specifically creates a sequencial incrementer for the below member variables.
	private int id;
	
	@Column (name="USER_NAME") //Column annotation is used to specify some attributes of the available membervariable as the column in the hibernated table.
	private String name;
	
	@Column (name="USER_PASS")
	private String pass;
	
	@Embedded //this tag is used to speify that this member variable is to be embedded in the table as pure columns.
	private Address address;
	
	public Address getAddress() {
		return address;
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
}
