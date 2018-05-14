$(document).ready(function(){
	$('.editEdu').on('click', editEdu);
	$('#modal_editEdu .modal-action').on('click',saveEdu);
	$('#modal_addEdu .modal-action').on('click', addEdu);
	$('#modal_addExperience .modal-action').on('click', addExp);
	$('.editExp').on('click', editExp);
	$('#modal_editExperience .modal-action').on('click', saveExp);
	$('.edit-personal-info').on('click', editPInfo);
	$('#modal_pinfo .modal-action').on('click',savePInfo);
});

var editEdu = function(e) {
	var $this = $(e.target).closest('.edu-item');
	
	var degree = $this.find('.degree').text().trim();
	var schoolName = $this.find('.school-name').text().trim();
	var major = $this.find('.major-name').text().trim();
	var gradDate = $this.find('.grad-date').text().trim();
	var id = $this.find('.eduId').text().trim();
	var userId = $this.find('.userId').text().trim();
	
	$('#e_college_name').val(schoolName);
	$('#e_degree_of_certificate').val(degree);
	$('#e_major_name').val(major);
	$('#e_graduation_date').val(gradDate);
	$('#e_college_id').val(id);
	$('#e_user_id').val(userId);
};

var saveEdu = function(e) {
	var schoolName = $('#e_college_name').val();
	var degree = $('#e_degree_of_certificate').val();
	var major = $('#e_major_name').val();
	var gradDate = moment($('#e_graduation_date').val()).format('YYYY-MM-DD');
	var id = $('#e_college_id').val();
	var userId = $('#e_user_id').val();
	
	var data = "{\"education\": [{\"user_id\":"+userId+", \"id\":"+id+",\"school_name\": \""+schoolName+"\", \"degree_or_certificate\": \""+degree+"\", \"major_name\": \""+major+"\", \"graduation_date\": \""+gradDate+"\"}]\n}" 
	var settings = {
			  "async": true,
			  "crossDomain": true,
			  "url": "/recommendMe/do/profile",
			  "method": "PUT",
			  "headers": {
			    "content-type": "application/json",
			    "cache-control": "no-cache",
			    "postman-token": "9c2a2d83-218f-d18d-b2d4-55f3a49f0387"
			  },
			  "processData": false,
			  "data": data
			}

	$.ajax(settings).done(function (response) {
		
		window.location = '';
	});
};

var addEdu = function(e) {
	var schoolName = $('#college_name').val();
	var degree = $('#degree_of_certificate').val();
	var major = $('#major_name').val();
	var gradDate = moment($('#graduation_date').val()).format('YYYY-MM-DD');
	
	var data = {"education": 
		[{
			"school_name": schoolName, 
			"degree_or_certificate": degree,
			"major_name": major, 
			"graduation_date": gradDate
		}] 
	};
	
	data = JSON.stringify(data);
	
	var settings = {
			  "async": true,
			  "crossDomain": true,
			  "url": "/recommendMe/do/profile",
			  "method": "POST",
			  "headers": {
			    "content-type": "application/json",
			    "cache-control": "no-cache",
			    "postman-token": "9c2a2d83-218f-d18d-b2d4-55f3a49f0387"
			  },
			  "processData": false,
			  "data": data
			};

	$.ajax(settings).done(function (response) {
		
		window.location = '';
	});
};

var editExp = function(e) {
	var $this = $(e.target).closest('.exp-entry');
	
	var jobPosition = $this.find('.job-position').text().trim();
	
	var role = $this.find('.role').text().trim();
	var address = $this.find('.address').text().trim();
	var startDate = $this.find('.start-date').text().trim();
	var endDate = $this.find('.end-date').text().trim();
	var id = $this.find('.wexp-id').text().trim();
	var employerName = $this.find('.employerName').text().trim();
	var present = $this.find('.present').text().trim();
	
	$('#e_job_position').val(jobPosition);
	$('#e_job_role').val(role);
	$('#e_address').val(address);
	$('#e_startdate').val(startDate);
	$('#e_enddate').val(endDate);
	$('#e_wexp_id').val(id);
	$('#e_employer_name').val(employerName);
	
	if (present == "Yes")
		$('#present').prop('checked', true);
	else
		$('#present').prop('checked', false);
};

var saveExp = function() {
	var job_position = $('#e_job_position').val();
	var role = $('#e_job_role').val();
	var address = $('#e_address').val();
	console.log(address);
	var start_date = $('#e_startdate').val();
	var end_date = $('#e_enddate').val();
	var employerName = $('#e_employer_name').val();
	var present = $('#present').is(":checked");
	
	start_date = moment(start_date).format('YYYY-MM-DD');
	end_date = moment(end_date).format('YYYY-MM-DD');
	
	var id = $('#e_wexp_id').val();
	var data = {"userWorkExperience": 
		[{
			"job_position": job_position, 
			"role": role,
			"address": address, 
			"start_date": start_date,
			"end_date": end_date,
			"id": id,
			"employer_name": employerName,
			"present": present
		}] 
	};
	console.log(data);
	data = JSON.stringify(data);
	
	var settings = {
			  "async": true,
			  "crossDomain": true,
			  "url": "/recommendMe/do/profile",
			  "method": "PUT",
			  "headers": {
			    "content-type": "application/json",
			    "cache-control": "no-cache",
			    "postman-token": "9c2a2d83-218f-d18d-b2d4-55f3a49f0387"
			  },
			  "processData": false,
			  "data": data
			}

	$.ajax(settings).done(function (response) {
		window.location = '';
	});
};

var addExp = function() {
	var job_position = $('#a_job_position').val();
	var role = $('#a_job_role').val();
	var address = $('#a_address').val();
	var start_date = $('#a_startdate').val();
	var end_date = $('#a_enddate').val();
	var employerName = $('#a_employer_name').val();
	var present = $('#a_present').is(":checked");
	
	start_date = moment(start_date).format('YYYY-MM-DD');
	end_date = moment(end_date).format('YYYY-MM-DD');
	
	var id = $('#e_wexp_id').val();
	var data = {"userWorkExperience": 
		[{
			"job_position": job_position, 
			"role": role,
			"address": address, 
			"start_date": start_date,
			"end_date": end_date,
			"id": id,
			"employer_name": employerName,
			"present": present
		}] 
	};
	console.log(data);
	data = JSON.stringify(data);
	
	var settings = {
			  "async": true,
			  "crossDomain": true,
			  "url": "/recommendMe/do/profile",
			  "method": "POST",
			  "headers": {
			    "content-type": "application/json",
			    "cache-control": "no-cache",
			    "postman-token": "9c2a2d83-218f-d18d-b2d4-55f3a49f0387"
			  },
			  "processData": false,
			  "data": data
			}

	$.ajax(settings).done(function (response) {
		
		window.location = '';
	});
	
};

var editPInfo = function() {
	var $body = $('.personal-info');
	var fName = $body.find('.first-name').text().trim();
	var lName = $body.find('.last-name').text().trim();
	var gender = $body.find('.gender').text().trim();
	var address = $body.find('.address').text().trim();
	var phoneNum = $body.find('.phoneNum').text().trim();
	var emailId = $body.find('.emailId').text().trim();
	var $editBody = $('.personal-info-edit-modal');
	
	$editBody.find('#first_name').val(fName);
	$editBody.find('#last_name').val(lName);
	$editBody.find('#gender').val(gender);
	$editBody.find('#address').val(address);
	$editBody.find('#phone').val(phoneNum);
	$editBody.find('#email').val(emailId);
};

var savePInfo = function() {
	var $editBody = $('.personal-info-edit-modal');
	var firstName = $editBody.find('#first_name').val();
	var lastName = $editBody.find('#last_name').val();
	var gender = $editBody.find('#gender').val();
	var address = $editBody.find('#address').val();
	var phoneNum = $editBody.find('#phone').val();
	var emailId = $editBody.find('#email').val();
	
	var data = {"user": 
		{
			"firstName": firstName, 
			"lastName" : lastName,
			"address": address, 
			"gender": gender,
			"phoneNum": phoneNum,
			"emailId": emailId
		} 
	};
	data = JSON.stringify(data);
	
	var settings = {
			  "async": true,
			  "crossDomain": true,
			  "url": "/recommendMe/do/profile",
			  "method": "PUT",
			  "headers": {
			    "content-type": "application/json",
			    "cache-control": "no-cache",
			    "postman-token": "9c2a2d83-218f-d18d-b2d4-55f3a49f0387"
			  },
			  "processData": false,
			  "data": data
			}

	$.ajax(settings).done(function (response) {
		//window.location = '';
	});
};
