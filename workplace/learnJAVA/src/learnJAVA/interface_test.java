package learnJAVA;

interface greet{//using interface.
	void display();
}
class india implements greet{
	public void display(){System.out.println("Namaste!!");}
}

public class interface_test {

	public static void main(String[] args) {
		// TODO using and testing interface type.
		india  i = new india();
		((india) i).display();
	}

}
