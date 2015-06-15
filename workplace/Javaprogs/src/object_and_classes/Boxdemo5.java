
package object_and_classes;

class Box5 { 
	double width;
	double height;
	
	double vol(double width, double height) { 
		
		this.width = width;
		this.height = height;
		double r = this.width * this.height;
		return r;
	}	
 }
 
 class Boxdemo5 { 

	public static void main(String args[]) { 
		
		//refrence varaible
		Box5 mybox;
		
		//object creation
		mybox = new Box5();
		
		double a = 10, b = 20;
		
		double result = mybox.vol(a, b);
		
		System.out.println("Result " + result);
	}
 }