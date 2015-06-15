package abstarct_interface;

abstract class Figure{
	
	double dim1;
	double dim2;

	Figure(double dim1, double dim2) {
		
		this.dim1 = dim1;
		this.dim2 = dim2;
	}
	
	abstract double area();
}

//Must implement area() method otherwise its a abstract class 
class Rectangle extends Figure{
	
	Rectangle(double a, double b){		
		super(a,b);
	}
	
	double area() {
		System.out.println("Inside Area for Rectangle.");
		return dim1  * dim2;
	}
}

class Traingle extends Figure{
	
	Traingle(double a, double b){
		super(a,b);
	}
	
	double area() {
		System.out.println("Inside Area for Traingle.");
		return dim1 * dim2 / 2;
	}
	
}

public class AbstractAreas {

	public static void main(String[] args) {
		Rectangle r = new Rectangle(9, 5);
		Traingle t  = new Traingle(10, 8);
		System.out.println("Area is: "+r.area());
		System.out.println("Area is: "+t.area());
	}

}
