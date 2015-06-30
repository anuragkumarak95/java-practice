<%-- 
    Document   : addprofile
    Created on : May 7, 2014, 3:37:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Master Entry Jobs</title>
    </head>
    <body>
        <br>
        <br>
         <form action="#" method="post" name="f2" onsubmit="">
            
                    <table width="710px" cellpadding="10px" style="margin: auto; ">
                        <tr>
                            <td> Job Id</td>
                            <td><input type="text" name="jobid" value="" size="20" /> </td>
                                                           
                        </tr>
           
                    <tr>
                        <td>Company Name :</td>
                        <td><input type="text" name="compname" value="" size="20"  autofocus/> </td>

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
                       
                        <%--<td><input type="text" name="work" value="" size="20"  pattern="[0-9]{10}" title="Please input 10 Digit Number" placeholder="9040503223"/></td> --%>
                        
                    
                    </tr>
                 
                    <tr>
                        <td>Date of Posted :</td>
                        <td><input type="text" name="dob" value="" size="5"  placeholder="DD/MM"/><input type="text" name="year" value="" size="5"  placeholder="yyyy"/></td> 
                        <td>Key Skill : </td>
                        <td><input type="text" name="key" value="" size="20"  /></td> 
                    
                    </tr>
                     <tr>
                        <td>Salary :</td>
                        <td><input type="text" name="salary" value="" size="20" /></td>
                         <td>Company Address : </td>
                         <td><input type="text" name="add" value="" size="30" /></td> 
                       
                    </tr>
                    <tr>
                        <td>Education Required : </td>
                        <td><input type="text" name="edu" value="" size="20"  />    </td>
                       
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
