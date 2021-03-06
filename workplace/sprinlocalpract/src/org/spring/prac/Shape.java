package org.spring.prac;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;

@Controller
public class Shape implements ApplicationContextAware,ApplicationEventPublisherAware{
	
	private Point p1,p2;
	private  ApplicationContext context;
	private ApplicationEventPublisher publisher;
	@Autowired
	private MessageSource messageSource;
	//this way we inject the message Source bean we created in teh  xml file to this.
	
	public MessageSource getMessageSource() {
		return messageSource;
	}

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	public Point getP1() {
		return p1;
	}
	
	@Resource
	public void setP1(Point p1) {
		this.p1 = p1;
	}

	public Point getP2() {
		return p2;
	}
	
	@Resource
	public void setP2(Point p2) {
		this.p2 = p2;
	}

	@PostConstruct	//annotation for declaring below method as the method to call after construction of the bean.
	public void init(){

		System.err.println("Bean initialization init() method.");
		
	}
	
	@PreDestroy	//annotation for declaring below method as the method to call before destroy of the bean.
	public void end(){
		
		System.err.println("Bean Desposable destroying here.");
		
	}
	
	public void draw(){
		System.out.println(context.getMessage("shape.name", null, "message overboard", null));
		System.out.println(context.getMessage("shape.inx", new Object[] {"p1",p1.getX(),p1.getY()}, "message overboard", null));
		System.out.println(this.messageSource.getMessage("shape.inx", new Object[] {"p2",p2.getX(),p2.getY()}, "message overboard", null));
		DrawEvent evt = new DrawEvent(this);
		publisher.publishEvent(evt);
	}

	@Override
	public void setApplicationContext(ApplicationContext arg0)
			throws BeansException {
		this.context = arg0;
		
	}

	
	@Override
	public void setApplicationEventPublisher(ApplicationEventPublisher publisher) {
		this.publisher = publisher;
	}

	
}
