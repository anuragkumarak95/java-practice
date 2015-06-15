package collectionExample.List.arrayList;
/**
 * List Interface is used to store multiple objects with duplicates that means it allows to store duplicate elements. 
 * List Interface are implemented in following collection classes
 * 
 * 1. ArrayList
 * 2. LinkedList
 * 3. 
 */
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

public class SecondArrayList {

	public static void main(String[] args) {
		Student s1 = new Student(1001, "Gaurav", 25);
		Student s2 = new Student(1002, "Shubham", 20);
		Student s3 = new Student(1003, "Nitin", 20);
		
		ArrayList<Student> ob = new ArrayList<Student>();
		
		ob.add(s1);
		ob.add(s2);
		ob.add(s3);
		
		Iterator trav = ob.iterator();
		   
		 while(trav.hasNext()) {
			 Student st=(Student)trav.next();  
			 System.out.println(st.rollno+" "+st.name+" "+st.age);
		 }
	
	}

}
class Student {
	
	int rollno;
	String name;
	int age;
	
	Student(int rollno, String name, int age) {
		this.rollno = rollno;
		this.name = name;
		this.age = age;
	}
}