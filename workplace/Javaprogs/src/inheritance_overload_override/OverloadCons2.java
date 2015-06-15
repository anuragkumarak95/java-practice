package inheritance_overload_override;

//Overload Constructor

class Box {
	
	double width, height, depth;

	Box() {

		width = -1;
		height = -1;
		depth = -1;
	}

	Box(double width, double height, double depth) {

		this.width = width;
		this.height = height;
		this.depth = depth;
	}

	Box(double all) {

		width = height = depth =all;
	}

	Box(Box ob) {


		width = ob.width;
		height = ob.height;
		depth = ob.depth;	
	}

	double vol() {

		return width * height * depth;
	}

}

class OverloadCons2 {
	
	public static void main(String args[]) {

		Box mybox1 = new Box();
		Box mybox2 = new Box(10);
		Box mybox3 = new Box(1, 2, 3);
		Box mybox4 = mybox3;

		double vol = mybox1.vol();

		System.out.println("Default method. Volume is : " + vol);

		vol = mybox2.vol();

		System.out.println("Using single value. Volume is : " + vol);

		vol = mybox3.vol();

		System.out.println("Sending multiple values. Volume is : " + vol);

		vol = mybox4.vol();

		System.out.println("For Object as parameter. Volume is : " + vol);

	  
	}
}