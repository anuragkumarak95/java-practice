package org.hib.prac;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="VEHICLE")
public class Vehicle {
	@Id @GeneratedValue
	@Column(name="ID")
	private int id;
	
	@Column(name="V_NAME")
	private String name;
	
	@ManyToOne
	@JoinColumn(name="USER_REF_ID")
	private UserDetail user;
	
	@ManyToMany
	@JoinTable(name="VEHI_USER_LINK",joinColumns=@JoinColumn(name="VEHICLE_LINK"),inverseJoinColumns=@JoinColumn(name="USER_LINK"))
	//here we configure the join Table as the other entity is told that this entity is handlig the linkups.
	private Collection<UserDetail> user_list = new ArrayList<UserDetail>();
	
	
	//getters & setters below::
	public Collection<UserDetail> getUser_list() {
		return user_list;
	}
	public void setUser_list(Collection<UserDetail> user_list) {
		this.user_list = user_list;
	}
	public UserDetail getUser() {
		return user;
	}
	public void setUser(UserDetail user) {
		this.user = user;
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
	
	
}