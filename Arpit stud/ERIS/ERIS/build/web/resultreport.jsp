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
        <title>Interview Results</title>
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
            
            String sql="Select Appid from Applicanttb where Email='"+un+"'";
            rs=st.executeQuery(sql);
            while(rs.next())
            {
                app=rs.getString(1);
            }
            
            String sql1="Select * from resulttb where Appid='"+app+"'";
            rs=st.executeQuery(sql1);
            
            %>
            <table cellpadding="5" cellspacing="5" border="1">
                <tr>
                    <th>Job Id</th>
                    <th>App ID</th>
                    <th>Applicant Name</th>
                    <th>Status</th>
                    <th>Package</th>
                    <th>Date of Join</th>
                                        
                </tr>
                <%
            
            while(rs.next())
            {   
                int i=0;
           
              %>  
              
              <tr>
                  <td><%= rs.getString("Jobid") %></td>
                  <td><%= rs.getString("Appid") %></td>
                  <td><%= rs.getString("App_Name") %></td>
                  <td><%= rs.getString("Status") %></td>
                  <td><%= rs.getString("Salary") %></td>
                  <td><%= rs.getString("Doj") %></td>
                  
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
