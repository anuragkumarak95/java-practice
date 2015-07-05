package org.hib.prac.kids.kidsOfKids;

import javax.persistence.Entity;

import org.hib.prac.kids.twowheeler;

@Entity
public class SUV extends twowheeler {
	private String suv;

	public String getSuv() {
		return suv;
	}

	public void setSuv(String suv) {
		this.suv = suv;
	}
}
