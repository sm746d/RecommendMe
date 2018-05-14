<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Home| RecommendMe</title>
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,700|Lato:400,700"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="../../view/css/home.css">
<link rel="stylesheet" href="../../view/css/login.css">
</head>

<body>
	<section class="home-tabs">
	<h1>Welcome</h1>
	<h3>This is Our Own References</h3>
	<center>
		<img src="../../view/images/oorlogo.png" alt="OOR"
			style="width: 300px; height: 300px;">
		<p class="tagline">
			<strong>Show Who You Are Using OOR</strong>
		</p>
	</center>
	<div class="tab-container">
		<a class="tab-header" href="#tab-1">About OOR</a> <a
			class="tab-header" href="#tab-2">Team</a> <a class="tab-header"
			href="#tab-3">Contact Us</a> <a class="tab-header" href="#tab-4">Login</a>
		<span class="tab-slide"></span>
	</div>
	</section>

	<main class="home-main"> <!-- Tab 1 --> <section
		class="slide-content" id="tab-1">
	<h1>About Our Own References</h1>
	<section class="about" id="about">
	<p class="text_column">"Do you have any references?" is one
		question that tends to get asked during a job interview. Who do you
		get your references from? If you're fresh out of school, you'd likely
		request a letter of reference from a former teacher or professor. If
		you've been employed, you would request a reference letter from your
		former employer or boss. What were to happen if you ask for a
		reference too late? How could the employer or boss remember who you
		are or what you did?</p>
	<p class="text_column">
		OOR allows you to show your reference what you want them to remember
		about <strong><em>you</em>.</strong> What classes you excelled in,
		where you worked, what projects you made, and other achievements that
		define who you are. <br> However, OOR is special in that while
		you can write all the information you want about yourself, you can
		choose what your reference writer sees. If you're applying for a
		software designer position, you don't need your professor to see your
		job at a clothing retail store. Likewise, if you're applying for a
		marketing position, you don't need your boss at the retail store to
		see that you took Computer Science 462.
	</p>
	<p class="text_column">
		When people apply for a position at a company, the company tends to do
		research on their potential employee. If your information is available
		publicly online, how do you know your potential employer? <br> OOR
		takes care of that. You get to choose which part of your info is
		public knowledge, and which is kept on a need-to-know basis, by giving
		your employer or reference writer a code only they can use.
	</p>
	</section> </section> <!-- Tab 2 --> <section class="slide-content" id="tab-2">
	<h1>Team</h1>
	<h3>Details of the team</h3>
	<p style="text-align: center">
		<strong>Meet the Developers of OOR!</strong>
	</p>
    <table style = "width: 100%"> <tr>
    	<td align ="center">
			<div class = "col-md-offset-4 col-md-offset-2"><b>Nishant Rathi</b> </div>
    	</td>
    	<td align ="center">
			<div class = "col-md-offset-4 col-md-offset-2"><b>Shantanu Mishra</b></div>
    	</td>
    	<td align ="center">
			<div class = "col-md-offset-4 col-md-offset-2"> <b>Guneet Singh Chadha</b> </div>
    	</td>
    	<td align ="center">
			<div class = "col-md-offset-4 col-md-offset-2"> <b>Josh Manulat</b></div>
    	</td>
    </tr>
    <tr>
    	<td align = "center">
    	<div> <img class = "imgNis" src="../../view/images/nr.png" alt="Nishant Rathi" style="width:200px;height:200px;"></div> 
    	</td>
    	<td align = "center">
    		<div> <img class = "imgShan" src="../../view/images/shantanuimg.jpg" alt="Shantanu Mishra" style="width:200px;height:200px;"></div>
    	</td>

    	<td align = "center">
    		<div> <img class = "imgG" src="../../view/images/gscpic.jpg" alt="G" style="width:200px;height:200px;"></div>
    	</td>
    	<td align = "center">
    		<div> <img class = "imgJc1" src="../../view/images/jcman.jpg" alt="Josh" style="width:200px;height:200px;"></div>
    	</td>
    </tr>
    <tr>
    	<td align="center"> 
    	<div class="aboutus_para">
    		<p>Full Stack Leader</p>
    	</div>
    	</td>
    	<td align="center"> 
    	<div class="aboutus_para">
    		<p>Backend Developer</p>
    	</div>
    	</td>
    	<td align="center"> 
    	<div class="aboutus_para">
    		<p>Frontend Developer</p>
    	</div>
    	</td>
    	<td align="center"> 
    	<div class="aboutus_para">
    		<p>Frontend Developer</p>
    	</div>
    	</td>
    </tr></table>
	</section> <!-- Tab 3 --> <section class="slide-content" id="tab-3">
	<h1>Contact</h1>
	<h3>Contact info for support or queries</h3>
	</section> <!-- Tab4: Login/Signup Form --> <section class="slide-content"
		id="tab-4">
	<h2 class="logo">Join the RecommendMe Club</h2>
	<h3 class="logo">Get your Recommendations in handy without any
		hassle.</h3>
	<div class="cd-tabs">
		<nav>
		<ul class="cd-tabs-navigation">
			<li><a href="#" data-content="login" class="selected"> Login
			</a></li>
			<li><a href="#" data-content="signup">SignUp</a></li>
		</ul>
		</nav>
		<ul class="cd-tabs-content">
			<li data-content="login" class="selected"><form:form
					name="login-form" method="post" action="../reco/loginRedirect"
					id="loginFormId">
					<div class="ui-form">
						<label for="username">Username</label> <input type="text"
							name="username" id="userName">
					</div>
					<div class="ui-form">
						<label for="pwd">Password</label> <input type="password"
							id="pwdId" name="pwd">
					</div>
					<span class="error"></span>
					<input type="button" id="loginButton" value="login">
				</form:form></li>
			<li data-content="signup"><form:form name="signup-form"
					method="post" action="../reco/signUp">
					<!-- <div class="ui-form">
						<form:label path="firstName" for="fName"></form:label>
						<form:input path="firstName" name="fName" placeholder="First Name" />
					</div>
					<div class="ui-form">
						<form:label path="lastName" for="lName"></form:label>
						<form:input path="lastName" name="lName" placeholder="Last Name" />
					</div>-->

					<div class="ui-form">
						<form:label path="emailId" for="email"></form:label>
						<form:input path="emailId" name="email" placeholder="Email Id" />
					</div>
					<div class="ui-form">
						<form:label path="password" for="pwd"></form:label>
						<form:password path="password" name="pwd" placeholder="Password" />
					</div>
					<span class="error"></span>
					<input type="submit" value="Sign Up" />
				</form:form></li>
		</ul>
	</div>
	</section> </main>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="../../view/js/home.js"></script>
	<script src="../../view/js/login.js"></script>

</body>
</html>