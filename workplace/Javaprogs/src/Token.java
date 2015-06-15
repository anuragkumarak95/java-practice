
public class Token {

	public static void main(String[] args) {

		   int lightspeed;
		   long days, seconds, distance;
		   lightspeed = 186000;
		   days = 1000;
		   seconds = days * 24 * 60 * 60; // convert to seconds
		   distance = lightspeed * seconds; //compute distance
		   System.out.print("In " + days);
		   System.out.print(" days light will travel about ");
	       System.out.println(distance + " miles.");
	       
	       double pi = 3.1416, r = 10.8, a;
		   a = pi * r * r; // compute area
		   
		   System.out.println("Area of circle is " + a);
		   
		   char ch1, ch2;
		   ch1 = 88; // code for X
	       ch2 = 'Y';
	       System.out.print("ch1 and ch2: ");
	       System.out.println(ch1 + " " + ch2);
		   
		   ch1++;
		   //forth program
		   System.out.println("ch1 is now " + ch1);
		   
		   boolean b;
			b = false;
			System.out.println("b is " + b);
			b = true;
			System.out.println("b is " + b);
									// a boolean value can control the if statement
			if(b) 
				System.out.println("This is executed.");
			b = false;
			
			if(b) 
				System.out.println("This is not executed.");
			// outcome of a relational operator is a boolean value
			System.out.println("10 > 9 is " + (10 > 9));
	}

}
