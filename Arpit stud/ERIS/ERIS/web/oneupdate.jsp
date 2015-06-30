<%-- 
    Document   : oneupdate
    Created on : Feb 20, 2014, 3:42:49 PM
    Author     : Admin
--%>


<%@page import="javax.imageio.ImageIO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
         <table width="710px" cellpadding="10px" style="margin: auto; ">
                       <tr>
                        <td>Applicant ID</td>
                        <td><input type="text" name="appid" value="<%= rs.getString("AppID")%>" size="20"  readonly/> </td>
                        <td></td>
                        <td></td> 
                    
                    </tr>
             
                        <tr>
                        <td>First Name :</td>
                        <td><input type="text" name="firstname" value="<%= rs.getString("First_Name")%>" size="20"  autofocus/> </td>

                        <td>Last  Name : </td>
                        <td><input type="text" name="lastname" value="<%= rs.getString("Last_Name")%>" size="20"  /> </td> 
                    
                    </tr>
                    
                    <tr>
                        <td>Current Location :</td>
                        <td><input type="text" name="cl" value="<%= rs.getString("Cur_Location")%>" size="20"  /></td> 
                         <td>City :</td>
                        <td><input type="text" name="city" value="<%= rs.getString("City")%>" size="20"  /></td> 
                                          
                    </tr>
                    
                                    
                    <tr>
                        <td>Date of Birth :</td>
                        <td><input type="text" name="dob" value="<%= rs.getString("Dob")%>" size="20"  /></td> 
                        <td>Gender : </td>
                        <td><input type="text" name="male" size="20" value="<%= rs.getString("Gender")%>" required/></td> 
                    
                    </tr>
                     <tr>
                        <td>Mobile :</td>
                        <td><input type="text" name="mobile" value="<%= rs.getString("Mobile")%>" size="20" /></td>
                         <td>Marital Status : </td>
                        <td><input type="text" name="status" value="<%= rs.getString("Marital_Status")%>" required /></td>
                       
                    </tr>
                    <tr>
                        <td>Email : </td>
                        <td><input type="text" name="email" value="<%= rs.getString("Email")%>" size="20" readonly />    </td>
                        <td>State :</td>
                        <td><input type="text" name="state" value="<%= rs.getString("State")%>" size="20"  /> </td>                 
                    </tr>
                    
                    <tr>
                        <td>Pincode : </td>
                        <td><input type="text" name="pincode" value="<%= rs.getString("Pincode")%>" size="20" pattern="[0-9]{6}" title="Input 6 Digit Only"/>    </td>
                        <td>Permanent Address:</td>
                        <td><textarea name="address" rows="4" cols="20" value="<%= rs.getString("Address")%>"> </textarea></td>
                                           
                    </tr>
                   
                     <tr>
                        <td>Basic/Graduation: </td>
                        <td><input type="text" name="basic" value="<%= rs.getString("Basic")%>" size="20"  />    </td>
                        <td>Degree Type:</td>
                        <td><input type="text" name="dt" value="<%= rs.getString("Degree_Type")%>" size="20" /></td>
                                           
                    </tr>
                     <tr>
                        <td>University/Institute: </td>
                        <td><input type="text" name="uni" value="<%= rs.getString("University")%>" size="20" />    </td>
                        <td>Year</td>
                        <td><input type="text" name="year" value="<%= rs.getString("Year")%>" size="20"  /></td>
                                           
                    </tr>
                    <tr>
                        <td>----------------</td>
                        <td>-----------------</td>
                        <td>-----------------</td>
                        <td>-----------------</td>
                    </tr>
                    <tr>
                        <td>Post Graduation: </td>
                        <td><input type="text" name="pg" value="<%= rs.getString("P_Graduate")%>" size="20"  />    </td>
                        <td>Degree Type:</td>
                        <td><input type="text" name="dt1" value="<%= rs.getString("Degree_Type1")%>" size="20"  /></td>
                                           
                    </tr>
                     <tr>
                        <td>University/Institute: </td>
                        <td><input type="text" name="uni1" value="<%= rs.getString("Uni")%>" size="20" />    </td>
                        <td>Year</td>
                        <td><input type="text" name="year1" value="<%= rs.getString("P_Year")%>" size="20" /></td>
                                           
                    </tr>
                                        
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                   
                    <tr>
                        <td>Preferred Location : </td>
                        <td><input type="text" name="pl" value="<%= rs.getString("Prefered_Loc")%>" size="20"  /></td> 
                        <td>Total Experience : </td>
                        <td><input type="text" name="te" value="<%= rs.getString("Experience")%>" size="20"  /></td> 
                                              
                    </tr>
                    <tr>
                        <td>Current Company : </td>
                        <td><input type="text" name="cc" value="<%= rs.getString("Curr_Company")%>" size="20"  /></td> 
                        <td>Current Designation : </td>
                        <td><input type="text" name="cd" value="<%= rs.getString("Designation")%>" size="20"  /></td> 
                                              
                    </tr>
                     <tr>
                        <td>Functional Area : </td>
                        <td><input type="text" name="fa" value="<%= rs.getString("Func_Area")%>" size="20"  /></td> 
                        <td>Role : </td>
                        <td><input type="text" name="role" value="<%= rs.getString("Role")%>" size="20"  /></td> 
                                              
                    </tr>
                                     
                    <tr>
                        <td> </td>
                        <td></td>
                        <td><input type="submit" value="UPDATE" name="Update" onclick="alert('Record Updated')" /></td>
                        <td><input type="reset" value="RESET" name="Reset" /></td>
                       
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
    </body>
</html>
