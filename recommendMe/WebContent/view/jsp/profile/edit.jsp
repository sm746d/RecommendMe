<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
 
<link rel="stylesheet" type="text/css" href="../../view/css/jquery-ui.min.css">
<script src="../../view/js/jquery-ui.min.js" type="text/javascript"></script>

<script>

	var addRow = function() {
			var row = '<tr>\
							 <td>\
							  	<input type="text" class="form-control" name="position" placeholder="ex. Junior Software Engineer">\
							 </td>\
							 <td>\
							  	<input type="text" class="form-control" name="employer_name" placeholder="ex. Applied Medical">\
							 </td>\
							 <td>\
							  	<input type="text" class="form-control" name="employer_address" placeholder="ex. 130 W. Main St. Irvine, CA 96777">\
							 </td>\
							 <td>\
							  	<input type="text" class="form-control start_date" name="start_date" placeholder="ex. 01/04/2014">\
							 </td>\
							 <td>\
							  	<input type="text" class="form-control end_date" name="end_date" placeholder="ex. 05/04/2016">\
							 </td>\
							 <td>\
							  	<input type="checkbox" class="form-control" name="present">\
							 </td>\
						</tr>';
			$('#experienceTable').append(row);
			$('.start_date').datepicker();
			$('.end_date').datepicker();
	};
	
	$(document).ready(function() {
		$('#add-work-exp').on('click', addRow);
		$('.start_date').datepicker();
		$('.end_date').datepicker();
	});
	
</script>
<title>Profile Page</title>
</head>
<body>
<h1>Welcome - Edit Profile</h1>

<form method="POST" action="add">
  <div class="form-inline">

  <div class="table-responsive">
	  <table class="table" id='experienceTable'>
		  <tr>
		    <th>Job Position</th><th>Employer Name</th><th>Address</th><th>Start Date</th><th>End Date</th><th>Present</th>
		  </tr>
		  <tr>
			  <td>
			  	<input type="text" class="form-control" name="position" placeholder="ex. Junior Software Engineer">
			 </td>
			 <td>
			  	<input type="text" class="form-control" name="employer_name" placeholder="ex. Applied Medical">
			 </td>
			 <td>
			  	<input type="text" class="form-control" name="employer_address" placeholder="ex. 130 W. Main St. Irvine, CA 96777">
			 </td>
			 <td>
			  	<input type="text" class="form-control start_date" name="start_date" placeholder="ex. 01/04/2014">
			 </td>
			 <td>
			  	<input type="text" class="form-control end_date" name="end_date" placeholder="ex. 05/04/2016">
			 </td>
 			 <td>
			  	<input type="checkbox" class="form-control" name="present">
			 </td>
		 </tr>
	  </table>
  </div>
  <button type="button" class="btn btn-default" aria-label="Left Align" id="add-work-exp"'>
	<span class="glyphicon glyphicon-pencil" aria-hidden="true">Add Work Experience</span>
  </button>
  <br/>
  <button type="submit" class="btn btn-default">Submit</button>
</form>


</body>
</html>