<%@page import="java.sql.*" %>
<!-- <%@include file="database.jsp"%> -->
<%

class User {
    
	//DB objDatabase=new DB();
    public void addUser(String UserID,String Password,String Fname,String Sname,String Role,String Email,String DOB,String Designation,String Department) {
        try { 
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            st.executeUpdate("insert into users values('"+UserID+"','"+Fname+"','"+Sname+"','"+Password+"','"+Email+"','"+Designation+"','"+Department+"','"+DOB+"','"+Role+"',null,null,null)");
	    	st.close();
	    	con.close();
		}
        catch(Exception e) {
	    System.out.println(e.getMessage());
		}
    }
     
    public String checkLogin(String UserID, String Password) {
                
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            //String sql = "Select * from users where UserID='"+UserID+"' and Password='"+Password+"'"";
            ResultSet rs=st.executeQuery("Select * from users where UserID='"+UserID+"' and Password='"+Password+"'");
            rs.next();
            String Role=rs.getString("Role");
            st.close();
            con.close();
			return Role;
		}
		catch(Exception e) {
            System.out.println(e.getMessage());
        }
     
      return "";
    }

    public ResultSet getAllUsers() {
	
        ResultSet rs=null;
	try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            rs=st.executeQuery("Select * from users");
            return rs;
	}
	catch(Exception e) {
	    return rs;
	}
    }

    public ResultSet getAllCourses() {
	ResultSet rs=null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
	    Statement st=con.createStatement();
            rs=st.executeQuery("Select * from courses");
	    return rs;
	}
	catch(Exception e) {
	    return rs;
	}   
    }

   public ResultSet getUser(String userID) {
	ResultSet rs=null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            rs=st.executeQuery("Select * from users where userid='"+userID+"'");
	    return rs;
        }
	catch(Exception e) {
	    return rs;
	}
  }

   public void setPassword(String Password,String userID) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            st.executeQuery("update users set password='"+Password+"' where userid='"+userID+"'");
	    st.close();
	    con.close();
        }
        catch(Exception e) {
	    System.out.println(e.getMessage());
	}
   }


   public void setUser(String userID,String Fname,String Sname,String Email,String Designation ,String Department,String DOB,String Role) {
       try {
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
	   Statement st=con.createStatement();
           st.executeQuery("update users set Fname='"+Fname+"' , Sname='"+Sname+"' , Email='"+Email+"' ,designation='"+Designation+"', department='"+Department+"',dob='"+DOB+"',role='"+Role+"' where userid='"+userID+"'");  
	   st.close();
	   con.close();
       }	   
       catch(Exception e) {
	   System.out.println(e.getMessage());
       }
  }

  public void assignCourse(String CourseID,String UserID) {
	try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            st.executeQuery("insert into course_user_map values('"+CourseID+"','"+UserID+"')");
            st.close();
            con.close();
        }
        catch(Exception e) {
	    System.out.println(e.getMessage());
	}
  }

        
  public void unassignCourse(String CourseID,String UserID) {
	try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            st.executeQuery("delete from course_user_map where userid='"+UserID+"' and courseid='"+CourseID+"'");
            st.close();
            con.close();
	}
	catch(Exception e) {
	    System.out.println(e.getMessage());
	}
  }

  public ResultSet getRegisteredCourses(String UserId) {
	ResultSet rs=null;
	try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
            Statement st=con.createStatement();
            rs=st.executeQuery("select * from courses where name in(select courseid from course_user_map where userid='"+UserId+"')");
            return rs;
        }
        catch(Exception e) {
            return rs;
        }
  }


  public ResultSet getSecurity(String UserId) {
	ResultSet rs=null;
	try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
	    Statement st=con.createStatement();
            rs=st.executeQuery("select securityquestion,securityanswer from users where userid='"+UserId+"' ");
	    return rs;
        }
        catch(Exception e) {
	    return rs;
        }
  }

  public void setSecurity(String UserId,String securityquestion,String securityanswer) {
       try {
    	   
    	   
    	   char tempature_rise[][]={"opps increase in temperature.",
    			"Last day of Spring, ripe purple plums drop-- form is emptiness. First day of Summer, ditch completely dry-- emptiness is form.",
    			"get your acc temperature degrees.",
    			"guys ready to open up your colurs button open.",
    			"start wearing the shorts.",
    			"get your summer kits ready.",
    			"lets go out for a colddrink.",
    			"let us drink lots of water.",
    			"we going to be hot.",
    			"let us start to be indoor.",
    			"stop runing around do your work from one  place .",
    		   	"its going to be very hot.",
    			"garmi badh rahal ba.",
    			"garmiya badh rahalau ha.",
    			"garmiya badh rahal chai.",
    			"daheya garmia gai.",
    			"daheya dheepe laga.",
    			"para high ho rahal chai.",
    			"your blood temperature is going to increase.",
    			"temp. badh rahal bata.",
    			"raur ka ab garmi bhujhai.",
    			"hum kha chia ki garmi badh rahalau ha.",
    			"haule haule garmi hoga.",
    			"haule haule garmi badha ta.",
    			"dhere dhere garmi ho raha hai.",
    			"dhere dhere garmi sar ka upar hoga.",
    			"baby becarefull you are going to face the heat.",
    			"get ready guys for increase in temperature.",
    			"guys you will be seeing the increasment in temperature.",
    			"get read to eat ice cream.",
    			"lets start dringing lassi on increasment of temperature.",
    			"lets drink the punjabi lassi.",
    			"babu temperature badh raha ahi.",
    			"its going to makes us feel hot.",
    			"your are going to sweat.",
    			"sun is going to climb on our head.",
    			"sun is going to makes us mad.",
    			"tum ko garmi laga ga ab.",
    			"get ready to face the heat.",
    			"your mouth will start be dry.",
    			"start to wear t-shirts.",
    			"garmi badh raha hai bhar mut jao.",
    			"start to walk under umberala.",
    			"be carefull of getting skin burn.",
    			"you will become more black .",
    			"tumhe garmi lagegi.",
    			"lets strat sitting undeer the shed.",
    			"start drinking gluecose.",
    			"tapti garmi hona wala hai.",
    			"start wearing light cloths.",
    			"you will need a hanky as you are going to sweat.",
    			"start carring a water bottel.",
    			"we need to be under the fan .",
    			"we should start to use sun burn cream.",
    			"start drinking chilled drinks.",
    			"guys lets go for swimming.",
    			"you are going to loose water from your body.",
    			"start feeling the warmth of the atmosphere.",
    			"its hot outside!.",
    			"its going to be long hot summer.",
    			"summer hot days.",
    			"tanned skin.",
    			"summer in.",
    			"hot guys.",
    			"lazy day.",
    			"every summer has is own story.",
    			"going to loose calories.",
    			"water fight.",
    			"beachy hair style.",
    			"I'm not coming out til it cools.",
    			"the weather is like the goverment, always in the wrong.",
    			"I'm glad its finally hot enough to complain about how hot it is.",
    			"hot weather.",
    			"what dreadful hot weather we have ! it keeps me in a continual state of intelegance.",
    			"O God its becoming hot.",
    			"it seems we are going to get fried.",
    			"God is too hot.",
    			"this kind of heat would fry us.",
    			"it seems we are sitting beside a charcoal fire.",
    			"ice is most welcome in a cold drink on a hot day.",
    			"the streets are getting heated up.",
    			"it's pretty hot ,isn't it?.",
    			"we are going to face heatwave.",
    			"its too sunny day.",
    			"its sunny today, isn't it?",
    			"its going to be absolutely boiling day.",
    			"stop being close to girls as they are hot.you will be burnt be aware.",
    			"the is going to climb upon us guys.",
    			"its going to be so hot that that every guy is going to sweat.",
    			"its time to start smelling.",
    			"how hot it will make us?",
    			"its going to be very sucking day.",
    			"start openig the windows for the breeze.",
    			"especially girls you are going to become more hot .",
    			"every normal human is going to sweat.",
    			"so sweating day its going to be.",
    			"start ought to take more salt so make up the loss.",
    			"we are going to get risk of getting hot.",
    			"its going to make us feel drousy.",
    			"What good is the warmth of summer, without the cold of winter to give it sweetness. - hari .s" , 
    			"It\'s a sure sign of summer if the chair gets up when you do. - anurag.k", 
    			"Summer afternoon—summer afternoon; to me those have always been the two most beautiful words in the English language. - Hari.s" ,
    			"Each fairy breath of summer, as it blows with loveliness, inspires the blushing rose.", 
    			"What Good Is The Warmth Of Summer, Without The Cold Of Winter To Give It Sweetness.",
    			"A perfect summer day is when the sun is shining, the breeze is blowing, the birds are singing, and the lawn mower is broken." , 
    			"been wiped clean by summer." ,
    			"Summer will end soon enough, and childhood as well." , 
    			"Summer has set in with its usual severity." , 
    			"I drifted into a summer-nap under the hot shade of serenaded by a cicadae lullaby, to drowsy-warm dreams of distant thunder." , 
    			"One must maintain a little bittle of summer, even in the middle of winter." , 	
    			"A life without love is like a year without summer. - hari.s" , 
    			"Summer-induced stupidity. That was the diagnosis, I decided as I made my way up the dirt path in the pouring rain. - hari.s" ,
    			"People don\'t notice whether it\'s winter or summer when they\'re happy." ,
    			"it\'s a smile, it\'s a kiss, it\'s a sip of wine … it\'s summertime!.",
    			"It was June, and the world smelled of roses. The sunshine was like powdered gold over the grassy hillside.",
    			"It ain\'t the heat, it\'s the humility.",
    			"The summer night is like a perfection of thought.",
    			"Summertime is always the best of what might be.",
    			"In summer, the song sings itself.",
    			"Winter was nothing but a season of snow; spring, allergies; and summer…It was the worst. That was swimsuit season.",
    			"Heat, ma\'am!\' I said; \'it was so dreadful here, that I found there was nothing left for it but to take off my flesh and sit in my bones.",
    			"A lot of parents pack up their troubles and send them off to summer camp.",
    			"One benefit of summer was that each day we had more light to read by.",
    			"Rest is not idleness, and to lie sometimes on the grass under the trees on a summer\'s day, listening to the murmur of water, or watching the clouds float across the blue sky, is by no means waste of time.", 
    			"What is one to say about June, the time of perfect young summer, the fulfillment of the promise of the earlier months, and with as yet no sign to remind one that its fresh young beauty will ever fade.",
    			"But in summer, welcoming summer, the rocks are soft-fledged with moss. The forest floor is bouncy with fresh shoots and enthusiastic blooms; the twisted angles of the branches are laced by bud and leaf. - Tara O’Brady",
    			"Deep summer is when laziness finds respectability. - Sam Keen",
    			"Oh, those warm days of stumbling words; blinded eyes, embracing in sweet slow dances and sipping courage from a bottle for sneaking kisses. - Kellie Elmore", 
    			"Summer is a promissory note signed in June, its long days spent and gone before you know it, and due to be repaid next January. - Hal Borland", 
    			"Some Of The Best Memories Are Made In Flip Flops.",
    			"August rain: the best of the summer gone, and the new fall not yet born. The odd uneven time. - Sylvia Plath", 
    			"And so with the sunshine and the great bursts of leaves growing on the trees, just as things grow in fast movies, I had that familiar conviction that life was beginning over again with the summer. - F. Scott Fitzgeral", 
    			"Some of the best memories are made in flip flops. - Kellie Elmore", 
    			"It\'s a cruel season that makes you get ready for bed while it’s light out. - Bill Watterson", 
    			"I almost wish we were butterflies and liv’d but three summer days — three such days with you I could fill with more delight than fifty common years could ever contain. - hari.s",
    			"The end-of-summer winds make people restless. - Sebastian Faulks", 
    			"Rejoice as summer should…chase away sorrows by living. - Melissa Marr", 
    			"Schools Out, Summers In, Let The Drama Stop And The Fun Begin.",
    			"There is something deep within us that sobs at endings. Why, God, does everything have to end? Why does all nature grow old? Why do spring and summer have to go? - Joe Wheeler" , 
    			"It’s summer and time for wandering… - Kellie Elmore", 
    			"The summer sun was not meant for boys like me. Boys like me belonged to the rain. - Benjamin Alire Sáenz", 
    			"If it could only be like this always — always summer, always alone, the fruit always ripe. - Evelyn Waugh", 
    			"A man says a lot of things in summer he doesn’t mean in winter. - Patricia Briggs", 
    			"Sand And Sun, Summer Has Begun.",
    			"If you saw a heat wave, would you wave back? - Steven Wright", 
    			"Being a child at home alone in the summer is a high-risk occupation. If you call your mother at work thirteen times an hour, she can hurt you. - Erma Bombeck", 
    			"The coldest winter I ever spent was a summer in San Francisco.", 
    			"Heat, ma’am! it was so dreadful here, that I found there was nothing left for it but to take off my flesh and sit in my bones. - Sydney Smith, Lady Holland’s Memoir", 
    			"Watching the summer close is like watching a good kid die for no apparent reason. - Darnell Lamont Walker", 
    			"My old grandmother always used to say, Summer friends will melt away like summer snows, but winter friends are friends forever. - George R.R. Martin", 
    			"Love is to the heart what the summer is to the farmer’s year — it brings to harvest all the loveliest flowers of the soul.",
    			"the atmosphere of summer.",
    			"The days draw out, the weather gets warmer, and it’s what we call summer, with a bitter laugh when we’ve said it. - Stan Barstow",
    			"Ah, summer, what power you have to make us suffer and like it. - Russell Baker", 
    			"Summer Slogan – Hot and Moist.",
    			 "Sandy Toes, Sunburned Nose, Summer Is A Blast, The Memories Will Always Last.",
    			"It's A Sure Sign Of Summer If The Chair Gets Up When You Do. - Walter Winchell",  
    			 "Be Sure Not To Fizzle When The Summer Starts To Sizzle.",
    			 "Summertime Is Just Memories Waiting To Happen.",
    			 "Summer Is..Bikinis, Towels, Soaking Up The Sun, Oceans, Beaches, Just Having Fun.",
    			 "Summer Fun Has Begun. - hari.s",
    			 "Hear The Fish Swish, Swish, Swish, Summer At The Beach Is My Wish.",
    			 "Sand And Sun, Summer Has Begun.",
    			"A Perfect Summer Day Is When The Sun Is Shining, The Breeze Is Blowing, The Birds Are Singing, And The Lawn Mower Is Broken. - James Dent.", 
    			 "Summer Love, Midnight Kisses. Shooting Stars. Secret Wishes.",
    			 "Summer Is..Hot Guys, Tanned Skin, School’S OUT, Summer’S IN.",
    			 "Belly Tops, Flip Flops, Late Nights, Water Fights, Summer Fun Has Begun.",
    			 "Schools Out, Summers In, Let The Drama Stop And The Fun Begin.",
    			 "Here Comes The Bright Hot Sun, The Summer Season Has Begun.",
    			 "Summer Is Here, Let’S Give A Big Cheer!.",
    			"It\'S Summer And Time For Wandering.",
    			 "Hot Day, Cool Night, Summertime, What A Delight.",
    			 "Dear, Summer Is Here, Why Do You Fear ,Let’S Have Some Chilled Beer.",
    			 "Summer Is..Lazy Days, Beautiful Nights, Beachy Hair, Water Fights.",
    			 "This Summer Will Be Hot Hot Hot.",
    			 "Splashing Fun In The Sun.",
    			"Dear Garmi.... Plz thori Narmi.. :) .",
    			"Dear sun, I seriously feel u need to chill a bit. . . ! ;) .",
    			"Garmi or bezzati Jitni Mehsoos karoge Utni jyada lagegi .",
    			"Kambal aur Razai ko karo Maaf.. Cooler aur AC kar lo saaf .",
    			"Happy Summer season with Great offers Motay motay machar... Lots of makhi! .",
    			"Hi..... Jaan... Nikal rahi hai garmi se..... ",
    			"I dont make enough money to go on vacation, so I\'m just going to get drunk this weekend until I dont know where I am. ",
    			"college is out for the summer! dont worry college, I WON\'T miss you at all. ",
    			"A lot of parents pack up their troubles and send them off to summer camp. ",
    			"I wonder what the blood alcohol level is of all these mosquitos that keep biting me? ",
    			"Summer vacation: where you drink triple, see double and act single. ",
    			"It's almost Summer! Time to find out what my friends with swimming pools have been up to since last summer... ",
    			"There should be a rule that you can't get your period over the summer. ",
    			"Summer meant watching cartoons all morning, roaming the neighborhood all day and going back home when the streetlights turned on. ",
    			"That awkward moment when you write a super long, heartfelt note in someones yearbook and they write 'Have a Great Summer!! .",
    			"Having fun in the sun, getting laid in the shade, summer's here... ",
    			"A girl in a bikini is like having a loaded pistol on your coffee table theres nothing wrong with them, but its hard to stop thinking about it. ",
    			"Ok summer I'm sorry for bad mouthing you bout being so hot, can you come back?? Its freakin cold .",
    			"Summer is like the ultimate one-night stand...hot as hell, totally thrilling, and gone before you know it. ",
    			"Summer should get a speeding ticket. ",
    			"Smashing in the face of a pinata that resembles Summer Wheatly... ",
    			"Summer is the season when the air pollution is much warmer. ",
    			"Summer is the season when a man thinks he can cook better on an outdoor grill than his wife can on an indoor stove .",
    			"I spent many a summer early morning with the radio very low, half sleeping and half listening.",
    			" Dear Garmi, Plz thori Narmi.. :) Happy Garmi  :).",
    			" Jada garm hone ki jarurat nhi hai, pahle hi garmi bahut hai. :)",
    			" Aam ki khushbu or barish ki bahar, garmi ka mosam ane ko tayar.",
    			" Apne behavior me ab rakhna nrmi mubarak ho aapko happy garmi.",
    			" Garmi or bezzati jitni mehsoos karoge utni jyada lagegi, So be brave and be besharam and enjoy the life…!!.",
    			" Suno gaur se pepsi walon, buri nazar na coke pe dalo, Chahe jitna dew pilalo, sabse aage hoga nimbu pani….!!.",
    			" Kambal or razai ko karo maaf, Coolor or AC ko karo saaf, Ab bina nhaye nhi banegi baat..!! .",
    			"Aaj to sun, sunny leone se bhi hot hai.. ;-) .",
    			" haye re garmi kuch to raham kar.. ",
    			"Dear Garmi,Himmat hai to December me aa naa!! :P.",
    			"Dear Garmi.. Plz thori Narmi.",
    			"Dear sun, I seriously feel u need to chill a bit. . . ! ;)",
    			" Na Muskurane Ko G Chahta H Na Kuch KHANE Pine Sone Ko G Chahta H Ye Garmi Ab BARDAST Nai Hoti Bas Ab to AC LANE Ko G Chahta H.",
    			"Dimaag Par Soraj Ki Aag Mat Parhne Dena Q K BHOOSA JALDI AAG PAKARTA HE Enjoy Summer Season.",
    			"Raat ko neend nhi, subah chain nhi har pal pyas hi pyas he, aag hi aag he kya yhi pyar he? Nhi yar ye to garmi Ki shuruwat hai.HAPPY SUMMER.",
    			" Thought for the day : Garmi or bezzati Jitni Mehsoos karoge Utni jyada lagegi, So be brave & be besharam and enjoy the life.  Think Hatke !!!.",
    			" Happy summer season With Great offers Motay motay machar Lots of makhian & Long time load shedding. enjoy it & Keep crying. HAPPY SUMMER SEASON.",
    			" It is SUMMER,,, 2 birds are doing it 2 beez are doing it 2 butterflies are doing it,,,, SHOULD we also do it? 4get it,,,,,,, HUMANS cant FLY.",
    			"Breathless, we flung us on a windy hill, laughed in the sun, and kissed the lovely grass.",
    			"Celebrate Summer - Sun drenched days and starlit nights...",
    			"Colored scents that fill the air as drowsy insects hum around in the meadow is the place of secret magic where nature alone renews itself.",
    			"Deep summer is when laziness finds respectability.",
    			"Dirty hands, iced tea, garden fragrances thick in the air and a blanket of color before me, who could ask for more?",
    			"I question not if thrushes sing,If roses load the air; Beyond my heart I need not reach When all is summer there.",
    			"In summer, the song sings itself.",
    			"In winter I get up at night And dress by yellow candle-light. In summer quite the other way I have to go to bed by day.",
    			"It was a splendid summer morning and it seemed as if nothing could go wrong.",
    			"Life is a pure flame, and we live by an invisible sun within us. - hari.s",
    			"Love is to the heart what the summer is to the farmer\'s year - it brings to harvest all the loveliest flowers of the soul.",
    			"Oh, bring again my heart\'s content,Thou Spirit of the Summer-time!.",
    			"Oh, the summer night Has a smile of light And she sits on a sapphire throne.",
    			"People don\'t notice whether it\'s winter or summer when they\'re happy.",
    			"Rest is not idleness, and to lie sometimes on the grass on a summer day listening to the murmur of water, or watching the clouds float across the sky, is hardly a waste of time.",
    			"Someone's sitting in the shade today because someone planted a tree a long time ago.",
    			"Summer afternoon - summer afternoon; to me those have always been the two most beautiful words in the English language.",
    			"Summer has now thrown open her emerald doors. Every part of the landscape is profuse in leaves and flowers, and green-robed senators of mighty woods are clothed in their most elegant array.",
    			"Summer is delicious. [rain is refreshing, wind braces up, snow is exhilarating; there is no such thing as bad weather, only different kinds of good weather.",
    			"Summer set lip to earth's bosom bare,And left the flushed print in a poppy there.",
    			"The dandelions and buttercups gild all the lawn: the drowsy bee stumbles among the clover tops, and summer sweetens all to me.",
    			"The steady buzzzzzzz of the Katydid chorus, and the bass solo of the croaking Frog - a summer night's serenade.",
    			"The Summer looks out from her brazen tower,Through the flashing bars of July.",
    			"The summer night is like a perfection of thought.",
    			"The summer night is like a perfection of thought.",
    			"Then followed that beautiful season... Summer....Filled was the air with a dreamy and magical light; and the landscape Lay as if new created in all the freshness of childhood.",
    			"There shall be eternal summer in the grateful heart.",
    			"To believe in life is to believe there will always be someone who will water the geraniums.",
    			"To see the Summer Sky Is Poetry, though never in a Book it lie -True Poems flee.",
    			"We are much more likely to experience a sense of plenty when we are relaxed.",
    			"What dreadful hot weather we have! It keeps me in a continual state of inelegance.",
    			"What is one to say about June, the time of perfect young summer, the fulfillment of the promise of the earlier months, and with as yet no sign to remind one that its fresh young beauty will ever fade.",
    			"What is so rare as a day in June? Then, if ever, come perfect days.",
    			"When I was a little kid, of course, I was brown all summer. That's because I was free as a bird- nothing to do but catch bugs all day.",
    			"Who has not dreamed a world of bliss on a bright, sunny noon like this?",
    			"Yellow butterflies look like flowers flying through the warm summer air.",
    			"You can never appreciate the shade of a tree unless you sweat in the sun. - hari.s",
    			"Every Summer: ''Let's make this the best one yet!'' ... End of Summer: ''Wow, this Summer sucked.",
    			" One of my highlights of summer is talking into the fan to hear my robot voice.",
    			"Summer: It's SO hot! I can\'t wait for the cold weather. Winter: WTF is this?!?!",
    			"like this if you are ready for summer! ",
    			"So can we just skip to summer now?? ",
    			"Summer, please restart yourself. ",
    			"Where the heck did summer go? ",
    			"During summer, you wish you were in college so would have something to do. In college, you wish it was summer so you'd have nothing to do.",
    			"RIP Summer  :(  . - hari.s",
    			"I wish summer would get pregnant so we would have 9 months off. ",
    			"I wish we could just fast forward to summer. ",
    			"Can't wait for summer to end.",
    			"Can I fast forward to summer already? ",
    			"Summer is the worst season ever! ",
    			"Summer is by far my least favorite season. ",
    			"I could go for another three months of summer break... ",
    			"✔ ready for summer .",
    			"Where is the button to restart summer? Hahhahahah. - hari.s",
    			"*Me during the summer* Is it Wednesday or Saturday?" ,
    			"I still know what you did last summer....",
    			"She acts like summer and walks like rain.",
    			"You know it`s almost summer; when tanning is your main priority. ",
    			"I swear I can\'t  tolerate it.",
    			"Summer = Sleep all day, stay up all night. ",
    			"Dear Summer 2013, please hurry up! .",
    			"Summer  is passing by way too quick lol.",
    			"I ♥ THE WEEKEND, I ♥ MUSIC, I ♥ SUMMER & I ♥ SLEEP .",
    			"You know it\'s almost summer; when you have to shave your legs almost every day because you\'re wearing shorts. ",
    			"garmi bhut hoi pai hai ajj .",
    			"hun ta garmi had to baad gai.",
    			"hun ni bardash hundi ea a garmi.",
    			"hun ta seer to upar di ho gayi garmi.",
    			"ajj ta kal nalo v jada hai garmi .",
    			"ajj garmi bhut jada hon wali hai.",
    			"j aave garmi baaddi gayi ta mai mara hi jawa ga.",
    			"ajj maar garmi jada hove se.",
    			"ajj garmi jada hossi.",
    			"garmi ch thanda pani peen nu vi kene milsi .",
    			"ghani dhup hove gi.",
    			"garmi mai thanda thanda sharbata ka maza la.",
    			"today we shall go out for the ice cream treat.",
    			"uff ya garmi.",
    			 "Boy: You're like summer. Girl: Awww hot? Boy: Nope, No class.",
    			"Just the smell of summer can make me fall in love. ",
    			"I hate when people say, ''I gotta get my body right for the summer.. Yea.. Ok…. That's nice, but wtf are going to do about that face? ",
    			"Summer is the best. Waking up late, no homework, more time to chill with friends! ",
    			"What I think I'm going to do over the summer: hang with friends, have a party, go swimming, go to the beach. What I did: Internet. ",
    			"You know what sucks? Realizing that everything you believe in, is complete and utter bullshit. -(500) Days of Summer ",
    			"Q: What does a bee do when it is hot? A: He takes off his yellow jacket!",
    			"Q: How do you make holy water? A: Boil the hell out of it!",
    			"Q: How hot is it in punjab? A: So hot every fat guy sweating is smells like Bacon!",
    			"Q: How hot is chandigarh summer? A: So hot that I saw a fire hydrant chasing a pack of dogs!",
    			"Q: What happened after the mom purchased a loaf of bread from Albertsons? A: By the time she got home it was toast!",
    			"Q: What do you need to visit Death Valley, Arizona? A: Dental Records",
    			"Q: What did the air conditioning say to the man? A: I\'m your biggest fan.",
    			"Q: What are the only two seasons in Phoenix, Arizona? A: Hot and Hotter.",
    			"Q: How do heat lamps communicate? A: Lampost.",
    			"Q: What did the one pig say to the another at the beach? A: I\'m bacon!",
    			"Q: Which is faster, heat or cold? A: Heat, because you can catch a cold!",
    			"How hot is it?",
    			"the cows are giving evaporated milk.",
    			"the chickens are laying hard-boiled eggs.",
    			"I saw a dog chasing a cat and they were both walkin.",
    			"hot water now comes out of both taps.",
    			"you actually burn your hand opening the car door.",
    			"you realize that asphalt has a liquid state.",
    			"the birds have to use potholders to pull worms out of the ground.",
    			"the potatoes cook underground, and all you have to do to have lunch is to pull one out and add butter, salt and pepper.",
    			"farmers are feeding their chickens crushed ice to keep them from laying hard-boiled eggs.",
    			"you start buying stock in Gatorade.",
    			"the trees are whistling for the dogs.",
    			"you start putting ice cubes in your water bed.",
    			"you no longer associate bridges (or rivers) with water.",
    			"you can say 113 degrees without fainting.",
    			"Satan decided to take the day off.",
    			"the four seasons are: tolerable, hot, really hot and ARE YOU KIDDING ME?!",
    			"you eat hot chilies to cool your mouth off.",
    			"your dream house is any house in Alaska.",
    			"you can make instant sun tea.",
    			"your car overheats before you drive it.",
    			"you learn that a seat belt makes a pretty good branding iron.",
    			"the temperature drops below 95, you feel a bit chilly.",
    			"you've experienced condensation on your butt from the hot water in the toilet bowl.",
    			"you would give anything to be able to splash cold water on your face.",
    			"Q: What do you call six weeks of rain in Scotland? A: Summer!",
    			"Q: How do you prevent a Summer cold? A: Catch it in the Winter!",
    			"Q: What do you call a french guy in sandals? A: Phillipe Phloppe.",
    			"Q: When do you go at red and stop at green? A: When you\'re eating a watermelon.",
    			"Q: How do you know your city is suffering from a heatwave? A: Every fat guy sweating in the city smells like Bacon!",
    			"Hair gets lighter, Skin gets darker, Music gets louder, Nights get longer, Life gets better. This Summer.",
    			"Because it’s summer and the memories are just waiting to happen.",
    			"Summer: Hair gets lighter. Skin gets darker. Water gets warmer. Drinks get colder. Music gets louder. Nights get longer. Life gets better.",
    			"One must maintain a little bit of summer, even in the middle of winter.",
    			"While we’re young and beautiful, living free and easy. Here without a worry, dancing in our bare feet because when the summer\'s done we might not be so young and beautiful..",
    			"Every summer has a story. ♥",
    			"Tan skin; crazy days; late nights: Summer.",
    			"People don’t notice whether it’s winter or summer when they’re happy.",
    			"The summer night is like a perfection of thought.",
    			"In life’s winter, find your invincible summer.",
    			"I miss the days when summer vacation was about relaxing and hanging out with friends. Now it’s all about working and squeezing your friends in when you can.",
    			"Some beach somewhere, there’s a big umbrella casting shade over an empty chair. Palm trees are growing, warm breezes blowing. I picture myself there, some beach somewhere.",
    			"Summer is kind of like the ultimate one-night stand: hot as hell, totally thrilling, and gone before you know it.",
    			"Summer romances begin for all kinds of reasons, but when all is said and done, they have one thing in common. They’re shooting stars, a spectacular moment of light in the heavens, fleeting glimpse of eternity, and in a flash they’re gone.",
    			"So here’s to all those summer nights when my feet hit the sand and the waves break my fall and all my friends around me out number the stars.",
    			"Sun is shining. Weather is sweet. Make you wanna move your dancing feet.",
    			"In every girl’s life; there’s a boy she’ll never forget and a summer where it all began.",
    			"All summer, single, I wanna be what I wanna be. Yeah, all summer single, I’m gonna have what I can see. All summer single, yes, I don’t mind, ya know. All I want is a good time.",
    			"Belly tops, flip flops Lemonade, in the shade Blue skies, hot guys, Late nights water fights, Ice creams, sweet dreams, Bathing suits, shooting hoops, Party time, schools out, Sleeping in,sneaking out Summer’s .",
    			"I never promised you a happy ending. You never said that you wouldn’t make me cry. But summer love will keep us warm.",
    			"Amazing friends; summer nights; Chocolate ice cream; mud slide fights; Half the summer is gone already So lets spend the rest of it; slow and steady.",
    			"There is no \"we\" in summer. Only \'u\' and \'me\'. ",
    			"Palm trees, ocean breeze, salty air, sun kissed hair. That endless summer, take me there.",
    			"Good times in summer .",
    			"We were having too good of a time to worry about what would happen tomorrow.",
    			"Summer ’15, let’s make it last forever.",
    			"Blue skies, Hot Guys; Late Nights, Water Fights; Ice Cream, Swim Suits; Summer ’15.",
    			"Sunny days, party nights, hot guys water fights, pretty hair, tanned skin schools out summers in ♥.",
    			"Beach sand, perfect tans. Day walks, night talks. Sleepless nights, pillow fights, and spending every day with those who matter most.",
    			"On a long sweet summer night, all the kisses you bring get my temperature right. Long sweet summer night. I will love you with the day turning too. If it’s the only other thing that I do.",
    			"I still recall every summer night like it was yesterday; the times would never end and my friends were family. Nothing mattered more than the loyalty we had.",
    			"Summer’s filled with breaking the rules, standing apart, ignoring your head, and following your heart.",
    			"Now that summers over and it turns into the fall, it seems as though I lost you. I don’t mean anything at all. Yet somehow now I don’t miss a thing; you were just another summer fling.",
    			"Here’s to the nights where the sand is your seat, the waves kiss your feet, your friends outnumber the stars, and even the chilliest of nights are still warmer than the cold one in your hand.",
    			"You’re going away in late September, but here’s a thanks for a summer I’ll always remember.",
    			"A perfect summer day is when the sun is shining, the breeze is blowing, the birds are singing, and the lawn mower is broken.",
    			"Partying like crazy, you know the drill, tanning all day, nights dressed to kill, nothing is going to replace these days. Oh so sweet summer vacation, life in the heat.",
    			"Summer break. Where you drink triple, see double, and act single.",
    			"This just can’t be summer love.",
    			"Bikinis, towels, soaking in the sun, oceans, beaches, just having fun, meeting cute boys, out after dark, swimming at the pool, and hanging out at the park. Summer .",
    			"Sandcastles and laying in the sun.",
    			"Tanning till the day is done.",
    			" Ice cream, bike rides, late night bashes Surfing, swimming, hear waves crashing Shopping, driven round town Music loud, the top is down Days by the pool in the warm breeze This summer went by with so much ease.",
    			"Summer Boy. Even if he leaves again, he’ll be back, cause he never really left me anyway. He’s my summer boy and summer boys are the only thing certain. You can trust that they’ll always be back…because they loved you in the time when you were most free.",
    			"When the sun gets hot and the moon gets hazy, good girls go bad, and it gets crazy!",
    			"Summer love. Midnight kisses. Shooting stars. Secret wishes.",
    			"The tans will fade, but the memories will last forever.",
    			"They can only stand red light. And in effect the sultry darkness into which the students now followed him was visible and crimson, like the darkness of closed eyes on a summer's afternoon.",
    			"I walk without flinching through the burning cathedral of the summer.  My bank of wild grass is majestic  and full of music.  It is a fire that solitude presses against my lips.",
    			"If a June night could talk, it would probably boast it invented romance. - hari.s",
    			" One summer's eve, when the breeze was gone,  And the nightingale was mute.",
    			"-  Ah, summer, what power you have to make us suffer and like it." ,
    			" Oh, the summer night Has a smile of light And she sits on a sapphire throne.",
    			 "While the earth remaineth, seedtime and harvest, and cold and heat, and summer and winter, and day and night shall not cease.",
    			 "The last of Summer is Delight --.",
    			" That beautiful season the Summer!  Filled was the air with a dreamy and magical light;  and the landscape  Lay as if new created in all the freshness of childhood.",
    			"There is no season such delight can bring, As summer, autumn, winter and the spring.",
    			"A summer's sun is worth the having.",
    			" Dirty hands, iced tea, garden fragrances thick in the air and a blanket of color before me,  who could ask for more?",
    			"No price is set on the lavish summer; June may be had by the poorest comer.",
    			"Summer afternoon - summer afternoon; to me those have always been the two most  beautiful words in the English language.",
    			" What is one to say about June, the time of perfect young summer, the fulfillment of the promise  of the earlier months, and with as yet no sign to remind one that its fresh young beauty will ever fade.",
    			"The summer night is like a perfection of thought.",
    			"Rest is not idleness, and to lie sometimes on the grass on a summer day listening to the murmur  of water, or watching the clouds float across the sky, is hardly a waste of time.",
    			"It amazes me that most people spend more time planning next summer's vacation than they  do planning the rest of their lives.",
    			"Nothing is more memorable than a smell. One scent can be unexpected, momentary and fleeting,  yet conjure up a childhood summer beside a lake in the mountains...",
    			"Summer makes a silence after spring." ,
    			"hot August night; scent of crushed lantana leaves thickens the air.",
    			"Inebriate of Air - am I And Debauchee of Dew Reeling through endless summer days .",
    			" In summer crowned with drifting orchard bloom.",
    			"I know I am but summer to your heart, and not the full four seasons of the year." ,
    			"Clapping my hands with the echoes the summer moon begins to dawn.",
    			"People don't notice whether it's winter or summer when they're happy.",
    			" When on a summer's morn I wake,  And open my two eyes,  Out to the clear, born-singing rills 38 Fairest of the months!  Ripe summer\'s queen.",
    			"Fairest of the months!  Ripe summer's queen The hey-day of the year With robes that gleam with sunny sheen Sweet August doth appear.",
    			" I question not if thrushes sing, If roses load the air; Beyond my heart I need not reach When all is summer there.",
    			" Love is to the heart what the summer is to the farmer's year. It brings to harvest all the loveliest flowers of the soul.",
    			"How can one help shivering with delight when one's hot fingers close around the stem of a live flower, cool from the shade and stiff with newborn vigor!",
    			"T'is now the summer of your youth. Time has not cropt the roses from  your cheek, though sorrow long has washed them.",
    			" The summer of leaves and roses When pleasant sights salute the eyes, And pleasant scents the noses.",
    			"A perfect summer day is when the sun is shining, the breeze is blowing, the birds are singing,  and the lawn mower is broken.",
    			" The old, wooden shed Stranded in a sea of wheat, Waiting for harvest.",
    			 "Catch, then, oh catch the transient hour;  Improve each moment as it flies!  Life's a short summer, man a flower;  He dies - alas! how soon he dies!",
    			 "Do what we can, summer will have its flies.",
    			" We know the past but cannot control it. We control the future but cannot know it.",
    			" Now summer is in flower and natures hum ",
    			" Wi' glittering dance and reeling in the sun ",
    			 "Summer set lip to earth's bosom bare, And left the flushed print in a poppy there.",
    			" Deep summer is when laziness finds respectability.",
    			 "Mosquito is out,  it's the end of the day;  she's humming and hunting  her evening away.  Who knows why such hunger  arrives on such wings  at sundown? I guess  it's the nature of things." ,
    			" All your renown is like the summer flower that blooms and dies; because the sunny glow which  brings it forth, soon slays with parching power." ,
    			"its going to makes us  mad.",
    			 "We go in withering  To ply the hard incessant hoe; Panting beneath the brazen sky We sweat and grumble, but we go.",
    			"To see the Summer Sky  Is Poetry, though never in a Book it lie  -   hari.s",
    			" Blessed be the Lord for the beauty of summer and spring, for the air, the water, the verdure,  and the song of birds." ,  
    			" Indian summer. One swallow doesn't make a summer.",
    			" As hot as hell. Shall I compare thee to a summer's day.",
    			"He was in love with life as an ant on a summer blade of grass.",
    			 "T'is the last rose of summer,  Left blooming alone.",
    			" When the wind Sweeps the broad forest in its summer prime.",
    			 "The Summer than the Autumn, lest We turn the sun away.",
    			"Summer is a promissory note signed , its long days spent and gone before you know it, and  due to be repaid next January." ,
    			"Summer is the time when one sheds one's tensions with one's clothes, and the right kind of day is .",
    			 "A something in a summer's Day As slow her flambeaux burn away Which solemnizes me.",
    			" And still within a summer's night A something so transporting bright I clap my hands to see --",
    			" So looking on -- the night -- the morn Conclude the wonder gay -- And I meet, coming thro' the dews Another summer's Day!",
    			"Summertime for growth.",
    			" Ripening grapes in the summer sun - reason enough to plod ahead.",
    			" Fresh fruit from the tree - sweet summertime!",
    			" Shade was the first shelter.",
    			" The spiders, grasshoppers, mantis, and moth larva are all back:  the summer crowd has returned!",
    			" To garden is to open your heart to the sky. Dirty fingernails and a calloused palm precede a Green Thumb." ,
    			"O Earth, that hast no voice, confide to me a voice! O harvest of my lands! O boundless summer growths! O lavish, brown, parturient earth! O infinite, teeming womb! A verse to seek, to see, to narrate thee.",
    			 "It was a splendid summer morning and it seemed as if nothing could go wrong.",
    			  "July brings harsh drought but the sun is ripe; heat as thick as tomato skins.",
    			 "How sociable the garden was. We ate and talked in given light. The children put their toys to grass All the warm wakeful August night.",
    			" Sunset!!   The mosquitoes attack - we retreat.   Also true:  A crape myrtle is a crape myrtle is a crape myrtle.",
    			" Ripening grapes in the summer sun - reason enough to plod ahead. Where are the fig blossoms?  Exceptions to every rule.",
    			" What a beautiful, sunny morning.  It makes you happy to be alive, doesn't it?  We can't let the sun  outshine us!  We have to beam, too!",
    			" Home grown tomatoes, home grown tomatoes What would life be like without homegrown tomatoes Only two things that money can't buy That's true love and home grown tomatoes.",
    			"Warm summer sun, shine kindly here;  Warm southern wind, blow softly here; Green sod above, lie light, lie light; Good night, dear heart, good night, good night.",
    			" Everytime I call my baby, to try to get a date My boss says, no dice, son, you gotta work late Sometimes I wonder what I’m gonna do cause there ain’t no cure for the summertime blues",
    			"Tis moonlight, summer moonlight"};
    	   
    	   
           Class.forName("oracle.jdbc.driver.OracleDriver");
	   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
	   Statement st=con.createStatement();
           st.executeUpdate("update users set securityquestion='"+securityquestion+"' , securityanswer='"+securityanswer+"' where userid='"+UserId+"'");
	   st.close();
	   con.close();
	}
        catch(Exception e) {
	   System.out.println(e.getMessage());
	}
  }


  public void addPic(String UserID,String Profilepic) {
       try {
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
	   Statement st=con.createStatement();
           st.executeUpdate("update users set profilepic='"+Profilepic+"' where userid='"+UserID+"'");
	   st.close();
	   con.close();
        }
	catch(Exception e) {
	   System.out.println(e.getMessage());
        }
   }
}
%>