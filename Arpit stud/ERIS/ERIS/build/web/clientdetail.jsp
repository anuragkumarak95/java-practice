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
            
            String sql="Select registertb.ID,Name,Email,Contact,Company_Name,Address from registertb,recruiterdetailtb where User_Type='Recruiter' and registertb.ID=recruiterdetailtb.ID";
            rs=st.executeQuery(sql);
            %>
            <table cellpadding="5" cellspacing="5" border="1">
                <tr>
                    <th>ID</th>
                    <th>Recruiter Name</th>
                    <th>Email ID</th>
                    <th>Contact No</th>
                    <th>Company Name</th>
                    <th>Address</th>
                 </tr>
                <%
            
            
            
            while(rs.next())
            {   
                int i=0;
               
              %>  
              
              <tr>
                  <td><%= rs.getString("ID") %></td>
                  <td><%= rs.getString("Name") %></td>
                  <td><%= rs.getString("Email") %></td>
                  <td><%= rs.getString("Contact") %></td>
                  <td><%= rs.getString("Company_Name") %></td>
                  <td><%= rs.getString("Address") %></td>
                                    
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
