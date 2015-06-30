<%-- 
    Document   : view
    Created on : Feb 11, 2014, 11:00:11 AM
    Author     : Admin
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interview Report </title>
    </head>
    <body>
        <%
            if(session.getAttribute("UName")==null)
             response.sendRedirect("Login.jsp");
      
            try
            {
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
            String un="",app="";
            un=(String)session.getAttribute("UName");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            
            String sql="Select ID from registertb where Email='"+un+"'";
            rs=st.executeQuery(sql);
            while(rs.next())
            {
                app=rs.getString(1);
            }
            
            String sql1="Select * from interviewtb where Appid='"+app+"'";
            rs=st.executeQuery(sql1);
            %>
            <table cellpadding="5" cellspacing="5" border="1">
                <tr>
                    <th>Job Id</th>
                    <th>Applicant ID</th>
                    <th>Company Name</th>
                    <th>Post Name</th>
                    <th>Applicant Name</th>
                    <th>Location</th>
                    <th>Date </th>
                    <th>Time </th>
                                       
                    
                </tr>
                <%
            
            
           
            while(rs.next())
            {   
                int i=0;
               
              %>  
              
              <tr>
                  <td><%= rs.getString("Jobid") %></td>
                  <td><%= rs.getString("Appid") %></td>
                  <td><%= rs.getString("Company_Name") %></td>
                  <td><%= rs.getString("Post_Name") %></td>
                  <td><%= rs.getString("Applicant_Name") %></td>
                  <td><%= rs.getString("Location") %></td>
                  <td><%= rs.getString("Doi") %></td>
                  <td><%= rs.getString("Time") %></td>
               </tr>
           
           <%
            }
              %>
            </table>
        <%
        }
             catch(Exception e)
             {
                 out.println(e);
             }
              %>
             
    </body>
</html>
