package object_and_classes;

class Box {
	
	double width;
	String name;
}

public class BoxDemo {

	public static void main(String[] args) {
		
		Box b1; 
		//int name2;
		b1 = new Box();
		System.out.println("Value of width is: " + b1.width);
		System.out.println("Value of width is: " + b1.name);
		//System.out.println("Value of width is: " + name2);
	}

}
