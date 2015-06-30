<%-- 
    Document   : oneupdatesave
    Created on : Feb 22, 2014, 11:47:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            
            String sql="Update applicanttb set First_Name='"+request.getParameter("firstname")+
                    "',Last_Name='"+request.getParameter("lastname")+
                    "',Cur_Location='"+request.getParameter("cl")+
                    "',City='"+request.getParameter("city")+
                    "',Dob='"+request.getParameter("dob")+
                    "',Gender='"+request.getParameter("male")+
                    "',Mobile='"+request.getParameter("mobile")+
                    "',Marital_Status='"+request.getParameter("status")+
                    "',Email='"+request.getParameter("email")+
                    "',State='"+request.getParameter("state")+
                    "',Pincode='"+request.getParameter("pincode")+
                    "',Address='"+request.getParameter("address")+
                    "',Basic='"+request.getParameter("basic")+
                    "',Degree_Type='"+request.getParameter("dt")+
                    "',University='"+request.getParameter("uni")+
                    "',Year='"+request.getParameter("pyear")+
                    "',P_Graduate='"+request.getParameter("pg")+
                    "',Degree_Type1='"+request.getParameter("dt1")+
                    "',Uni='"+request.getParameter("uni1")+
                    "',P_Year='"+request.getParameter("year1")+
                    "',Prefered_Loc='"+request.getParameter("pl")+
                    "',Experience='"+request.getParameter("te")+
                    "',Curr_Company='"+request.getParameter("cc")+
                    "',Designation='"+request.getParameter("cd")+
                    "',Func_Area='"+request.getParameter("fa")+
                    "',Role='"+request.getParameter("role")+
                    "'where AppID='"+request.getParameter("appid")+"'";
           
                st.executeUpdate(sql);
                //out.println("Record Updated");
                response.sendRedirect("changeprofile.jsp");
                
        }
             catch(Exception e)
             {
                 out.println(e);
              }
            %>
            alert('Record Updated');
    </body>
</html>
