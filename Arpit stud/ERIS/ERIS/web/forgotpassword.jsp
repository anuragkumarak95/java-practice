
<html>
<head>
<meta charset="utf-8" />
<title>Login/Registration</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<script src="newcon.js" type="text/javascript" lang="javascript"></script>
</head>
<body>
	<div id="header">
			<div id="logo">
				<a href="index.html"><img src="images/logo1.jpg" alt="" /></a>			
			</div>		
			
	</div>
	<div id="body">
		<div class="products">
                    <div style=" width: 50%;">
                        <form  action="updatepassword.jsp" autocomplete="on" name="form1" id="form1" onsubmit="return validation()"> 
                                <h1>Forgot Password </h1> 
                                <br>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Enter Your Email</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="username" name="email1" required="required" type="text" placeholder="xyz@gmail.com "/>
                                </p>
                                <br>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Enter New Password </label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="password" name="pw" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <br>
                               
                                <br>
                                <br>
                                
                                <p class="login button"> 
                                    <input type="submit" value="Change" onclick="alert('Password has been successfully changed')"/> 
                                    &nbsp;&nbsp;&nbsp;<input type="button" value="Cancel" onclick="window.location.href='Login.jsp';"/> 
				</p>
                                <br>
                                
                            </form>
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