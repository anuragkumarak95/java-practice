<%-- 
    Document   : addprofile
    Created on : May 7, 2014, 3:37:43 PM
    Author     : Admin
--%>  <%--<td><input type="text" name="work" value="" size="20"  pattern="[0-9]{10}" title="Please input 10 Digit Number" placeholder="9040503223"/></td> --%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Profile</title>
        <script src="newcon.js" type="text/javascript" lang="javascript"></script>
    </head>
    <body>
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
            String Sql="Select * from applicanttb";
            rs=st.executeQuery(Sql);
            while(rs.next())
            
                aid=rs.getInt("AppID");
                add=aid+1;
                String aid1=Integer.toString(add);
            
            %>
         <form action="applrecord.jsp" method="post" name="form2" onsubmit="return profile()">
            
                    <table width="710px" cellpadding="10px" style="margin: auto; ">
                        <tr>
                            <td> Applicant Id</td>
                            <td><input type="text" name="appid" value="<%=aid1%>" size="20" readonly /> </td>
                                                           
                        </tr>
            <%   
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            
            
            %>
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" name="firstname" value="" size="20" required="required" placeholder="First Name" autofocus/> </td>

                        <td>Last  Name : </td>
                        <td><input type="text" name="lastname" value="" size="20" placeholder="Last Name" required="required"/> </td> 
                    
                    </tr>
                    
                    <tr>
                        <td>Current Location :</td>
                        <td><input type="text" name="cl" value="" size="20"  placeholder="State Name" required="required"/></td> 
                         <td>City :</td>
                        <td><input type="text" name="city" value="" size="20"  placeholder="City Name" required="required"/></td> 
                                          
                    </tr>
                    
                                  
                    <tr>
                        <td>Date of Birth :</td>
                        <td><input type="text" name="dob" value="" size="20"  placeholder="DD/MM/YYYY" required="required"/></td> 
                        <td>Gender : </td>
                        <td>Male<input type="radio" name="male" value="MALE" required/>Female<input type="radio" name="male" value="Female" required="required" /></td> 
                    
                    </tr>
                     <tr>
                        <td>Mobile :</td>
                        <td><input type="text" name="mobile" value="" size="20" placeholder="00000000" required="required"/></td>
                         <td>Marital Status : </td>
                        <td>Single<input type="radio" name="status" value="Single" required />Married<input type="radio" required="required" name="status" value="Married" /></td>
                       
                    </tr>
                    <tr>
                        <td>Email : </td>
                        <td><input type="text" name="email" value="" size="20" placeholder="xyz@gmail.com" required="required" />    </td>
                        <td>State :</td>
                        <td>
                            <select name="state" style=" width: 100px" required="required">
                            <option>Haryana</option>
                            <option>Rajasthan</option>
                            <option>UP</option>
                            <option>J&K</option>
                            <option>Bihar</option>
                            <option>Madhya Pradesh</option>
                            <option>Uttarakhand</option>
                            <option>Maharashtra</option>
                            <option>Andhra Pradesh</option>
                            <option>Arunachal Pradesh</option>
                            <option>Assam</option>
                            <option>Chhattisgarh</option>
                            <option>Goa</option>
                            <option>Gujarat</option>
                            <option>Himachal Pradesh</option>
                            <option>Jharkhand</option>
                            <option>Karnataka</option>
                            <option>Kerala</option>
                            <option>Manipur</option>
                            <option>Meghalaya</option>
                            <option>Mizoram</option>
                            <option>Nagaland</option>
                            <option>Odisha</option>
                            <option>Punjab</option>
                            <option>Sikkim</option>
                            <option>TamilNadu</option>
                            <option>Tripura</option>
                            <option>West Bengal</option>
                            
                            </select>
                        </td>                 
                    </tr>
                    
                    <tr>
                        <td>Pincode : </td>
                        <td><input type="text" name="pincode" value="" size="20" placeholder="Pincode"  pattern="[0-9]{6}" title="Input 6 Digit Only"/>    </td>
                        <td>Permanent Address:</td>
                        <td><textarea name="address" rows="4" cols="20" required="required" ></textarea></td>
                                           
                    </tr>
                   
                     <tr>
                        <td>Basic/Graduation: </td>
                        <td><input type="text" name="basic" value="" size="20" placeholder="BA"  />    </td>
                        <td>Degree Type:</td>
                        <td><input type="text" name="dt" value="" size="20"  placeholder="Regular"/></td>
                                           
                    </tr>
                     <tr>
                        <td>University/Institute: </td>
                        <td><input type="text" name="uni" value="" size="20" placeholder="MD University"/>    </td>
                        <td>Year</td>
                        <td><input type="text" name="pyear" value="" size="20"  placeholder="2009"/></td>
                                           
                    </tr>
                    <tr>
                         <td>----------------</td>
                        <td>-----------------</td>
                        <td>-----------------</td>
                        <td>-----------------</td>
                        
                        
                    </tr>
                    <tr>
                        <td>Post Graduation: </td>
                        <td><input type="text" name="pg" value="" size="20" placeholder="MBA" />    </td>
                        <td>Degree Type:</td>
                        <td><input type="text" name="dt1" value="" size="20"  placeholder="Regular"/></td>
                                           
                    </tr>
                     <tr>
                        <td>University/Institute: </td>
                        <td><input type="text" name="uni1" value="" size="20" placeholder="Delhi University" />    </td>
                        <td>Year</td>
                        <td><input type="text" name="year1" value="" size="20"  placeholder="2014"/></td>
                                           
                    </tr>
                                        
                    <tr>
                        <td>Objective </td>
                        <td><textarea name="obj" rows="4" cols="20" required="required" placeholder="Obtain a position at Company where I can maximize my management skills, quality assurance, program development, and training experience." ></textarea></td>
                        <td></td>
                        <td></td>
                    </tr>
                   
                    <tr>
                        <td>Preferred Location : </td>
                        <td><input type="text" name="pl" value="" size="20"  placeholder="City Name"/></td> 
                        <td>Total Experience : </td>
                        <td><input type="text" name="te" value="" size="20"  placeholder="1 Year"/></td> 
                                              
                    </tr>
                    <tr>
                        <td>Current Company : </td>
                        <td><input type="text" name="cc" value="" size="20"  placeholder="Company Name"/></td> 
                        <td>Current Designation : </td>
                        <td><input type="text" name="cd" value="" size="20"  placeholder="Executive"/></td> 
                                              
                    </tr>
                     <tr>
                        <td>Functional Area : </td>
                        <td><input type="text" name="fa" value="" size="20"  placeholder="HR" required="required"/></td> 
                        <td>Role : </td>
                        <td><input type="text" name="role" value="" size="20"  placeholder="Salary Management" required="required"/></td> 
                                              
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
