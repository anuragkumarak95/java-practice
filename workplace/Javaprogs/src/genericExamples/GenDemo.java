package genericExamples;

/*
 * Java gives ability to create generic (general or generalized) class.
 * By reference type of Object class because object can refer to any type of object.
 * 
 * */

public class GenDemo {

	public static void main(String[] args) {
			Gen<Integer> fob;
			
			fob = new Gen<Integer>(100);
			
			fob.showType();
			
			System.out.println("Value retured from Generic method: "+fob.getob());
			
			System.out.println();
			
			Gen<String> Sob;
			
			Sob = new Gen<String>("Gaurav kwatra");
			
			Sob.showType();
			
			System.out.println("Value retured from Generic method: "+Sob.getob());
	}

}

// <T> is a type parameter
class Gen<T> {
	
	//Declare an object of type T
	
	T ob;
	
	//Constructor
	
	Gen(T o){
		ob = o;
	}
	
	T getob() {
		
		return ob;
	}
	
	void showType() {
		
		System.out.println("Type of T is: "+ob.getClass().getName());
	}
}