package object_and_classes;

class Box1 { 
	double width;
	double height;
 }
 
 
 class Boxdemo2 { 
 
	public static void main(String args[]) { 

		Box1 mybox, mybox2;

		mybox = new Box1();

		mybox.width = 10;

		mybox.height = 20;

		double vol = mybox.width * mybox.height;

		System.out.println("Volume of mybox :" + vol);
		
		mybox2 = new Box1();

		mybox2.width = 25;

		mybox2.height = 25;

		double vol2 = mybox2.width * mybox2.height;

		System.out.println("Volume of mybox2 :" + vol2);

		
	}
 }