<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>Recommend Me | Index</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="../view/css/materialize.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href="../view/css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
</head>

<body class="grey lighten-5">
	<nav>
		<div class="nav-wrapper">
			<a href="#" class="brand-logo">Logo</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="#">Personal Info</a></li>
				<li><a href="recommendme.html">Recommend Me</a></li>
				<li><a href="myreco.html">My Recommendations</a></li>
				<li><a href="#">Logout</a></li>
			</ul>

			<ul id="nav-mobile" class="side-nav">
				<li><a href="#">Personal Info</a></li>
				<li><a href="recommendme.html">Recommend Me</a></li>
				<li><a href="myreco.html">My Recommendations</a></li>
				<li><a href="myreco.html">Logout</a></li>
			</ul>
			<a href="#" data-activates="nav-mobile" class="button-collapse"><i
				class="material-icons">menu</i></a>
		</div>
	</nav>

	<!-- ======================Section-1: Personal Info============================ -->
	<div class="section no-pad-bot">
		<div class="row personal-info">
			<div class="col s12">
				<div class="card white ">
					<div class="card-section teal z-depth-2">
						<!-- ======================1.1: Personal Info============================ -->
						<span class="card-title white-text">Personal Info</span>
					</div>
					<div class="card-content">
						<div class="row">
							<span class="card-title"><i class="material-icons">account_circle</i>
								Basic Info:</span>
							<div class="col s12 m4">
								<p class="red-text">
									<b>First Name:</b>
								</p>
								<p class="first-name">
									<c:out value="${profile.getUser().getFirstName()}" />
								</p>
							</div>
							<div class="col s12 m4">
								<p class="red-text">
									<b>Last Name:</b>
								</p>
								<p class="last-name">
									<c:out value="${profile.getUser().getLastName()}" />
								</p>
							</div>
							<div class="col s12 m4">
								<p class="red-text no-border">
									<b>Gender:</b>
								</p>
								<p class="gender">
									<c:out value="${profile.getUser().getGender()}" />
								</p>
							</div>
						</div>

						<!-- ======================1.2: Address============================ -->
						<div class="row">
							<span class="card-title"><i class="material-icons">home</i>
								Address:</span>
							<div class="col s12 m3">
								<p class='address'>
									<c:out value="${profile.getUser().getAddress()}" />
								</p>
							</div>

						</div>

						<!-- ======================1.3: Contact============================ -->
						<div class="row">
							<span class="card-title"><i class="material-icons">contacts</i>
								Contact:</span>
							<div class="col s12 m6">
								<p class="red-text">
									<b>Phone:</b>
								</p>
								<p class="phoneNum">
									<c:out value="${profile.getUser().getPhoneNum()}" />
								</p>
							</div>
							<div class="col s12 m6">
								<p class="red-text no-border">
									<b>Email:</b>
								</p>
								<p class="no-border emailId">
									<c:out value="${profile.getUser().getEmailId()}" />
								</p>
							</div>
						</div>

						<br>

					</div>
					<div class="card-action right-align brown lighten-1">
						<a
							class="modal-trigger brown white-text waves-effect edit-personal-info "
							href="#modal_pinfo"><i class="material-icons">edit</i>Edit
							Info</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ======================(1.i): MODAL: Personal Info============================ -->
	<div id="modal_pinfo" class="modal">
		<div class="modal-content personal-info-edit-modal">
			<h4>Personal Info</h4>
			<div class="row">
				<div class="input-field col s12 m4">
					<input id="first_name" type="text" class="validate"> <label
						class="active" for="first_name">First Name</label>
				</div>
				<div class="input-field col s12 m4">
					<input id="last_name" type="text" class="validate"> <label
						class="active" for="last_name">Last Name</label>
				</div>
				<div class="input-field col s12 m4">
					<select id='gender'>
						<option value="">Choose your option</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select> <label>Gender</label>
				</div>
			</div>

			<div class="divider"></div>

			<div class="row">
				<div class="input-field col s12 m3">
					<input id="address" type="text" class="validate"> <label
						class="active" for="street">Address</label>
				</div>
			</div>

			<div class="divider"></div>

			<div class="row">
				<div class="input-field col s12 m6">
					<input id="phone" type="text" class="validate"> <label
						class="active" for="phone">Phone</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="email" type="email" class="validate"> <label
						class="active" for="email">Email</label>
				</div>
			</div>

		</div>
		<div class="modal-footer">
			<a href="#"
				class="modal-action modal-close waves-effect waves-light btn red"
				type="submit">Apply Changes</a>
		</div>
	</div>


	<!-- ======================Section-2: Educational Info============================ -->
	<div class="section no-pad-bot">
		<div class="row">
			<div class="col s12">
				<div class="card white ">
					<div class="card-section teal z-depth-2">
						<span class="card-title white-text">Educational Info</span> <a
							class=" modal-trigger btn-floating btn-flat waves-effect right waves-teal"
							style="position: relative; top: -0.25em;" href="#modal_addEdu"><i
							class="material-icons white-text">add</i></a>
					</div>
					<div class="card-content">
						<div class="row">
							<!-- ======================DIV END - Educational 1============================ -->
							<c:forEach items="${profile.getEducation()}" var="edu">
								<div class="edu-item">
									<span class="eduId" style="display: none;"> <c:out
											value="${edu.getId()}" />
									</span> <span class="userId" style="display: none;"> <c:out
											value="${edu.getUser_id()}" />
									</span>
									<div class="col s12 m6">
										<div class="card blue-grey darken-2">
											<div class="card-section">
												<span
													class="card-title no-title-border white-text card-title-width school-name">
													<c:out value="${edu.getSchool_name()}" />
												</span> <a
													class=" modal-trigger btn-floating btn-flat waves-effect right waves-light"
													style="position: relative; top: -2.55em;"
													href="#modal_editEdu"><i
													class="material-icons white-text editEdu">edit</i></a>
											</div>
											<div class="card-content custom-padding white-text">
												<p class="no-border">
													<b>Degree: </b> <span class="degree"> <c:out
															value="${edu.getDegree_or_certificate()}" />
													</span>
												</p>
												<p class="no-border">
													<b>Major: </b> <span class="major-name"> <c:out
															value="${edu.getMajor_name()}" />
													</span>
												</p>
												<p class="no-border">
													<b>Date:</b> <span class="grad-date"> <c:out
															value="${edu.getGraduation_date()}" />
													</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ======================(2.i): MODAL: Add Educational Info============================ -->
	<div id="modal_addEdu" class="modal">
		<div class="modal-content">
			<h4>Add Educational Info</h4>
			<input type="hidden" value="" id="college_id" />
			<div class="row">
				<div class="input-field col s12">
					<input id="college_name" type="text" class="validate"> <label
						class="active" for="college_name">College Name</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="degree_of_certificate" type="text" class="validate">
					<label class="active" for="degree_of_certificate">Degree:</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="major_name" type="text" class="validate"> <label
						class="active" for="major_name">Major:</label>
				</div>
				<div class="input-field col s12">
					<input id="graduation_date" type="text" class="validate"> <label
						class="active" for="graduation_date">Date</label>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves btn red">Add</a>
		</div>
	</div>

	<!-- ======================(2.ii): MODAL: Edit Educational Info============================ -->
	<div id="modal_editEdu" class="modal">
		<div class="modal-content">
			<h4>Edit Educational Info</h4>
			<input type="hidden" value="" id="e_college_id" /> <input
				type="hidden" value="" id="e_user_id" />
			<div class="row">
				<div class="input-field col s12">
					<input value="" id="e_college_name" type="text" class="validate">
					<label class="active" for="e_college_name">College Name</label>
				</div>
				<div class="input-field col s12 m6">
					<input value="" id="e_degree_of_certificate" type="text"
						class="validate"> <label class="active"
						for="e_degree_of_certificate">Degree:</label>
				</div>
				<div class="input-field col s12 m6">
					<input value="" id="e_major_name" type="text" class="validate">
					<label class="active" for="e_major_name">Major:</label>
				</div>
				<div class="input-field col s12">
					<input value="" id="e_graduation_date" type="text" class="validate">
					<label class="active" for="e_graduation_date">Date</label>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-light btn red">Update
				Info</a>
		</div>
	</div>


	<!-- ======================Section-3: EXPERIENCE============================ -->
	<div class="section no-pad-bot">
		<div class="row">
			<div class="col s12">
				<div class="card white ">
					<div class="card-section teal z-depth-2">
						<span class="card-title white-text">Experience</span> <a
							class=" modal-trigger btn-floating btn-flat waves-effect right waves-teal"
							style="position: relative; top: -0.25em;"
							href="#modal_addExperience"><i
							class="material-icons white-text">add</i></a>
					</div>
					<div class="card-content">
						<div class="row">
							<c:forEach items="${profile.getUserWorkExperience()}" var="wexp">

								<!-- ======================DIV - Experience: 1============================ -->
								<div class="col s12 m6 exp-entry">
									<div class="card red lighten-1">
										<div class="card-section custom-border">
											<span
												class="card-title no-title-border white-text card-title-width"><c:out
													value="${wexp.getEmployer_name()}" /></span> <a
												class=" modal-trigger btn-floating btn-flat waves-effect right waves-light"
												style="position: relative; top: -2.55em;"
												href="#modal_editExperience"><i
												class="material-icons white-text editExp">edit</i></a>
										</div>
										<div class="card-content custom-padding white-text">

											<div class="row">
												<p style="display: none;" class="employerName">
													<c:out value="${wexp.getEmployer_name()}" />
												</p>
												<p class="wexp-id" style="display: none;">
													<c:out value="${wexp.getId()}" />
												</p>
												<div class="col s12">
													<p class="no-border">
														<b>Job Position:</b>
													</p>
													<p class="white-border job-position">
														<c:out value="${wexp.getJob_position()}" />
													</p>
												</div>
												<div class="col s12">
													<p class=" no-border">
														<b>Role:</b>
													</p>
													<p class="white-border role">
														<c:out value="${wexp.getRole()}" />
													</p>
												</div>
												<div class="col s12">
													<p class=" no-border">
														<b>Address:</b>
													</p>
													<p class="white-border address">
														<c:out value="${wexp.getAddress()}" />
													</p>
												</div>
												<div class="col s12 m6">
													<p class="no-border">
														<b>Start Date:</b>
													</p>
													<p class="white-border start-date">
														<c:out value="${wexp.getStart_date()}" />
													</p>
												</div>
												<div class="col s12 m6">
													<p class="no-border">
														<b>End Date:</b>
													</p>
													<p class="white-border end-date">
														<c:out value="${wexp.getEnd_date()}" />
													</p>
												</div>
												<div class="col s12">
													<p class=" no-border">
														<b>Present:</b>
													</p>
													<p class="white-border present">
														<c:out value="${wexp.getPresent()}" />
													</p>
												</div>
											</div>

										</div>
									</div>
								</div>

							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ======================(3.i): MODAL: ADDExperience============================ -->
	<div id="modal_addExperience" class="modal">
		<div class="modal-content">
			<h4>Add Experience</h4>
			<div class="row">
				<div class="input-field col s12 m6">
					<input id="a_employer_name" type="text" class="validate"> <label
						class="active" for="a_employer_name">Company /
						Organization</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="a_job_position" type="text" class="validate"> <label
						class="active" for="a_job_position">Job Position</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="a_job_role" type="text" class="validate"> <label
						class="active" for="a_job_role">Job Role:</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="a_address" type="text" class="validate"> <label
						class="active" for="a_street">Address:</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="a_startdate" type="text" class="validate"> <label
						class="active" for="a_startdate">Start Date:</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="a_enddate" type="text" class="validate"> <label
						class="active" for="a_enddate">End Date:</label>
				</div>
				<div class="col s12 right-align">
					<p class="no-border">
						<input class="filled-in white" type="checkbox" id="a_present" />
						<label for="a_present">Present</label>
					</p>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-light btn red">Submit</a>
		</div>
	</div>

	<!-- ======================(3.ii): MODAL: EditExperience============================ -->
	<div id="modal_editExperience" class="modal">
		<input type="hidden" id="e_wexp_id" />
		<div class="modal-content">
			<h4>Edit Experience</h4>
			<div class="row">
				<div class="input-field col s12 m6">
					<input id="e_employer_name" type="text" class="validate"> <label
						class="active" for="e_employer_name">Company /
						Organization</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="e_job_position" type="text" class="validate"> <label
						class="active" for="e_job_position">Job Position</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="e_job_role" type="text" class="validate"> <label
						class="active" for="e_job_role">Job Role:</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="e_address" type="text" class="validate"> <label
						class="active" for="e_street">Address:</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="e_startdate" type="date" class="datepicker"> <label
						class="active" for="e_startdate">Start Date:</label>
				</div>
				<div class="input-field col s12 m6">
					<input id="e_enddate" type="date" class="datepicker"> <label
						class="active" for="e_enddate">End Date:</label>
				</div>
				<div class="col s12 right-align">
					<p class="no-border">
						<input class="filled-in white" type="checkbox" id="present" /> <label
							for="present">Present</label>
					</p>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#"
				class="modal-action modal-close waves-effect waves-light btn red">Update
				Info</a>
		</div>
	</div>

	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="../view/js/bin/materialize.js"></script>
	<script src="../view/js/init.js"></script>
	<script src="../view/js/moment.min.js"></script>
	<script src="../view/js/requests/requests.js"></script>

	<script type="text/javascript">
		// Modal Trigger
		$(document).ready(function() {
			// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
			$('.modal').modal();
		});

		// Select Trigger
		$(document).ready(function() {
			$('select').material_select();
		});

		// Date Initializer
		$('.datepicker').pickadate({
			selectMonths : true, // Creates a dropdown to control month
			selectYears : 15
		// Creates a dropdown of 15 years to control year
		});
	</script>

</body>

</html>