package Experimentals;




public class login {//java file class.

	static{

		user u1 = new user();//creating a new user here.
		//u1.toggle = 1; //myownHACKcode:  as the toggle is not private instance, if this line executes, any login or password will execute the below codes. toggling the user logined unappropriately.
		u1.options();//looking at the user options.
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		cons.give("main function body here...");//this will only execute if the program doent exit in static anonymous block.
	}

}
