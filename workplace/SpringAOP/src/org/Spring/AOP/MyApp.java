package org.Spring.AOP;

import org.Spring.AOP.service.shapeService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyApp {

	public static void main(String[] args) {
		// TODO Basic Spring Aspects Oriented Programming (AOP) Study project main class.
		
		AbstractApplicationContext context = new ClassPathXmlApplicationContext("springaop.xml");
		context.registerShutdownHook();
		context.getBeanFactory();
		shapeService shape = (shapeService) context.getBean("shape");
		System.out.println("Created Shape : ");
		System.out.println(shape.getTriangle().getName());
		System.out.println(shape.getCircle().getName());

	}

}
