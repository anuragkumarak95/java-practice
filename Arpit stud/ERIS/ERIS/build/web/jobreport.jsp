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
        <title>View/Update </title>
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
           
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            
            String sql="Select * from jobtb where Status='Open'";
            rs=st.executeQuery(sql);
            %>
            <table cellpadding="5" cellspacing="5" border="1">
                <tr>
                    <th>Job Id</th>
                    <th>Dept</th>
                    <th>Designation</th>
                    <th>Exp Required</th>
                    <th>Post Date</th>
                    <th>Key_Skill</th>
                    <th>Salary </th>
                    <th>Company Name </th>
                    <th>Company Address</th>
                    <th>Education </th>
                    <th>Job Status</th>
                    <th></th>
                    
                </tr>
                <%
            
            
            String x="";
            while(rs.next())
            {   
                int i=0;
                x=rs.getString("Jobid");
              %>  
              
              <tr>
                  <td><%= x %></td>
                  <td><%= rs.getString("Dept_Name") %></td>
                  <td><%= rs.getString("Post_Name") %></td>
                  <td><%= rs.getString("Experience") %></td>
                  <td><%= rs.getString("Dop") %></td>
                  <td><%= rs.getString("Key_Skill") %></td>
                  <td><%= rs.getString("Salary") %></td>
                  <td><%= rs.getString("Company_Name") %></td>
                  <td><%= rs.getString("Address") %></td>
                  <td><%= rs.getString("Edu_Required") %></td>
                  <td><%= rs.getString("Status") %></td>
                  <td><a href="applied.jsp?<%= x %>" onclick="alert('Applied Success')">Apply</a></td>
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
