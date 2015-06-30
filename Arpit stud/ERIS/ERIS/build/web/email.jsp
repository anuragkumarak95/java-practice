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
        <br><div>
         <form action="sendemail.jsp" method="post" >
             <img src="images/mailpic.jpg" alt="No Image" width="300" height="200"/>
                 
             <br><br><br><br><br>
                    <table width="710px" cellpadding="10px" style="margin: auto; ">
                        <tr>
                            <td></td>
                            <td> To</td>
                            <td><input type="text" name="toadd" value="" size="20" /> </td>
                        </tr>                                   
                             
                        <tr>
                            <td></td>
                        <td>Subject :</td>
                        <td><input type="text" name="subject" value="" size="20"  autofocus/> </td>
                        </tr>
                        <tr>
                            <td></td>
                        <td>Message : </td>
                        <td> <textarea name="desc" rows="6" cols="50">
                            </textarea></td> 
                        </tr>
                    
                    
                              
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Send" name="save" /></td>
                        
                       
                    </tr>
                </table>
                </form>
        </div>
    </body>
</html>
