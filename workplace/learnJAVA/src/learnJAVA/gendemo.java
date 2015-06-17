package learnJAVA;

class gen<T> {//template class/generic class..
	T ob;
	
	gen(T o){ob = o;}//constructor with T as argument object type.
	
	T getob(){return ob;}//get the object back
	
	void showType(){
		System.out.println("Type of T is :" + ob.getClass().getName());//showing object T ob 's ClassName.
	}
}

public class gendemo {

	public static void main(String[] args) {//user defined class template creation
		// TODO using class template
		gen<Integer> str = new gen<Integer>(100);
		int i =str.getob();
		System.out.println("Value : "+i);
		str.showType();
	}

}
