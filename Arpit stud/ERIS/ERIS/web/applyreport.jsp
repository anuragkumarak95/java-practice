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
             try
        {
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            
            String sql="Select * from applytb";
            rs=st.executeQuery(sql);
            %>
            <div style="margin-left: 200px">
            <table cellpadding="5" cellspacing="5" border="1">
                <tr>
                    <th>Job Id</th>
                    <th>App_Email</th>
                    <th>Date of Apply</th>
                     <th></th>                         
                </tr>
                <%
            
            
           String em="";
            while(rs.next())
            {   
                int i=0;
                em=rs.getString("Appid");
              %>  
              
              <tr>
                  <td><%= rs.getString("Jobid") %></td>
                  <td><%= em %></td>
                  <td><%= rs.getString("date") %></td>
                  <td><a href="viewresume.jsp?<%= em %>">View Resume</a></td>              
               </tr>
           
           <%
            }
              %>
            </table>
            </div>
        <%
        }
             catch(Exception e)
             {
                 out.println(e);
             }
              %>
             
    </body>
</html>
