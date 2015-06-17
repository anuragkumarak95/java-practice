package learnJAVA;

public class usestatic {

	static int a=3;
	final int b=2;
	
	static void meth(int x){
		System.out.println("X : "+x);
		System.out.println("A : "+a);
		//System.out.println("B : "+b); cannot call non static arguments in static methods.
	}
		public static void main(String[] args) {
		meth(10);

	}
	
		//static anonymous blocks
		static {System.out.println("static anonymous block.");}// static anonymous block is called before static main block.

}
