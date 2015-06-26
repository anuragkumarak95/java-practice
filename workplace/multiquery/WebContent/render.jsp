<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RENDERING QUERY SET</title>
</head>
<body>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>

<%! 
ResultSet rs;
void executor(Statement statement,String query){
	try{

		statement.executeUpdate(query);
		
	}catch(Exception e){
		
		try{
			
			rs = statement.executeQuery(query);
				
		}catch(Exception e2){System.out.println(e2);}
	
	}
}

void QueryListGenerator(ArrayList<String> querylist,String ToBeTokenized){
	//method to convert a String to tokens, ArrayList of Strings cut at a specific char(';' bt default).
	int len = ToBeTokenized.length();
	String str = "";
	char chr = ' ';
	for(int i=0;i<len;i++){
		chr = ToBeTokenized.charAt(i);
		if(chr==';'){
			querylist.add(str);
			str="";
		}
		else{str=str+chr;}
		
	}
	if(str.equals("")){}else{querylist.add(str);}
}

void QueryListGenerator(ArrayList<String> querylist,String ToBeTokenized,char How_to_cut){
	//method to convert a String to tokens, ArrayList of Strings cut at a specific char(args index 3).
	int len = ToBeTokenized.length();
	String str = "";
	char chr = ' ';
	for(int i=0;i<len;i++){
		chr = ToBeTokenized.charAt(i);
		if(chr==How_to_cut){
			querylist.add(str);
			str="";
		}
		else{str=str+chr;}
		
	}
	if(str.equals("")){}else{querylist.add(str);}
}
%>


<%
String txta = request.getParameter("texta");
ArrayList<String> querylst = new ArrayList<String>();


QueryListGenerator(querylst,txta);//using my created method to create an arraylist of queries from a big string cut at specific character.

System.out.println(querylst);//printing the arraylist for testing and debugging purpose.

String dbid = request.getParameter("dbid"),dbpass = request.getParameter("dbpass");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbid,dbpass);
	Statement st = con.createStatement();
	for(String qry : querylst){
	
		executor(st,qry); //using self created method to execute the queries, not in proper use now but will be updated soon.
	
	}

	out.println("all queries executed, re-directing to multiquery page...");
	response.addHeader("Refresh", "5; URL=index.html");
	
}catch(Exception e){out.println(e);}
/* try{
	while(rs.next()){
		
	}
	
}catch(Exception e){out.println(e);} */
%>


</body>
</html>