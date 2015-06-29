import org.spring.prac.Shape;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class firstspringpract {

	public static void main(String[] args) {

		AbstractApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
		context.registerShutdownHook();
		Shape shape = (Shape)context.getBean("shape");
		shape.draw();
		String str[] = context.getBeanDefinitionNames();
		System.out.println("Bean list craeted by the BEAN_FACTORY( AbsractApplicationContext ) : \n");
		for(String s : str){
			System.err.println(s);
		}
	}

}
