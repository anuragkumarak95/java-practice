<%-- 
    Document   : addprofile
    Created on : May 7, 2014, 3:37:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Detail</title>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
        <%
            try
        {
            
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
            int aid=0,add;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            String Sql="Select * from resulttb";
            rs=st.executeQuery(Sql);
            while(rs.next())
            
                aid=rs.getInt("SrNo");
                add=aid+1;
                String aid1=Integer.toString(add);
            
            %>
         <form action="resultrecord.jsp" method="post" name="f2" onsubmit="">
            
                    <table width="710px" cellpadding="10px" style="margin: auto; ">
                        <tr>
                            <td> SrNo </td>
                            <td><input type="text" name="sno" value="<%=aid1%>" size="20" readonly /> </td>
                            <td>Job Status : </td>
                            <td><select name="jstatus" size="1" >
                                <option>Closed</option>
                                <option>Open</option>
                              </select>   </td>
                        </tr>
                        <%   
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            
            
            %>
                        <tr>
                            <td> Job Id</td>
                            <td><input type="text" name="jobid" value="" size="20" autofocus /> </td>
                            <td> Applicant Id</td>
                            <td><input type="text" name="appid" value="" size="20" /> </td>                              
                        </tr>
           
                    <tr>
                        <td>Applicant Name :</td>
                        <td><input type="text" name="appname" value="" size="20"  /> </td>

                        <td>Applicant Status : </td>
                            <td><select name="jstatus1" size="1" >
                                <option>Selected</option>
                                <option>Not Selected</option>
                              </select>   </td>
                    
                    </tr>
                    
                    <tr>
                        <td>Salary :</td>
                        <td><input type="text" name="salary" value="" size="20"  /></td> 
                         <td>Joining Date :</td>
                         <td><input type="text" name="doj" value="" size="20"  placeholder="DD/MM/YYYY"/></td> 
                                          
                    </tr>
                    
                                     
                    <tr>
                        
                        <td></td>
                        <td></td>
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
