

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.* "%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
    </head>
    <body>
      
         <form action="oneupdate.jsp" method="post" name="form2" onsubmit="oneupdate.jsp">
                   <table width="710px" cellpadding="10px" style="margin: auto; ">
                        <tr>
                            <td> Enter Applicant Id</td>
                            <td><input type="text" name="appid" value="" size="20" /> </td>
                            <td><input type="submit" value="Search" name="search" /></td>
                            <td></td>
                        </tr>
                    </table>
         </form> 
        
                       
    </body>
</html>
