package learnJAVA;

import java.util.Scanner;

public class hello {

	private static Scanner scanname;

	public static void main(String[] args) {
		System.out.println("Whats your name: \n");
		scanname = new Scanner(System.in);
		String name = scanname.next();
		System.out.println("\nhello "+name+", I'm a JAVA Application. \nNice to meet you. :)");
	}

}
