package org.hib.prac.kids;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

import org.hib.prac.Vehicle;
@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
// table per class strategy creates a new table for every child and provides the parent columns to the child also.
@DiscriminatorValue("Car")
public class fourWheeler extends Vehicle {
	private String steeringWheel;

	public String getSteeringWheel() {
		return steeringWheel;
	}

	public void setSteeringWheel(String steeringWheel) {
		this.steeringWheel = steeringWheel;
	}
}
