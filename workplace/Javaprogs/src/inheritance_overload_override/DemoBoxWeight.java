package inheritance_overload_override;

//Inheritance

class Boxinheri {
	
	 double width, height, depth;

	Boxinheri() {

		width = -1;
		height = -1;
		depth = -1;
	}

	Boxinheri(double width, double height, double depth) {

		this.width = width;
		this.height = height;
		this.depth = depth;
	}

	Boxinheri(double all) {

		width = height = depth = all;
	}

	Boxinheri(Boxinheri ob) {


		width = ob.width;
		height = ob.height;
		depth = ob.depth;	
	}

	double vol() {

		return width * height * depth;
	}

} 

class BoxWeight extends Boxinheri {
	
	double weight;

	BoxWeight(double width, double height, double depth, double weight) {

		this.width = width;
		this.height = height;
		this.depth = depth;
		this.weight = weight;
	}
}

class DemoBoxWeight {
	
	public static void main(String args[]) {

		BoxWeight mybox1 = new BoxWeight(10, 20, 30, 40);
		BoxWeight mybox2 = new BoxWeight(2, 3, 4, 0.046);

		double vol = mybox1.vol();
		System.out.println("Volume of mybox1 is :" + vol);
		System.out.println("Weight of mybox1 is :" + mybox1.weight);




	}
}