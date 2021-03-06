package Experimentals;

import java.util.ArrayList;

class userlist{
	String uid,uname,upass;//all instances of a individual user.
	
	userlist(String uid,String upass,String uname){//full detailed constructor initialization.
		this.uid = uid;
		this.uname = uname;
		this.upass = upass;
	}
	
	userlist(String uid,String upass){//for user without name detail available in the situation of login entries.
		this.uid = uid;
		this.upass = upass;
		this.uname = " ";
	}
}

public class user {
	userlist activeuser;//the active users instance.(active users details here saved)
	ArrayList<userlist> usrlst = new ArrayList<userlist>();//list of users available in the database for authentication of use.
	private final void listinitialize(){
		usrlst.add(new userlist("admin","admin","Gaurav Gunjan"));
		usrlst.add(new userlist("root","toor","Anurag Kumar"));
	}

	private int toggle=0;//the login aquired toggle which will be set 1 if the user is appropriately logined.
	//not giving the toggle instance private initialisation, i make this code vulnerable as the toggle option can be manupilated outside the class now.
	//if anyone sets it to 1, any login and password will autheticate the transaction.
	
	public user(){//default constructor taking user input as values.
		cons.give("Enter User : ");
		String uid = cons.take();
		cons.give("Password : ");
		String upass = cons.take();
		activeuser = new userlist(uid,upass);
		listinitialize();//calling the listinitialize function to fill the list of available user ids and datails respectively.
		login();//this process will note the entered user id and password and then without any delay, it will move on to authentication login();
	}
	
	user(String uid,String upass){
		activeuser.uid = uid;
		activeuser.upass = upass;
		listinitialize();
		login();
	}
	
	
	public final void login(){//putting the final tag in the functions give the profit that the function can not be overriden my any child class at any point.
		for(userlist u : usrlst){
			if(u.uid.equals(activeuser.uid)&&u.upass.equals(activeuser.upass)){
				activeuser.uname = u.uname;
				cons.give("Access Granted..!!"+" \n Welcome "+ activeuser.uname);
				toggle = 1;
			}
		}
		if(toggle==0){cons.give("Access Denied..!");System.exit(0);}
	}
	
	public final void options(){//provides the programmed options present to the user here.
		if(toggle==1){
			cons.give("Options available for you are: \n1. Change my password.\n2. Continue");
			try{int choice = Integer.parseInt(cons.take());
				switch(choice){
					case 1: changepass();//redirect to changepassword function.
					break;
					case 2: cons.give("Thank you, "+activeuser.uname+" BYE..!!");//exit option.
					break;
					default: cons.give("Unidentified option used..");options();
				}
			}catch(Exception e){cons.give("Unidentified option used..");options();}
		}
		else{login();
			options();}//if the transaction is not authentic then authenticate it forcefully...
	
	}
	
	public final void changepass(){
		if(toggle==1){try{
			cons.give("Enter present password : ");
			String ppss = cons.take();
			if(ppss.equals(activeuser.upass)){//recheck the user present password.
				cons.give("Enter new pasword : ");
				String npass = cons.take();
				cons.give("Re - Enter the new password : ");
				String re_npass = cons.take();
				if(re_npass.equals(npass)){activeuser.upass = npass;
					for(userlist ob : usrlst){
						if(ob.uid.equals(activeuser.uid)&&ob.upass.equals(activeuser.upass)){ob.uname = activeuser.uname;}//saving the new password in the list.
					}//submit new password.
					cons.give("Password successfully changed.");}
				
				else{cons.give("password didnt matched in above entries, try again...");//reentry password didnt match,execute the function again.
					changepass();}
			}
			else{cons.give("Wrong password..");System.exit(0);}
		}catch(Exception e){//exception if any mishap happens.
			cons.give(e);
		}}
		else{login();changepass();}//if thie transaction is not authentic, then authenticate it and try again.
	}

}
