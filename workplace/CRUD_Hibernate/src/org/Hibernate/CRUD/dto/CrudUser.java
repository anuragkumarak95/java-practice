package org.Hibernate.CRUD.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQuery;

@Entity
@NamedQuery(name="CrudUser.byID",query="from CrudUser where id = ?")
//namedQuery annotaion is used to list the Entity specific queries with the entity themself and can be used anywhere in the project.. very handy.

@NamedNativeQuery(name="CrudUser.byName",query="select * from CrudUser where name = ?",resultClass=CrudUser.class)
//NamedNativeQuery is used to override any auto build query set and use the native sql query set, no matter whih framework you use.
//thats why it needs to have resultclass also as it doesnt decide automatically the object that have this query linked too.

public class CrudUser {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String name;
	
	//getter & setters: 
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
