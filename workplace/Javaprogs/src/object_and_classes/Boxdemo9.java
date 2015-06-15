package object_and_classes;

class Box9 {

	double width;
	double height;
	
	Box9(double width, double height) {
		this.width = width;
		this.height = height;		
	
	}
	
	double vol() {
	
		return width * height;
	}
}

class Boxdemo9 {

	public static void main(String args[]) {
	
		Box9 mybox = new Box9(10, 20);
		
		double r = mybox.vol();
		
		System.out.println("Volume is "+ r);
	}
		
}