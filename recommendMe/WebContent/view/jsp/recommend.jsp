<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Recommendation Form</title>
<link rel="stylesheet" href="../../view/css/r_form.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<body>
	<div id="container">
		<h1>&bull; Welcome Professor &bull;</h1>
		<h3>Please Provide your recommendation</h3>
		<div class="underline"></div>
		<div class="icon_wrapper icon">
			<i class="material-icons md-48 color">border_color</i>
		</div>
		<form:form method="post" action="../reco/recommendSave" id="contact_form">
			<div class="name">
				<form:label for="name" path="firstName"></form:label>
				<form:input type="text" placeholder="First Name" name="name"
					path="firstName" id="f_name_input"/>
			</div>
			<div class="name">
				<form:label for="name" path="lastName"></form:label>
				<form:input type="text" placeholder="Last Name" name="name"
					path="lastName" id="l_name_input" />
			</div>
			<div class="name">
				<form:label for="name" path="companyName"></form:label>
				<form:input type="text" placeholder="Company Name" name="name"
					path="companyName" id="company_name" />
			</div>
			<div class="name">
				<form:label for="name" path="designation"></form:label>
				<form:input type="text" placeholder="Designation" path="designation"
					name="name" id="designation" />
			</div>
			<div class="email">
				<form:label for="email" path="emailId"></form:label>
				<form:input type="email" placeholder="Email-ID" name="email"
					path="emailId" id="email_input" />
					<form:input type="hidden" name="uId"
					path="uId" id="uIdValue" value="${command.uId}"/>
					<form:input type="hidden" name="token"
					path="token" id="tokenValue" value="${command.token}"/>
			</div>
			<div class="subject">
				<form:label for="recoCell" path="recoCell"></form:label> 
				<form:input path ="recoCell" type="text" placeholder="Contact Number" name="recoCell" id="recoCell"/>
			</div>

			<div class="message">
				<form:label for="message" path="recoContent"></form:label>
				<form:textarea name="message" path="recoContent"
					placeholder="Your Valuable Recommendation" id="message_input"
					cols="30" rows="5" ></form:textarea>
			</div>
			<div class="submit">
				<input type="submit" value="Submit Response" id="form_button" />
				
			</div>
		</form:form>
		<!-- // End form -->
	</div>
	<!-- // End #container -->


</body>
</html>