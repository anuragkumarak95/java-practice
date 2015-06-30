<%-- 
    Document   : insert
    Created on : Feb 10, 2014, 11:59:24 AM
    Author     : Admin
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert record</title>
        
    </head>
    <body>
        
        <%
             try
        {
            java.util.Date cdate=java.util.Calendar.getInstance().getTime();
            int day=cdate.getDate();
            int mon=cdate.getMonth()+1;
           int year=cdate.getYear()+1900;
           String createondate=day+"-"+mon+"-"+year;
           
           Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
            String un="";
            un=(String)session.getAttribute("UName");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            
            ps=con.prepareStatement("insert into applytb values(?,?,?)");
            ps.setString(1, request.getQueryString());
            ps.setString(2, un);
            ps.setString(3,createondate );
            ps.executeUpdate();
            //out.println("Record Submitted");
            response.sendRedirect("jobreport.jsp");
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            %>
            
    </body>
</html>
