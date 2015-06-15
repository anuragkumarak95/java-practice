public class GenDemo {

	public static void main(String[] args) {
			Gen<Integer> fob;
			
			fob = new Gen<Integer>(100);
			
			fob.showType();
			
			System.out.println("Value retured from Generic method: "+fob.getob());
	}

}

class Gen<T> {
	
	T ob;
	
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