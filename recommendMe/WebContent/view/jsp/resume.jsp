<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resume</title>
</head>
<body>
	<div>
		<form method="GET" action="../../ResumeServlet">
			<h3>Template one</h3>
			<img
				src="https://www.coach4life.co.il/wp-content/uploads/2015/12/pojo-placeholder-1.png"
				width=200 height=200><br> <input type="radio"
				name="filetype" value="pdf" checked> PDF<br> <input
				type="radio" name="filetype" value="docx"> DOC<br> <input
				type="radio" name="filetype" value="txt"> TXT<br> <input
				type="hidden" name="template" value="templateOne"> <input
				type="submit" value="Create">
		</form>
	</div>
	<div>
		<form method="GET" action="../../ResumeServlet">
			<h3>Template two</h3>
			<img
				src="https://www.coach4life.co.il/wp-content/uploads/2015/12/pojo-placeholder-1.png"
				width=200 height=200><br> <input type="radio"
				name="filetype" value="pdf" checked> PDF<br> <input
				type="radio" name="filetype" value="docx"> DOC<br> <input
				type="radio" name="filetype" value="txt"> TXT<br> <input
				type="hidden" name="template" value="templateTwo"> <input
				type="submit" value="Create">
		</form>
	</div>
	<div>
		<form method="GET" action="../../ResumeServlet">
			<h3>Template three</h3>
			<img
				src="https://www.coach4life.co.il/wp-content/uploads/2015/12/pojo-placeholder-1.png"
				width=200 height=200><br> <input type="radio"
				name="filetype" value="pdf" checked> PDF<br> <input
				type="radio" name="filetype" value="docx"> DOC<br> <input
				type="radio" name="filetype" value="txt"> TXT<br> <input
				type="hidden" name="template" value="templateThree"> <input
				type="submit" value="Create">
		</form>
	</div>
</body>
</html>