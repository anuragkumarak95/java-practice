package org.hib.prac;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

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
