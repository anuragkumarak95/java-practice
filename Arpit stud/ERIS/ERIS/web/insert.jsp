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
            
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
             int id,aid;
            String ids="";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            String sql="Select ID from registertb";
            rs=st.executeQuery(sql);
            while(rs.next())
            {
              id=rs.getInt(1);
              aid=id+1;
              ids=Integer.toString(aid);
            }
            ps=con.prepareStatement("insert into registertb values(?,?,?,?,?,?,?)");
            ps.setString(1, ids);
            ps.setString(2, request.getParameter("username"));
            ps.setString(3, request.getParameter("email"));
            ps.setString(4, request.getParameter("password"));
            ps.setString(5, request.getParameter("contact"));
            ps.setString(6, request.getParameter("gender"));
            ps.setString(7, request.getParameter("utype")); 
            ps.executeUpdate();
            
            String check=request.getParameter("cn");
            if(!check.equals(""))
            {  
            ps=con.prepareStatement("insert into recruiterdetailtb values(?,?,?,?)");
            ps.setString(1, ids);
            ps.setString(2, request.getParameter("cn"));
            ps.setString(3, request.getParameter("ca"));
            ps.setString(4, request.getParameter("desig"));
            ps.executeUpdate();
            }
            
            response.sendRedirect("Login.jsp");
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            %>
            
    </body>
</html>
