<%-- 
    Document   : addprofile
    Created on : May 7, 2014, 3:37:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>Recruiter Jobs</title>
    </head>
    <body>
        <br>
        <br>
        <%
            if(session.getAttribute("UName")==null)
                response.sendRedirect("Login.jsp");
            
            
            %>
         <%
            try
        {
            
            Connection con;
            ResultSet rs;
            Statement st;
            int aid=0,add,cid=0;
            String cnn="",cnn1="";
            String un=(String)session.getAttribute("UName");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            String Sql="Select * from jobtb";
            rs=st.executeQuery(Sql);
            while(rs.next())
            
                aid=rs.getInt("Jobid");
                add=aid+1;
                String aid1=Integer.toString(add);
            
            %>
         <form action="jobrecord.jsp" method="post" name="f2" onsubmit="">
            
                    <table width="710px" cellpadding="10px" style="margin: auto; ">
                        <tr>
                            <td> Job Id</td>
                            <td><input type="text" name="jobid" value="<%=aid1%>" size="20" readonly="" /> </td>
                                                           
                        </tr>
           
                    <tr>
                        <td>Department Name :</td>
                        <td><input type="text" name="deptname" value="" size="20"  autofocus/> </td>

                        <td>Post Name : </td>
                        <td><input type="text" name="postname" value="" size="20"  /> </td> 
                    
                    </tr>
                    
                    <tr>
                        <td>Location :</td>
                        <td><input type="text" name="loc" value="" size="20"  /></td> 
                         <td>Experience :</td>
                        <td><input type="text" name="exp" value="" size="20" /></td> 
                                          
                    </tr>
                    
                     <tr>
                        <td>Date of Posted :</td>
                        <td><input type="text" name="dop" value="" size="20"  placeholder="DD/MM/YYYY"/></td> 
                        <td>Key Skill : </td>
                        <td><input type="text" name="key" value="" size="20"  /></td> 
                    
                    </tr>
                     <tr>
                        <td>Salary :</td>
                        <td><input type="text" name="salary" value="" size="20" /></td>
                         <td></td>
                         <td></td> 
                       
                    </tr>
                     <%   
            
                
                 String Sql1="Select ID from registertb where Email='"+un+"'";
                 rs=st.executeQuery(Sql1);
                 while(rs.next())
                      cid=rs.getInt(1);
            
                 
                 String Sql2="Select Company_Name,Address from recruiterdetailtb where ID='"+cid+"'";
                 rs=st.executeQuery(Sql2);
                 while(rs.next())
                 {
                      cnn=rs.getString(1);
                      cnn1=rs.getString(2);
                 }
                 %>
                
                 
                     <tr>
                        <td>Company Name :</td>
                        <td><input type="text" name="cn" value="<%= cnn %>" size="20" readonly/></td>
                       
                        <td>Address : </td>
                        <td><input type="text" name="add" value="<%= cnn1 %>" size="20" readonly /></td> 
                        <%
                }
                catch(Exception e)
             {
                 out.println(e);
             }
            
             %>
                    </tr>
                    <tr>
                        <td>Education Required : </td>
                        <td><input type="text" name="edu" value="" size="20"  />    </td>
                        <td>Job Status : </td>
                        <td><select name="jstatus" size="1" >
                                <option>Open</option>
                              </select>   </td>
                    </tr>
                    
                   
                    <tr>
                        <td> </td>
                        <td></td>
                        <td><input type="submit" value="SUBMIT" name="save" /></td>
                        <td><input type="reset" value="RESET" name="reset" /></td>
                       
                    </tr>
                </table>
                </form>
    </body>
</html>
