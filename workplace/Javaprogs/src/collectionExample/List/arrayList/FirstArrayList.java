package collectionExample.List.arrayList;

import java.util.ArrayList;
import java.util.Iterator;

public class FirstArrayList {

	public static void main(String[] args) {
		ArrayList<String> ob = new ArrayList<String>();
		
		ob.add("Gaurav");
		ob.add("Ankit");
		ob.add("Shubham");
		ob.add("Tushar");
		ob.add("Nitin");
		ob.add("Bhavya");
		ob.add("Jasnoor");
		
		for(String abc: ob) {
			
			System.out.println(abc);
		}
		
		System.out.println(ob);
		
		 Iterator trav = ob.iterator();
		 
		 while(trav.hasNext()) {
			 
			 System.out.println(trav.next());
		 }
		 
	}

}
