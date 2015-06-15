package inheritance_overload_override;

class SuperBox {
	
	private double width, height, depth;
	
	SuperBox(double width, double height, double depth) {

		this.width = width;
		this.height = height;
		this.depth = depth;
	}

	double volume() {

		return width * height * depth;
	}
	
}

class SuperBoxWeight extends SuperBox {
	double weight;
	SuperBoxWeight(double width, double height, double depth, double weight){
		super(width, height, depth);
		this.weight = weight;
		
	}
	
}
public class SuperClass {

	public static void main(String[] args) {
		SuperBoxWeight mybox1 = new SuperBoxWeight(10, 20, 30, 40);
		double vol;
		vol = mybox1.volume();
		System.out.println();
		System.out.println("Volume of mybox1 is : " + vol);
		System.out.println("Weight of mybox1 is : " + mybox1.weight);
	}

}
