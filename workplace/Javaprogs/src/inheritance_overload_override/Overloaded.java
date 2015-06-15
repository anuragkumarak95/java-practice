package inheritance_overload_override;

//first example of method overload and automatic type conversion

// One interface and multiple methods

class Overload {  

	void test() { 
		
		System.out.println("Default Method without parameters");

	}
	
	void test(int num1) { 

		System.out.println("Single parameter method overload " + num1);
	}
	
	void test(int num1, int num2) {  
	
		System.out.println("Dual parameters method overload " + num1 + "  " + num2);
	}
	
	double test(double num1) {  
	
		System.out.println("Differnt type but single parameters " + num1);
		
		return num1;
		
	}

 }
 
 class Overloaded { 

	public static void main(String args[]) {  
	
			Overload ob = new Overload();
			double r; 
			ob.test();
			ob.test(5);
			ob.test(2, 5);
			r = ob.test(10.50);
			System.out.println("Result return " + r);
	}
 }