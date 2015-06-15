package object_and_classes;

class Box8 {
	double width;
	double height;
	
	Box8(double w, double h) { 

		width = w;
		height = h;
	}
	
	double vol() { 
		return width * height;
	}
}

class Boxdemo8 { 
	public static void main(String args[]) { 

		Box8 mybox = new Box8(10, 20);
		
		double r = mybox.vol();
		
		System.out.println("Volume is " + r);
	}
}