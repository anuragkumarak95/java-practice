package Experimentals;

public class user {
	String uid,upass;
	private String chkuid="root",chkupass="toor",uname = "Anurag Kumar";
	int toggle=0;//the login aquired toggle which will be set 1 if the user is appropriately logined.
	//not giving the toggle instance private initialisation, i make this code vulnerable as the toggle option can be manupilated outside the class now.
	//if anyone sets it to 1, any login and password will autheticate the transaction.
	
	public user(){//default constructor taking user input as values.
		cons.give("Enter User : ");
		uid = cons.take();
		cons.give("Password : ");
		upass = cons.take();
		login();//this process will note the entered user id and password and then without any delay, it will move on to authentication login();
	}
	
	user(String uid,String upass){
		this.uid = uid.toLowerCase();
		this.upass = upass.toLowerCase();
	}
	
	
	public final void login(){//putting the final tag in the functions give the profit that the function can not be overriden my any child class at any point.
		if(uid.equals(chkuid)&&upass.equals(chkupass)){cons.give("Access Granted..." + "\nWelcome " + uname  + " !");toggle=1;}//grante login acces and toggle as logged in.
		else{
			cons.give("Wrong Authentication... ");
			System.exit(0);//exit the transaction if not logined or not authentic user.
			}
	}
	
	public final void options(){//provides the programmed options present to the user here.
		if(toggle==1){
			cons.give("Options available for you are: \n1. Change my password.\n2. Exit");
			int choice = Integer.parseInt(cons.take());
			switch(choice){
			case 1: changepass();//redirect to changepassword function.
			break;
			case 2: cons.give("Thank you, BYE..!!");System.exit(0);//exit option.
			break;
			default: cons.give("Unidentified option used..");
			}
		}
		else{login();options();}//if the transaction is not authentic then authenticate it forcefully...
	}
	
	public final void changepass(){
		if(toggle==1){
			cons.give("Enter present password : ");
			String ppss = cons.take();
			if(ppss.equals(chkupass)){//recheck the user present password.
				cons.give("Enter new pasword : ");
				String npass = cons.take();
				cons.give("Re - Enter the new password : ");
				String re_npass = cons.take();
				if(re_npass.equals(npass)){chkupass = npass.toLowerCase();//submit new password in lowercase condition.
					cons.give("Password successfully changed.");}
				else{cons.give("password didnt matched in above entries, try again...");//reentry password didnt match,execute the function again.
					changepass();}
			}
			else{cons.give("Wrong password..");System.exit(0);}
		}
		else{login();changepass();}//if thie transaction is not authentic, then authenticate it and try again.
	}

}
