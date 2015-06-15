package collectionExample.List.Stack;

import java.util.ListIterator;
import java.util.Stack;

/**
 * 
 * @author GEEK
 *	Study vector for experimental work
 */
public class StackList {

	public static void main(String[] args) {
		Stack s = new Stack();
		s.push(10);
		s.push("January");
		s.push(1989);
		
		System.out.println("Stack elements: "+s);
		
		ListIterator li = s.listIterator();
		
		while(li.hasNext()) {
			
			System.out.println("Elements in Stack: " + li.next());
		}
	}

}
