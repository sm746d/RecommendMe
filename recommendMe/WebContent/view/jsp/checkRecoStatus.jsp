<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Recommendation Status</title>
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
	<!-- First Name, Last Name, Email ID, Status -->
	<div class="row">
		<form:form action="../reco/searchStatus" method="post" class="col s12">
			<div class="row">
				<div class="input-field col s6">
					<form:input id="first_name" type="text" path="fName" class="validate"/> 
					<form:label path="fName" for="first_name">First Name</form:label>
				</div>
				<div class="input-field col s6">
					<form:input id="last_name" path="lName" type="text" class="validate"/> 
					<form:label path="lName" for="last_name">Last Name</form:label>
				</div>
				<div class="input-field col s6">
					<form:input id="email" path="email" type="email" class="validate"/>
					 <form:label for="email" path="email">Email</form:label>
				</div>
				<div class="input-field col s6">
					<form:radiobutton path="recoStatus" value="Submitted" label="Submitted" />
					<form:radiobutton path="recoStatus" value="Pending" label="Pending" />
				</div>
			</div>
			<center>
			<button class="btn waves-effect waves-light" type="submit"
				name="action">
				Search <i class="material-icons right">send</i>
			</button>
			</center>
		</form:form>
	</div>
	<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Status</th>
			</tr>
		</thead>
		<c:forEach var="recoStatusBean" items="${command.statusList}">
			<tbody>
				<tr>
					<td>${recoStatusBean.fName}</td>
					<td>${recoStatusBean.lName}</td>
					<td>${recoStatusBean.email}</td>
					<td>${recoStatusBean.recoStatus}</td>
				</tr>
			</tbody>

			<!-- 
		<tr>
			<td>${recoStatusBean.fName}</td>
			<td>${recoStatusBean.lName}</td>
		</tr>
		-->
		</c:forEach>
	</table>
</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="../../view/js/genUrl.js" type="text/javascript"></script>
<script src="../../view/js/ui/bin/materialize.js"></script>
</html>