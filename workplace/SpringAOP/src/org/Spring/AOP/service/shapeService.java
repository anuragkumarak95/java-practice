package org.Spring.AOP.service;

import org.Spring.AOP.model.Circle;
import org.Spring.AOP.model.Triangle;

public class shapeService {
	
	private Circle circle;
	private Triangle triangle;
	
	//getters & setters below ::
	public Circle getCircle() {
		return circle;
	}
	public void setCircle(Circle circle) {
		this.circle = circle;
	}
	public Triangle getTriangle() {
		return triangle;
	}
	public void setTriangle(Triangle triangle) {
		this.triangle = triangle;
	}

}
