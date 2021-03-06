package learnJAVA;

import java.util.ArrayList;
import java.util.Iterator;

class student{
	int rollno,age;
	String name;
	
	student(int rollno,String name,int age){
		this.rollno = rollno;
		this.age = age;
		this.name = name;
	}
}

public class secondarraylist {
// TODO using ArrayList to define an arraylist of userdfined classes.
	public static void main(String[] args) {
		student s1 = new student(1001,"Anurag",40)
			,s2 = new student(1002,"Gaurav",50),
			s3 = new student(1003,"Pranjali",60);
		
		ArrayList<student> ob = new ArrayList<student>();
		ob.add(s1);
		ob.add(s2);
		ob.add(s3);
		
		System.out.println("Display through enhanced for loop.");//through enhanced loop syntax
		
		 for(student s : ob){
			System.out.println(s.rollno+ " "+ s.name + " " +s.age);
		}
		
		
		Iterator<student> it = ob.iterator();// giving <E> to iterator makes it specific iterator rather tan rawmaterial iterator.
		
		System.out.println("\nDisplay through iterator traversing.");//through iterator syntax.
		
		while(it.hasNext()){
			student st = (student)it.next();
			System.out.println(st.rollno + " " + st.name + " " + st.age);
		}
	}

}
