package collectionExample.List.ArrayList;

import java.util.ArrayList;

public class arraylist {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<String> ob = new ArrayList<String>();
		
		ob.add("anurag");
		ob.add("anurag2");
		ob.add("anurag3");
		ob.add("anurag4");
		ob.add("anurag5");
		ob.add("anurag6");
		
		for (String abc : ob){
			System.out.println(abc);
		}
		System.out.println(ob);
	}

}
