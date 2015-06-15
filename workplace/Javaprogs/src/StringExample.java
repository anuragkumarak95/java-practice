
public class StringExample {

	public static void main(String[] args) {
		String first = "Gaurav";
		String con;
		String last = new String("Kwatra");
		int length = first.length();
		con = first.concat(last);
		String name = "Gaurav";
		System.out.println("Instance check "+first==name);
		System.out.println("Objects check "+first.equals(name));
	}

}
