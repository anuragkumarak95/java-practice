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
        <title>Master Entry Interview</title>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
         <form action="interview.jsp" method="post" name="f2" onsubmit="">
            
                    <table width="710px" cellpadding="10px" style="margin: auto; ">
                        <tr>
                            <td> Job Id</td>
                            <td><input type="text" name="jobid" value="" size="20"  autofocus/> </td>
                            <td> Applicant Id</td>
                            <td><input type="text" name="appid" value="" size="20" /> </td>                             
                        </tr>
           
                    <tr>
                        <td>Company Name :</td>
                        <td><input type="text" name="compname" value="" size="20"  /> </td>

                        <td>Post Name : </td>
                        <td><input type="text" name="postname" value="" size="20"  /> </td> 
                    
                    </tr>
                    
                    <tr>
                        <td>Applicant Name:</td>
                        <td><input type="text" name="appname" value="" size="20"  /></td> 
                         <td>Interview Location :</td>
                        <td><input type="text" name="loc" value="" size="30" /></td> 
                                          
                    </tr>
                    
                  
                    <tr>
                        <td>Date of Interview :</td>
                        <td><input type="text" name="doi" value="" size="20"  placeholder="DD/MM/YYYY"/></td> 
                        <td>Time : </td>
                        <td><input type="text" name="time" value="" size="20" placeholder="10:20"  /></td> 
                    
                    </tr>
                                        
                    <tr>
                        <td> </td>
                        <td></td>
                        <td></td>
                        <td></td>
                       
                    </tr>
                    <tr>
                        <td> </td>
                        <td></td>
                        <td><input type="submit" value="SUBMIT" name="save"  onclick="alert('Record Submitted')"/></td>
                        <td><input type="reset" value="RESET" name="reset" /></td>
                       
                    </tr>
                </table>
                </form>
    </body>
</html>
