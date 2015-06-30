<%-- 
    Document   : logincheck
    Created on : Feb 10, 2014, 11:38:00 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Check</title>
    </head>
    
    <body>
        <%
        try
        {
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
            String ut;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            
            String sql="Select * from registertb";
            rs=st.executeQuery(sql);
            int i=0;
            while(rs.next())
            {
                if(request.getParameter("email1").equals(rs.getString("Email"))&& request.getParameter("pw").equals(rs.getString("Password")))
                {
                    i=1;
                    String sql1="Select User_Type from registertb Where Email='"+request.getParameter("email1")+"'";
                    rs=st.executeQuery(sql1);
                    while(rs.next())
                    {
                        ut=rs.getString("User_Type");
                        String user=request.getParameter("usert");
                        if(user.equals("Admin")&& ut.equals("Admin"))
                        {
                            session.setAttribute("UName",request.getParameter("email1"));
                            response.sendRedirect("Admin.jsp");
                        }
                        else if(user.equals("Applicant") && ut.equals("Applicant"))
                        {
                            session.setAttribute("UName",request.getParameter("email1"));
                            response.sendRedirect("afterlogin.jsp");
                        }
                        else if(user.equals("Recruiter")&& ut.equals("Recruiter"))
                        {
                            session.setAttribute("UName",request.getParameter("email1"));
                            response.sendRedirect("Client.jsp");
                        }
                        else
                        {
                            response.sendRedirect("error.jsp");
                        }
                    }
                                      
                   
                    
                } 
              
                
            }
            if(i==0)
            {
                response.sendRedirect("error.jsp");
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
    
    
    %>
    </body>
</html>
