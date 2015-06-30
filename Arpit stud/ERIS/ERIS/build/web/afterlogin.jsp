
<html>
<head>
<meta charset="utf-8" />
<title>Applicant View</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />

</head>
<body>
    
    <div id="submenu">
                 <ul>
                     <li><a href="resume.jsp" target="add" ><span>View Profile</span></a></li>
                     <li><a href="interviewreport.jsp" target="add" ><span>My Interview</span></a></li>                               	
                                	
			</ul>       
                        
              </div>
	<div id="header">
			<div id="logo">
				<a href="index.html"><img src="images/logo1.jpg" alt="" /></a>			
			</div>		
			<ul>
                                <li><a href="addprofile.jsp" target="add"><span>Add Profile</span></a></li>
                                <li><a href="oneupdate.jsp" target="add"><span>Update Profile</span></a></li>
                                <li><a href="jobreport.jsp" target="add"><span>Jobs</span></a></li>
                                <li><a href="resultreport.jsp" target="add"><span>Result</span></a></li>
				<li><a href="logout.jsp"><span>Logout</span></a></li>	
                                	
			</ul>
	</div>
	<div id="body">
		<div class="products">
                    <div>
                           
                                <h1>Welcome : <%= session.getAttribute("UName")%></h1> 
                     </div>
                                        
                    <div>
                        <iframe src="photoiframe.jsp" name="add" width="95%" height="100%" scrolling="Yes" >
                                                                        
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