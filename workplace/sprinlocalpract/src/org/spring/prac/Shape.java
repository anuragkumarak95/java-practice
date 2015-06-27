package org.spring.prac;

import org.springframework.beans.factory.annotation.Required;

public class Shape {
	String p1,p2,p3;

	public void init(){
		System.out.println("Bean initialization init() method.");
		
	}
	
	public void end(){
		System.out.println("Bean Desposabile destroying here.");
		
	}
	
	public String getP1() {
		return p1;
	}
	
	@Required
	public void setP1(String p1) {
		this.p1 = p1;
	}

	public String getP2() {
		return p2;
	}
	
	@Required
	public void setP2(String p2) {
		this.p2 = p2;
	}

	public String getP3() {
		return p3;
	}
	
	@Required
	public void setP3(String p3) {
		this.p3 = p3;
	}
	
	public void draw(){
		System.out.println("Drawing shape");
		System.out.println("P1" + this.getP1());
		System.out.println("P2" + this.getP2());
		System.out.println("P3" + this.getP3());
	}
}
