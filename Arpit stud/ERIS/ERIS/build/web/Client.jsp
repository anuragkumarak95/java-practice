<%-- 
    Document   : Admin
    Created on : May 8, 2014, 11:03:22 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recruiter Panel</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    </head>
    <body>
        <div id="header">
			<div id="logo">
				<a href="index.html"><img src="images/logo1.jpg" alt="" /></a>			
			</div>		
			<ul>
                           
                                <li><a href="Addvacancy.jsp" target="add" ><span>Add Vacancy</span></a></li>
                                <li><a href="result.jsp" target="add" ><span>Add Result</span></a></li>
                                <li><a href="clientinterviewlist.jsp" target="add" ><span>Interview List</span></a></li>
                                <li><a href="vacancylist.jsp" target="add" ><span>Vacancy List</span></a></li>
				<li><a href="logout.jsp"><span>Logout</span></a></li>	
                                	
			</ul>
	</div>
	<div id="body">
		<div class="products">
                    <div>
                           
                                <h1>Welcome : <%= session.getAttribute("UName")  %></h1> 
                     </div>
                                        
                    <div>
                        <iframe src="photoiframe.jsp"  name="add" width="930px" height="450px" scrolling="Yes" >
                        
                                                                        
                                </iframe>	
                      
                        
                    </div>    

                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </div>
	</div>
               
	
		<div id="footer">
			<div>
				<div>
					<h3>america</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>		
				<div>
					<h3>europe</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					<h3>canada</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					<h3>middle east</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					
				</div>	
			</div>
			<div>
				<p>&copy Copyright 2014. All rights reserved</p>
			</div>
		</div>
    </body>
</html>
