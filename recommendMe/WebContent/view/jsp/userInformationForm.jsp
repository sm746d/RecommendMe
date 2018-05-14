<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../view/js/userInformation.js" type="text/javascript"></script>
<script>
var workExpJson =[];
</script>
<style>
body {
	background-color: powderblue;
}

h1 {
	color: blue;
}

p {
	color: red;
}
</style>
</head>

<body>
	<form:form action="/submitForm" method="post">
		<div class="container">
			<h2>Our Own Reference</h2>
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#userInfo">Basic
						Details</a></li>
				<li><a data-toggle="tab" href="#workExp">Work Experience</a></li>
				<li><a data-toggle="tab" href="#projectDetails">Project
						Details</a></li>
				<li><a data-toggle="tab" href="#skills">Skills</a></li>
			</ul>
			<div class="tab-content">
				<div id="userInfo" class="tab-pane fade in active">
					<div class="container">
						<h2>User Details</h2>
						<table class="table table-striped">
							<tbody>
								<tr>
									<td><form:label path="firstName">First Name</form:label></td>
									<td><form:input path="firstName" /></td>
									<td><form:label path="street">Street</form:label></td>
									<td><form:input path="street" /></td>
								</tr>
								<tr>
									<td><form:label path="lastName">Last Name</form:label></td>
									<td><form:input path="lastName" /></td>
									<td><form:label path="city">City</form:label></td>
									<td><form:input path="city" /></td>
								</tr>
								<tr>
									<td><form:label path="gender">Gender</form:label></td>
									<td><form:radiobutton path="gender" value="M" />Male<form:radiobutton
											path="gender" value="F" />Female</td>

									<td><form:label path="country">Country</form:label></td>
									<td><form:input path="country" /></td>
								</tr>
								<tr>
									<td><form:label path="phoneNumber">contact Number</form:label></td>
									<td><form:input path="phoneNumber" /></td>
									<td><form:label path="pinCode">Pin Code</form:label></td>
									<td><form:input path="pinCode" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- <table>
						<tr>
							<td><form:label path="firstName">First Name</form:label></td>
							<td><form:input path="firstName" /></td>
						</tr>
						<tr>
							<td><form:label path="lastName">Last Name</form:label></td>
							<td><form:input path="lastName" /></td>
						</tr>
						<tr>
							<td><form:label path="street">Street</form:label></td>
							<td><form:input path="street" /></td>
							<td><form:label path="city">City</form:label></td>
							<td><form:input path="city" /></td>
							<td><form:label path="state">State</form:label></td>
							<td><form:input path="state" /></td>
							<td><form:label path="country">Country</form:label></td>
							<td><form:input path="country" /></td>
							<td><form:label path="pinCode">Pin Code</form:label></td>
							<td><form:input path="pinCode" /></td>
						</tr>
						<tr>
							<td><form:label path="phoneNumber">contact Number</form:label></td>
							<td><form:input path="phoneNumber" /></td>
						</tr>
						<tr>
							<td><input type="submit" value="Submit" /></td>
						</tr>
					</table>-->
				</div>
				<div id="workExp" class="tab-pane fade">
					<table class="table table-striped" id="workExpTable">
						<thead>
							<tr>

								<th>Company Name</th>
								<th>Designation</th>
								<th>start Date</th>
								<th>start Date</th>
								<th>Role <input type="text" id="addRow" /><input type="button" id="1" class="add" value="+"/></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr id="comp_1">
								<td><input type="text" value="" id="companyName" /></td>
								<td><input type="text" value="" id="designation" /></td>
								<td><input type="text" value="" id="startDate" /></td>
								<td><input type="text" value="" id="startDate" /></td>
								<td><textarea id="resp" rows="4" cols="50"></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div id="projectDetails" class="tab-pane fade">
					<h3>Menu 2</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
				</div>
				<div id="skills" class="tab-pane fade">
					<h3>Menu 3</h3>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
				</div>
			</div>
		</div>
		<div id="hiddenV=alueDiv">
			<form:hidden path="workExpJson" id="workExpId" />
		</div>
	</form:form>
</body>
<script>
	$(".add").click(function() {
		//var rowCount = $('#workExpTable >tbody >tr').length;
		var rowCount = $('addRow').val();
		alert(rowCount);
		for(i=0;i<rowCount;i++)
		{
			var tr = '<tr id=comp_'+(i+1)+'>';
			tr =tr+'<td><input type="text" value="" id="companyName" /></td>'+
				'<td><input type="text" value="" id="designation" /></td>'+
				'<td><input type="text" value="" id="startDate" /></td>'+
				'<td><input type="text" value="" id="startDate" /></td>'+
				'<td><textarea id="resp" rows="4" cols="50"></textarea></td>'+
				//'<td><input type="button" class="add" value="+" id="'+(i+1)+'"/></td>'+
				'<td><input type="button" class="delete" id="'+(i+1)+'"value="-" /></td></tr>'
			$('#workExpTable > tbody:last-child').append(tr);
		}
	});
	
	
</script>
</html>