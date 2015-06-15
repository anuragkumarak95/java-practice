package collectionExample.Set.HashSet;
/**
 * It extends AbtractSet.
 * It contains unique elements only.
 * Experimental work Linkedhashset and TreeSet
 */
import java.util.HashSet;
import java.util.Iterator;

public class HashSetExample {

	public static void main(String[] args) {
			HashSet<String> al= new HashSet<String>();
			
			al.add("Gaurav");
			al.add("Kirti");
			al.add("Gaurav");
			
			Iterator<String> itr = al.iterator(); 
			
			while(itr.hasNext()) {
				
				System.out.println(itr.next());
			}
	}

}
