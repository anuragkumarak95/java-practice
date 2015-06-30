<%-- 
    Document   : newcontact
    Created on : Feb 6, 2014, 11:50:32 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
         <script src="newcon.js" type="text/javascript" lang="javascript"></script>
    </head>
    <body>
        <%
            if(session.getAttribute("UName")==null)
                response.sendRedirect("index.jsp");
        try
        {
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eris","root","12#");
            st=con.createStatement();    
            String sql="tb where Email='"+request.getQueryString()+"'";
            rs=st.executeQuery(sql);
            while(rs.next())
            {
        %>
            
      <div  style="height: auto ; ">
            <div  style=" margin: auto;padding:  auto; width:80%; height: auto ; margin-top: 5%">
                <br><br>
                 <table border="1" width="100" height="100" style=" position: absolute; border-color:  white">
                    <tr>
                        <td><img src="" alt="no image" id="Image1" width="100" height="100" /></td>
                        
                    </tr>
                </table>    
                <form action="update.jsp" method="post">
                    <table width="710px" cellpadding="10px" style="margin: auto; color:  moccasin">
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" name="firstname" value="<%=rs.getString("Fname") %>" size="20" /> </td>

                        <td>Last  Name : </td>
                        <td><input type="text" name="lastname" value="<%=rs.getString("Lname") %>" size="20" /> </td> 
                    
                    </tr>
                    
                    <tr>
                        <td>Father's Name :</td>
                        <td><input type="text" name="fathname" value="<%=rs.getString("Fathern") %>" size="20" /></td> 
                        <td>Mother's Name :</td>
                        <td><input type="text" name="mothname" value="<%=rs.getString("Mothern") %>" size="20" /></td> 
                    
                    </tr>
                    
                    <tr>
                        <td>Work :</td>
                        <td><input type="text" name="work" value="<%=rs.getString("Work") %>" size="20" /></td> 
                        <td>Home : </td>
                        <td><input type="text" name="home" value="<%=rs.getString("Home") %>" size="20" /></td> 
                    
                    </tr>
                 
                    <tr>
                        <td>Date of Birth :</td>
                        <td><input type="text" name="dob" value="<%=rs.getString("Dob") %>" size="20" /></td> 
                        <td>Gender : </td>
                        <td><input type="text" name="male" value="<%=rs.getString("Gender") %>" /></td> 
                    
                    </tr>
                     <tr>
                        <td>Address :</td>
                        <td><input type="text" name="address" value="<%=rs.getString("Address") %>" size="20" /></td>
                        
                    
                    </tr>
                        <tr>
                        <td>City : </td>
                        <td><input type="text" name="city" value="<%=rs.getString("City") %>" size="20" />    </td>
                        <td>State :</td>
                        <td><input type="text" name="state" value="<%=rs.getString("State") %>" size="20" /></td>
                                           
                    </tr>
                    
                     </tr>
                        <tr>
                        <td>Pincode : </td>
                        <td><input type="text" name="pincode" value="<%=rs.getString("Pincode") %>" size="20" />    </td>
                        <td>Email :</td>
                        <td><input type="text" name="email" value="<%=rs.getString("Email") %>" size="20" /></td>
                                           
                    </tr>
                    <tr>
                        <td>Marital Status : </td>
                        <td><input type="text" name="status" value="<%=rs.getString("Martial") %>" size="20" /></td>
                        <td>Anniversary :</td>
                        <td><input type="text" name="doa" value="<%=rs.getString("Doa") %>" size="20" /></td>
                                           
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="SUBMIT" name="save" /></td>
                        <td><input type="reset" value="RESET" name="reset" /></td>
                        <td><input type="button" value="Back" name="back" onclick="window.location.href='view.jsp';"/></td>
                  
                    </tr>
                        
                </table>
                </form>
                        <%
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
                                %>
            </div>
        </div>
    </body>
</html>
