package org.spring.prac;

import org.springframework.context.ApplicationEvent;



@SuppressWarnings("serial")
public class DrawEvent extends ApplicationEvent {

	public DrawEvent(Object source) {
		super(source);
		// TODO Auto-generated constructor stub
	}
	
	public String toString(){
		return "Draw method called";		
	}
}
