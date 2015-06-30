<%-- 
    Document   : resume
    Created on : May 9, 2014, 4:00:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resume</title>
        <style>
            input
            {
                text-decoration:  none;
                border-style:  none;
            }
            
        </style>
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
            String un="";
            un=(String)session.getAttribute("UName");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();    
            String sql="Select * from applicanttb where Email='"+un+"'";
            rs=st.executeQuery(sql);
           
            while(rs.next())
            {   
                  
        %>
      <form action="oneupdatesave.jsp" method="post" name="form2">      
        
          <h3 align="Center">Resume</h3>
          Name : <input type="text" value="<%=rs.getString("First_Name")%> <%=rs.getString("Last_Name")%>" /><br>
          Present Address :<input type="text" value="<%=rs.getString("Address")%> <%=rs.getString("City")%> <%=rs.getString("State")%> <%=rs.getString("Pincode")%>" />  <br>    
          Contact No :<input type="text" value="<%=rs.getString("Mobile")%>" /><br>
          Email ID :<input type="text" value="<%=rs.getString("Email")%>" /><br>
          <hr>
          <b>Objective :</b><br><input type="text" size="130" value="<%=rs.getString("Objective")%>" /><br><br>
          <b>Education Qualification :</b><br>
          <li><input type="text" size="130" value="<%=rs.getString("Basic")%> from <%=rs.getString("University")%> passed out in <%=rs.getString("Year")%>" /><br></li>
          <li><input type="text" size="130" value="<%=rs.getString("P_Graduate")%> from <%=rs.getString("Uni")%> passed out in <%=rs.getString("P_Year")%>" /><br></li>
          <br>
          <b>Experience:</b><br>
          <li><input type="text" size="130" value="<%=rs.getString("Experience")%> with <%=rs.getString("Curr_Company")%> as a <%=rs.getString("Role")%> in <%=rs.getString("Func_Area") %>" /><br></li>
          <br>
          
           <b>Personal Details :</b><br>
           <br> 
           Date of Birth :  <input type="text" size="20" value="<%=rs.getString("Dob")%> "/><br>
            <br> 
           Gender :  <input type="text" size="20" value="<%=rs.getString("Gender")%> "/><br>
            <br> 
           Marital_Status :  <input type="text" size="20" value="<%=rs.getString("Marital_Status")%> "/><br>
           
           <p align="Right"><input type="text" size="20" value="<%=rs.getString("First_Name")%> <%=rs.getString("Last_Name")%> "/></p>
           
           
           
      </form>
            <%
                        
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
                                %>
    </body>
</html>
