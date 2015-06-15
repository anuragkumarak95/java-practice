
package object_and_classes;

class Box2 { 
	double width;
	double height;
	
	double vol() { 
		
		return width * height;
	}	
 }
 
 class Boxdemo3 { 

	public static void main(String args[]) { 
		Box2 mybox;
		
		mybox = new Box2();
		
		mybox.width = 10;
		mybox.height = 20;
		
		double result = mybox.vol();
		
		System.out.println("Result " + result);
	}
 }