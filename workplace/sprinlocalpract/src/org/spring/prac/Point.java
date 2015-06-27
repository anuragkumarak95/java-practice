package org.spring.prac;

import org.springframework.beans.factory.annotation.Required;

public class Point {
	private int x,y;

	public int getX() {
		return x;
	}
	@Required
	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}
	@Required
	public void setY(int y) {
		this.y = y;
	}
	
	
}
