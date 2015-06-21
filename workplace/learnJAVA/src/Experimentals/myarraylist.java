package Experimentals;

class mylist<type>{
	type obj[];
	int count = 0;
	
	void add(type ob){
		obj[0]=ob;//getting nullpointerexception at this point.
		count++;
	}
	
	void show(){
		
			System.out.println("Value is: "+obj);
		
	}
}

public class myarraylist {
	static{

		user u1 = new user();//creating a new user here.
		//u1.toggle = 1; //myownHACKcode:  as the toggle is not private instance, if this line executes, any login or password will execute the below codes. toggling the user logined unappropriately.
		u1.options();//looking at the user options.
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try{
		mylist<String> l = new mylist<String>();
		l.add("A");
		l.add("A");
		l.add("A");
		l.add("Anurag");
		l.show();}
		catch(Exception e){
			System.out.println(e);
		}

	}

}
