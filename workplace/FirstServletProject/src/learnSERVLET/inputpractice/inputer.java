package learnSERVLET.inputpractice;

import java.io.IOException;
import java.util.TreeSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class inputer
 */

class users implements Comparable<users>{
	String uid,uname,uip,upass;
	users(String uid,String uname,String upass,String uip){
		this.uid = uid;
		this.uip = uip;
		this.upass = upass;
		this.uname = uname;
	}
	@Override
	public int compareTo(users o) {
		// TODO users method used by the collection framework(TreeSet) to form a arranged tree on element.
		return uid.compareTo(o.uid);
	}
}

@WebServlet("/inputer")
public class inputer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TreeSet<users> ulist = new TreeSet<>();//this arraylist is made outside the method so that the arraylist is not called everytime,
											    //creating new list every time.
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
		// TODO Get input from a form in index.html page. servlet learning example phase 2.
		String name = null,uid = null,ip = null,upass = null;//declared the string being used to create and add the users in the list by taking from the submit form.
		try{name = rq.getParameter("username");
		uid = rq.getParameter("uid");
		upass = rq.getParameter("upass");
		ip = rq.getRemoteAddr();
		ulist.add(new users(uid,name,upass,ip));
		//by using this arraylist of my users objects,i created a list of users on the server online, that will be continued until server dies.
		rs.getWriter().println("You are: \nuser Name is : "+name);
		rs.getWriter().println("user Email ID is : "+uid);
		rs.getWriter().println("user Email Password is : "+upass);
		rs.getWriter().println("user IP Adrress is : "+ ip);
		
		}catch(Exception e){//condition where we dont give the input, it shows the list of available users on te server or for the show list in server action in the page
			rs.getWriter().println("The list of available users submitted on the server are :\n\n");
			for(users u : ulist){
				rs.getWriter().println("user Name is : "+u.uname + " || users object HashCode : " + u.hashCode());
				rs.getWriter().println("user Email ID is : "+u.uid);
				rs.getWriter().println("user Email Password is : "+u.upass);
				rs.getWriter().println("user IP Address is : "+u.uip+"\n\n");
				
			}
		}
		
	}
	
	public static void hi(HttpServletResponse rs) throws IOException{
		rs.getWriter().println("hi");
	}

}
