package learnJAVA;

abstract class bank{//an abstract class
	abstract double ROI();
	void servise(){
		System.out.println("1. Credit Card");
		System.out.println("2. Savings Account");
	}
}

class hdfc extends bank{
	double ROI(){
		return 140;
	}
}

class hdfc2 extends bank{
	double ROI(){
		return 140;
	}
}
public class abstract_bank extends bank {//extending the main class with the abstract class.
	double ROI(){
		return 7;
	}
	public static void main(String[] args) {
		// TODO using abstract class methods in a child class.
		
		hdfc2 h1 = new hdfc2(),h2 = new hdfc2();
		System.out.println("ROI value : "+h1.ROI());
		h1.servise();
		System.out.println("ROI value : "+h2.ROI());
		h2.servise();
		
	}

}
