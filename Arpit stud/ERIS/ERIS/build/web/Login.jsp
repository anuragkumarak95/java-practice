
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
			<ul>
				<li><a href="index.html"><span>home</span></a></li>
				<li><a href="about.html"><span>about us</span></a></li>
				<li><a href="services.html"><span>services</span></a></li>
				<li class="selected"><a href="Login.jsp"><span>Login</span></a></li>
				<li><a href="contact.html"><span>contact us</span></a></li>			
			</ul>
	</div>
	<div id="body">
		<div class="products">
                    <div style=" width: 30%; position:  absolute">
                        <form  action="logincheck.jsp" autocomplete="on" name="form1" id="form1" onsubmit="return validation()"> 
                                <h1>Sign in</h1> 
                                <br>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Enter Your Email</label> &nbsp;&nbsp;&nbsp;
                                    <input id="username" name="email1" required="required" type="text" placeholder="xyz@gmail.com "/>
                                </p>
                                <br>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Enter Password </label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="password" name="pw" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <br>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> User Type </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <select name="usert">
                                        <option>Admin</option>
                                        <option>Applicant</option>
                                        <option>Recruiter</option>
                                    </select> 
                                </p>
                                <br>
                                <br>
                                
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="forgotpassword.jsp"><u>Forget Password</u></a>
				</p>
                                <br>
                                <h5>If not a member ,Please Register</h5>
                            </form>
                        </div>
                         <div style=" width: 50%; margin-left: 70%">
                             <form  action="insert.jsp"  name="form2" id="form2" onsubmit="return validation1()"> 
                                <h1>Register Here</h1> 
                                <br>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Enter Your Name </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  name="username" required="required" type="text" placeholder="myusername"/>
                                </p>
                                 <br>
                                <p> 
                                    <label for="password" class="youemail" data-icon="p"> Enter Your Email </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  name="email" required="required" type="text" placeholder="xyz@gmail.com"/>
                                </p>
                                <br>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Enter Your Password </label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                               
                                <br>
                                <p> 
                                    <label for="username" class="cont" data-icon="u" > Enter Contact Number </label> &nbsp;&nbsp;
                                    <input  name="contact" required="required" type="number" placeholder="9999586875"/>
                                </p>
                                <br>
                                <p> 
                                    <label for="username" class="gend" data-icon="u" > Gender </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label> Male</label><input type="radio" name="gender" value="Male"  required="required"/>&nbsp;&nbsp;<label> Female</label><input type="radio" name="gender" value="Female" />
                                </p>
                                <br>
                                <p> 
                                    <label for="username" class="gend" data-icon="u" >User Type</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label> Recruiter</label><input type="radio" name="utype" value="Recruiter"  required="required" onclick="showdetail()"/>&nbsp;&nbsp;<label> Applicant</label><input type="radio" name="utype" value="Applicant" onclick="hidedetail()"/>
                                </p>
                                <br>
                                    <p id="first" style="display: none">
                                        <label> Enter Company Name </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input  name="cn" type="text" size="20" placeholder="XYZ INDIA "/>
                                    </p>
                                    <br>

                                    <p id="sec" style="display: none">
                                        <label> Enter Company Address </label> &nbsp;&nbsp;
                                        <input  name="ca" type="text" size="20" placeholder="near by this village/city " />
                                    </p>
                                    <br>

                                    <p id="last" style="display: none">
                                        <label> Enter Designation </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input  name="desig" type="text" size="20" placeholder="HR Executive " />
                                    </p>
                                <br>
                                <br>
                                
                                <p class="login button"> 
                                    <input type="submit" value="Register" /> &nbsp;&nbsp;&nbsp; <input type="reset" value="Reset" /> 
				</p>
                                
                            </form>
                        </div>
                        </div>

                        						
                    </div>
               
	
		<div id="footer">
			<div>
				<div>
					<h3>Gurgaon</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>		
				<div>
					<h3>New Delhi</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					<h3>Mumbai</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					<h3>Jaipur</h3>
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