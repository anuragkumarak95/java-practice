package org.spring.prac;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
public class myeventlistner implements ApplicationListener{//usermanual event listner of spring framework.

	@Override
	public void onApplicationEvent(ApplicationEvent arg0) {//method to call if any event occur and taking Application event attributes as args.
		
		System.err.println(arg0.hashCode()+" :: source :: "+arg0.getSource()+" :: class :: "+arg0.getClass().getName()+":: event :: "+ arg0.toString());
		
	}

}
