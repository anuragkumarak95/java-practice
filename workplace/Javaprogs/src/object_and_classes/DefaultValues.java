package object_and_classes;

public class DefaultValues {
	
	boolean bool;
	int intDefaultValue;
	long longDefaultvalue;
	float floatDefaultValue; 
	double doubleDefaultValue;
	char charDefaultValue;
	
	public void print(){
		
		System.out.println("Printing the default value of boolean " + bool);
	    System.out.println("Printing the default value of int " + intDefaultValue);
	    System.out.println("Printing the default value of long " + longDefaultvalue);
	    System.out.println("Printing the default value of float " + floatDefaultValue);
	    System.out.println("Printing the default value of double " + doubleDefaultValue);
		System.out.println("Printing the default value of char " + charDefaultValue);
		
	}
	public static void main(String[] args) {
		DefaultValues dv = new DefaultValues(); 
		dv.print();
	}

}
