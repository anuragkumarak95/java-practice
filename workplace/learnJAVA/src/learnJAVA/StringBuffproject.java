package learnJAVA;

public class StringBuffproject {

	public static void main(String[] args) {
		String name = "MyName";
		StringBuffer buff = new StringBuffer("hello " + name);//used to create a bufferable string.
		System.out.println(buff);
		buff.append(" java");
		System.out.println(buff);
	}
	
}
