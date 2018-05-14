<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="../../view/css/materialize.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href="../../view/css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
</head>


<body>
	<nav>
	<div class="nav-wrapper">
		<a href="#" class="brand-logo">OOR</a>
		<ul class="right hide-on-med-and-down">
			<li><a href="../reco/personalInfo">Personal Info</a></li>
				<li><a href="../reco/resumedownload">Create Resume</a></li>
			<li><a href="../reco/loginRedirect" id="recommedMeId"
				method="GET">Recommend Me</a></li>
			<li><a href="../reco/viewreco">My Recommendations</a></li>
			<li><a href="../reco/shareRecommendation">Share Recommendations</a></li>
			<li><a href="../reco/searchPage">Check Status</a></li>
			<li><a href="../reco/logout">Logout</a></li>
		</ul>
		<a href="#" data-activates="nav-mobile" class="button-collapse"><i
			class="material-icons">menu</i></a>
	</div>
	</nav>
	<div class="section no-pad-bot z-depth-2">
		<div class="row">
			<div class="col s12">
				<div class="card white ">
					<div class="card-section blue-grey darken-2">
						<span class="card-title white-text">&bull; Ask for
							Recommendation &bull;</span>
					</div>

					<div class="card-content">
						<!-- ======================1.1: Student Details Section============================ -->
						<!-- Implement this only if the logic is ready. else delete the section of this view details -->


						<!-- 
						<div class="row">
							<span class="card-title"><i class="material-icons">account_circle</i>Student
								Details:</span>
							<div class="col s4">
								<p class="red-text">
									<b>First Name:</b>
								</p>
								<p>Maruti Ram Kumar</p>
							</div>
							<div class="col s4">
								<p class="red-text">
									<b>Last Name:</b>
								</p>
								<p>Avantsa</p>
							</div>
							<div class="col s4">
								<p class="red-text no-border">
									<b>Mail id:</b>
								</p>
								<p class="no-border">xxxxxxxx@gmail.com</p>
							</div>
						</div>
						-->



						<br> <br>

						<div class="row">
							<span class="card-title"><i class="material-icons">account_circle</i>Recommendation
								Form:</span> <br>
							<form method="post" action="../reco/sendEmail" id="sendEmailId">
								<table border="0" width="80%">
									<tr>
										<td>First Name</td>
										<td><input type="text" name="fName" size="65" /></td>
										<td>Last Name</td>
										<td><input type="text" name="lName" size="65" /></td>
									</tr>
									<tr>
										<td>To:</td>
										<td><input type="text" name="recipient" size="65" /></td>
									</tr>
									<tr>
										<td>Subject:</td>
										<td><input type="text" name="subject" size="65" /></td>
									</tr>
									<tr>
										<td>Message:</td>
										<td><textarea cols="50" rows="10" name="message"
												id="messageId"></textarea></td>
									</tr>
								</table>
								<input type="hidden" id="tokenId" name="token" value="" />
								<center>
									<button class="btn waves-effect waves-light" id="generateUrl" type="button"
										name="action">
										Send Email <i class="material-icons right">send</i>
									</button>
								</center>
							</form>



						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="../../view/js/genUrl.js" type="text/javascript"></script>
<script src="../../view/js/ui/bin/materialize.js"></script>
</html>