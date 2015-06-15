package abstarct_interface;

interface Greet {
	void display();
}

class India implements Greet {
	
	public void display(){
		
		System.out.println("Hello from India");
	}
}

class Newzealand implements Greet {
	
	public void display(){
		
		System.out.println("Hello from Newzealand");
	}
}

public class InterfaceTest {

	public static void main(String[] args) {
		India I = new India();
		I.display();
		
		Newzealand Z = new Newzealand();
		Z.display();
	}

}
