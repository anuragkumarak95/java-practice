package inheritance_overload_override;

//class and object
//inheritance
//Polymorphism
//abstraction
//interface


class InterfacePolymor {
	
	public static void main(String args[]) {
	
		Measurable r1 = new Rectangle(10, 20);
	
		Measurable c1 = new Circle(10);
		addArea(r1, c1);

	}

	public static void addArea(Measurable m1, Measurable m2) {

		double area = m1.getArea() + m2.getArea();
		System.out.println(area+" Total area");
	}


	/*
		//repeatable methods
		//rectangle	
		public static void addArea(Rectangle r1, Rectangle r2) {
				double area = r1.getArea() + r2.getArea();
				System.out.println(area+" Total area");

		}

		//circle
		public static void addArea(Circle c1, Circle c2) {
				double area = c1.getArea() + c2.getArea();
				System.out.println(area+" Total area");

		}
		

		Rectangle r1 = new Rectangle(10, 20);
		Circle c1 = new Circle(10);	

		Rectangle r2 = new Rectangle(10, 20);
		Circle c2 = new Circle(10);


		addArea(r1, r2);
		addArea(c1, c2);
	*/
}

interface Measurable {
	
	float PI = 3.14F;
	public double getArea();
	public double getPerimeter();
}

class Rectangle implements Measurable {
	
	int breadth, length;

	public Rectangle(int breadth, int length) {
		this.breadth = breadth;
		this.length = length;
	}

	public double getPerimeter() {

		return  2 * (breadth+length);
	}

	public double getArea() {

		return  breadth * length;
	}

}

class Circle implements Measurable {
	
	int radius;

	public Circle(int radius) {

		this.radius = radius;
	}

	public double getPerimeter() {

		return 2 * PI * radius;
	}

	public double getArea() {

		return PI * radius * radius;
	}
}