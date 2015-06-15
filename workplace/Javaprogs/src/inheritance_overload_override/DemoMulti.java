package inheritance_overload_override;

//multilevel inheritance

class MultiBox {
	
	private double width, height, depth;

	MultiBox(double width, double height, double depth) {

		this.width = width;
		this.height = height;
		this.depth = depth;
	}

	double volume() {

		return width * height * depth;
	}
}

class MultiBoxWeight extends MultiBox {
	
	double weight;

	MultiBoxWeight(double width, double height, double depth, double weight) {

		super(width, height, depth);
		this.weight = weight;
	}
}

class shipment extends MultiBoxWeight {
	
	double cost;

	shipment(double width, double height, double depth, double weight, double cost) {
		
		super(width, height, depth, weight);
		this.cost = cost;
	}
}

class DemoMulti {
	
	public static void main(String args[]) {

		shipment ship1 = new shipment(10, 20, 30, 40, 50);
		//shipment ship2 = new shipment(10, 20, 30, 40, 50);

		double vol;

		vol = ship1.volume();
		System.out.println();	
		System.out.println("Volume of ship1 is : " + vol);
		System.out.println("Weight of ship1 is : " + ship1.weight);
		System.out.println("Cost   of ship1 is : " + ship1.cost);
	}
}