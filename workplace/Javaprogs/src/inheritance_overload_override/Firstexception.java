package inheritance_overload_override;

public class Firstexception {

	public static void main(String[] args) {
		try {
			int calc = 20/ 2;
			System.out.println(calc);
		}
		catch(ArithmeticException e){
			System.out.println("Not Posible to divide by zer");
		}
	}

}
