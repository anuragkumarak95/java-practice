package learnJAVA;

import java.util.HashSet;//hashset only adds distict values. any repeated value will be overwritten on the same refrence as the past value was placed.
import java.util.Iterator;//basic iterator, can be used with any type of collection of objects no matter what.

import Experimentals.user;



public class heshsetuseage {

	static{

		user u1 = new user();//creating a new user here.
		//u1.toggle = 1; //myownHACKcode:  as the toggle is not private instance, if this line executes, any login or password will execute the below codes. toggling the user logined unappropriately.
		u1.options();//looking at the user options.
	}
	
	public static void main(String[] args) {
		// TODO hashset usage
		HashSet<Integer> a1 = new HashSet<Integer>();
	for(int i=0;i<=100;i++){
		a1.add(i);
	}//same element will not get added in hashset attributes.
	
		Iterator<Integer> it = a1.iterator();
		while(it.hasNext()){
			System.out.println(it.next()+" "+it.hashCode() + " " + it.getClass().getName());
		}
		System.out.println(a1);
	}

}
