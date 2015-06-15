import java.util.StringTokenizer;


public class Toknize {

	public static void main(String[] args) {
		StringTokenizer st = new StringTokenizer("My name is gaurav kwatra.");
		System.out.println(st);
		
		while (st.hasMoreTokens()) {  
	         System.out.println(st.nextToken());  
	     }
	}

}











