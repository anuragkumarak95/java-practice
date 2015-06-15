package object_and_classes;

class Box7 {
	double width;
	double height;
	
	
	Box7() {  
	
		width = 10;
		height = 20;
	}
}

class Boxdemo7 {

	public static void main(String args[]) { 
		
		Box7 mybox = new Box7();
		
		System.out.println("Value of width :" + mybox.width);
		System.out.println("Value of width :" + mybox.height);

	}
}