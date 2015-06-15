package collectionExample.List.LinkedList;

import java.util.LinkedList;
import java.util.ListIterator;

/**
 * 
 *  * @author GEEK
 *	LinkedList contain objects in form of nodes doubly link list
 */

public class LinkedListExample {

	public static void main(String[] args) {
		LinkedList<Integer> il = new LinkedList<Integer>(); 
		
		il.add(10);
		il.add(20);
		il.add(30);
		il.add(40);
		
		ListIterator li = il.listIterator();
		 System.out.println();
		 System.out.println("Forward Direction List Iterator");
		 
		 while(li.hasNext()) {
			   
			 System.out.println(li.next());
		 }	
		 System.out.println();
		 System.out.println("Reverse Direction List Iterator");  
		 
		 while(li.hasPrevious()) {
			  
			 System.out.println(li.previous());
		 }
	}
}	