<%@include file="classes/template.jsp"%>
<%@include file="classes/user.jsp"%> 
<%

	Template objTemplate=new Template();
	     
	String UserID=request.getParameter("UserID");
	String Password=request.getParameter("Password");   
	String Role = null;
        if((UserID!=null) && (Password!=null)) {         

            User objUser = new User();
            try {
                Role = objUser.checkLogin(UserID,Password);
            }
            catch(Exception e) {
                System.out.println(e.getMessage());
            }
            
       
            if(Role!="") {
                session.setAttribute("UserID",UserID);
                session.setAttribute("Role",Role);
                response.sendRedirect("home.jsp");      
           } else {
                out.print(Role);
            }
            
        } else {
        out.print("");
        }

	String Data=" "+"<h2>Login Form</h2>"+
	"<form name=LoginForm action=index.jsp method=post>"+
	"<table>"+
	"<tr>"+
	"<td>Username</td>"+
	"<td><input type=text id=UserID name=UserID value=\"\"></td>"+
	"</tr>"+
	"<tr>"+
	"<td>Password</td>"+
	"<td><input type=password id=Password name=Password value=\"\"></td>"+
	"</tr>"+
	"<tr>"+
	"<td></td>"+
	"<td><input type=submit value=\"Login\"></td>"+
	"</tr>"+
	"<tr>"+
	"<td></td>"+
	"<td><a href=\"forgot-password.jsp\">Forgot Password</a></td>"+
	"</tr>"+
	"</table>"+
	"</form>";

out.println(objTemplate.genPage(Data,false));
%>











