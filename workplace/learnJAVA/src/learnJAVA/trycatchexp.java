package learnJAVA;

import Experimentals.cons;

class math{
	int a,b;
	math(){a=0;
	b=0;}
	
	math(int a,int b){
		this.a = a;
		this.b = b;
	}
	
	int div(){
		return a / b;
	}
}

public class trycatchexp {

	public static void main(String[] args) {
		// Try and Catch example
		System.out.println("Enter 2 numbers: ");
		math m1 = new math(Integer.parseInt(cons.take()),Integer.parseInt(cons.take()));
		try{
		System.out.println("ok");
		double r = m1.div();
		System.out.println(r);
		System.out.println("ok2");
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}
