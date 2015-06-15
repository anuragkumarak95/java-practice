package abstarct_interface;

/*
 * 1. Abstract class always an incomplete class.
 * 2. Its purpose is to provide class or design which shared by all developers.
 * 3. Class become abstract id one or more methods become abstract.
 * 4. Subclasses inherit features of abstract class (super class) and subclass must complete the incomplete if not then its abstarct as well. 
 * 5.  
 * */
abstract class Animal {
	
	abstract void habit();
}

class Dog extends Animal{
	
	void habit() {
		
		System.out.println("Dog always Barking...");
	}
}

class Lion extends Animal{
	void habit() {
		
		System.out.println("Lion always Roar..");
	}
}

public class AbstarctClass {

	public static void main(String[] args) {
		Dog d = new Dog();
		System.out.print("d is object of DOG: ");
		System.out.println( d instanceof Dog);
		Lion l = new Lion();
		d.habit();
		l.habit();
	}

}
