package org.hib.prac.kids;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

import org.hib.prac.Vehicle;

@Entity
@DiscriminatorValue("bike")
// DiscriminatorValue annotation is used for customizing the value that will be saved in teh DiscriminatorColumn when a object of this specific child class is saved in the session.
public class twowheeler extends Vehicle {
	private String steeringHandle;

	public String getSteeringHandle() {
		return steeringHandle;
	}

	public void setSteeringHandle(String steeringHandle) {
		this.steeringHandle = steeringHandle;
	}
}
