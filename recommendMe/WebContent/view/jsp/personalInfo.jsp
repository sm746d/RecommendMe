<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
  <title>Recommend Me | Index</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="../../view/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
  <link href="../../view/css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
</head>

<body class="grey lighten-5">
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
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>

  <!-- ======================Section-1: Personal Info============================ -->
  <div class="section no-pad-bot">
    <div class="row">
      <div class="col s12">
        <div class="card white ">
          <div class="card-section teal z-depth-2">
            <!-- ======================1.1: Personal Info============================ -->
            <span class="card-title white-text">Personal Info</span>
          </div>
          <div class="card-content">
            <div class="row">
              <span class="card-title"><i class="material-icons">account_circle</i> Basic Info:</span>
              <div class="col s12 m4">
                <p class="red-text"><b>First Name:</b></p>
                <p></p>
              </div>
              <div class="col s12 m4">
                <p class="red-text"><b>Last Name:</b></p>
                <p></p>
              </div>
              <div class="col s12 m4">
                <p class="red-text no-border"><b>Gender:</b></p>
                <p class="no-border"></p>
              </div>
            </div>

            <!-- ======================1.2: Address============================ -->
            <div class="row">
              <span class="card-title"><i class="material-icons">home</i> Address:</span>
              <div class="col s12 m3">
                <p class="red-text"><b>Street:</b></p>
                <p></p>
              </div>
              <div class="col s12 m3">
                <p class="red-text"><b>City:</b></p>
                <p></p>
              </div>
              <div class="col s12 m3">
                <p class="red-text"><b>State:</b></p>
                <p></p>
              </div>
              <div class="col s12 m3">
                <p class="red-text no-border"><b>PinCode:</b></p>
                <p class="no-border"></p>
              </div>
            </div>

            <!-- ======================1.3: Contact============================ -->
            <div class="row">
              <span class="card-title"><i class="material-icons">contacts</i> Contact:</span>
              <div class="col s12 m6">
                <p class="red-text"><b>Phone:</b></p>
                <p> (xxx) xxx-xxxx</p>
              </div>
              <div class="col s12 m6">
                <p class="red-text no-border"><b>Email:</b></p>
                <p class="no-border"></p>
              </div>
            </div>

            <br>

          </div>
          <div class="card-action right-align brown lighten-1">
            <a class="modal-trigger brown white-text waves-effect" href="#modal_pinfo"><i class="material-icons">edit</i>Edit Info</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ======================(1.i): MODAL: Personal Info============================ -->
  <div id="modal_pinfo" class="modal">
    <div class="modal-content">
      <h4>Personal Info</h4>
      <div class="row">
        <div class="input-field col s12 m4">
          <input value="" id="first_name" type="text" class="validate">
          <label class="active" for="first_name">First Name</label>
        </div>
        <div class="input-field col s12 m4">
          <input value="" id="last_name" type="text" class="validate">
          <label class="active" for="last_name">Last Name</label>
        </div>
        <div class="input-field col s12 m4">
          <select>
            <option value="" disabled selected>Choose your option</option>
            <option value="Male" selected>Male</option>
            <option value="Female">Female</option>
          </select>
          <label>Gender</label>
        </div>
      </div>

      <div class="divider"></div>

      <div class="row">
        <div class="input-field col s12 m3">
          <input value="" id="street" type="text" class="validate">
          <label class="active" for="street">Street</label>
        </div>
        <div class="input-field col s12 m3">
          <input value="" id="city" type="text" class="validate">
          <label class="active" for="city">City</label>
        </div>
        <div class="input-field col s12 m3">
          <input value="" id="state" type="text" class="validate">
          <label class="active" for="state">State</label>
        </div>
        <div class="input-field col s12 m3">
          <input value="" id="pincode" type="text" class="validate">
          <label class="active" for="pincode">Pin Code</label>
        </div>
      </div>

      <div class="divider"></div>

      <div class="row">
        <div class="input-field col s12 m6">
          <input value="" id="phone" type="text" class="validate">
          <label class="active" for="phone">Phone</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="" id="email" type="email" class="validate">
          <label class="active" for="email">Email</label>
        </div>
      </div>

    </div>
    <div class="modal-footer">
      <a href="#" class="modal-action modal-close waves-effect waves-light btn red" type="submit">Apply Changes</a>
    </div>
  </div>


  <!-- ======================Section-2: Educational Info============================ -->
  <div class="section no-pad-bot">
    <div class="row">
      <div class="col s12">
        <div class="card white ">
          <div class="card-section teal z-depth-2">
            <span class="card-title white-text">Educational Info</span>
            <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-teal" style="position:relative;top:-0.25em;" href="#modal_addEdu"><i class="material-icons white-text">add</i></a>
          </div>
          <div class="card-content">
            <div class="row">
              <!-- ======================DIV - Education: 1============================ -->
              <div class="col s12 m6">
                <div class="card blue-grey darken-2">
                  <div class="card-section">
                    <span class="card-title no-title-border white-text card-title-width">California State University, Fullerton</span>
                    <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-light" style="position:relative;top:-2.55em;" href="#modal_editEdu"><i class="material-icons white-text">edit</i></a>
                  </div>
                  <div class="card-content custom-padding white-text">
                    <p class="no-border">
                      <b>Degree: </b> Masters or Equivalent
                    </p>
                    <p class="no-border">
                      <b>Major: </b> Computer Science
                    </p>
                    <p class="no-border">
                      <b>Date: </b>
                    </p>
                  </div>
                </div>
              </div>
              <!-- ======================DIV END - Educational 1============================ -->

              <div class="col s12 m6">
                <div class="card blue-grey darken-2">
                  <div class="card-section">
                    <span class="card-title no-title-border white-text card-title-width">California State University, Fullerton</span>
                    <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-light" style="position:relative;top:-2.55em;" href="#modal_editEdu"><i class="material-icons white-text">edit</i></a>
                  </div>
                  <div class="card-content custom-padding white-text">
                    <p class="no-border">
                      <b>Degree: </b> Masters or Equivalent
                    </p>
                    <p class="no-border">
                      <b>Major: </b> Computer Science
                    </p>
                    <p class="no-border">
                      <b>Date: </b>
                    </p>
                  </div>
                </div>
              </div>

              <div class="col s12 m6">
                <div class="card blue-grey darken-2">
                  <div class="card-section">
                    <span class="card-title no-title-border white-text card-title-width">California State University, Fullerton</span>
                    <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-light" style="position:relative;top:-2.55em;" href="#modal_editEdu"><i class="material-icons white-text">edit</i></a>
                  </div>
                  <div class="card-content custom-padding white-text">
                    <p class="no-border">
                      <b>Degree: </b> Masters or Equivalent
                    </p>
                    <p class="no-border">
                      <b>Major: </b> Computer Science
                    </p>
                    <p class="no-border">
                      <b>Date: </b>
                    </p>
                  </div>
                </div>
              </div>
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
      <div class="row">
        <div class="input-field col s12">
          <input id="college_name" type="text" class="validate">
          <label class="active" for="college_name">College Name</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="degree_of_certificate" type="text" class="validate">
          <label class="active" for="degree_of_certificate">Degree:</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="major_name" type="text" class="validate">
          <label class="active" for="major_name">Major:</label>
        </div>
        <div class="input-field col s12">
          <input id="graduation_date" type="text" class="validate">
          <label class="active" for="graduation_date">Date</label>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves btn red">Add</a>
    </div>
  </div>

  <!-- ======================(2.ii): MODAL: Edit Educational Info============================ -->
  <div id="modal_editEdu" class="modal">
    <div class="modal-content">
      <h4>Edit Educational Info</h4>
      <div class="row">
        <div class="input-field col s12">
          <input value="California State University, Fullerton" id="e_college_name" type="text" class="validate">
          <label class="active" for="e_college_name">College Name</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="Masters or Equivalent" id="e_degree_of_certificate" type="text" class="validate">
          <label class="active" for="e_degree_of_certificate">Degree:</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="Computer Science" id="e_major_name" type="text" class="validate">
          <label class="active" for="e_major_name">Major:</label>
        </div>
        <div class="input-field col s12">
          <input value="05/19/2018" id="e_graduation_date" type="text" class="validate">
          <label class="active" for="e_graduation_date">Date</label>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-light btn red">Update Info</a>
    </div>
  </div>


  <!-- ======================Section-3: EXPERIENCE============================ -->
  <div class="section no-pad-bot">
    <div class="row">
      <div class="col s12">
        <div class="card white ">
          <div class="card-section teal z-depth-2">
            <span class="card-title white-text">Experience</span>
            <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-teal" style="position:relative;top:-0.25em;" href="#modal_addExperience"><i class="material-icons white-text">add</i></a>
          </div>
          <div class="card-content">
            <div class="row">
              <!-- ======================DIV - Experience: 1============================ -->
              <div class="col s12 m6">
                <div class="card red lighten-1">
                  <div class="card-section custom-border">
                    <span class="card-title no-title-border white-text card-title-width">Employer Name</span>
                    <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-light" style="position:relative;top:-2.55em;" href="#modal_editExperience"><i class="material-icons white-text">edit</i></a>
                  </div>
                  <div class="card-content custom-padding white-text">
                    <div class="row">
                      <div class="col s12">
                        <p class="no-border"><b>Job Position:</b></p>
                        <p class="white-border"> Intern</p>
                      </div>
                      <div class="col s12">
                        <p class=" no-border"><b>Role:</b></p>
                        <p class="white-border"> Software Developer</p>
                      </div>
                      <div class="col s12">
                        <p class=" no-border"><b>Address:</b></p>
                        <p class="white-border"> Street, City, State - Pincode</p>
                      </div>
                      <div class="col s12 m6">
                        <p class="no-border"><b>Start Date:</b></p>
                        <p class="white-border">mm/dd/yyyy</p>
                      </div>
                      <div class="col s12 m6">
                        <p class="no-border"><b>End Date:</b></p>
                        <p class="white-border">mm/dd/yyyy</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- ======================DIV END - Educational 1============================ -->

              <div class="col s12 m6">
                <div class="card red lighten-1">
                  <div class="card-section custom-border">
                    <span class="card-title no-title-border white-text card-title-width">Employer Name</span>
                    <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-light" style="position:relative;top:-2.55em;" href="#modal_editExperience"><i class="material-icons white-text">edit</i></a>
                  </div>
                  <div class="card-content custom-padding white-text">
                    <div class="row">
                      <div class="col s12">
                        <p class="no-border"><b>Job Position:</b></p>
                        <p class="white-border"> Intern</p>
                      </div>
                      <div class="col s12">
                        <p class=" no-border"><b>Role:</b></p>
                        <p class="white-border"> Software Developer</p>
                      </div>
                      <div class="col s12">
                        <p class=" no-border"><b>Address:</b></p>
                        <p class="white-border"> Street, City, State - Pincode</p>
                      </div>
                      <div class="col s12 m6">
                        <p class="no-border"><b>Start Date:</b></p>
                        <p class="white-border">mm/dd/yyyy</p>
                      </div>
                      <div class="col s12 m6">
                        <p class="no-border"><b>End Date:</b></p>
                        <p class="white-border">N/A (Present)</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col s12 m6">
                <div class="card red lighten-1">
                  <div class="card-section custom-border">
                    <span class="card-title no-title-border white-text card-title-width">Employer Name</span>
                    <a class=" modal-trigger btn-floating btn-flat waves-effect right waves-light" style="position:relative;top:-2.55em;" href="#modal_editExperience"><i class="material-icons white-text">edit</i></a>
                  </div>
                  <div class="card-content custom-padding white-text">
                    <div class="row">
                      <div class="col s12">
                        <p class="no-border"><b>Job Position:</b></p>
                        <p class="white-border"> Intern</p>
                      </div>
                      <div class="col s12">
                        <p class=" no-border"><b>Role:</b></p>
                        <p class="white-border"> Software Developer</p>
                      </div>
                      <div class="col s12">
                        <p class=" no-border"><b>Address:</b></p>
                        <p class="white-border"> Street, City, State - Pincode</p>
                      </div>
                      <div class="col s12 m6">
                        <p class="no-border"><b>Start Date:</b></p>
                        <p class="white-border">mm/dd/yyyy</p>
                      </div>
                      <div class="col s12 m6">
                        <p class="no-border"><b>End Date:</b></p>
                        <p class="white-border">mm/dd/yyyy</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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
          <input id="a_job_position" type="text" class="validate">
          <label class="active" for="a_job_position">Job Position</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="a_job_role" type="text" class="validate">
          <label class="active" for="a_job_role">Job Role:</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="a_street" type="text" class="validate">
          <label class="active" for="a_street">Street:</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="a_city" type="text" class="validate">
          <label class="active" for="a_city">City</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="a_state" type="text" class="validate">
          <label class="active" for="a_state">State</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="a_pincode" type="text" class="validate">
          <label class="active" for="a_pincode">ZipCode:</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="a_startdate" type="text" class="validate">
          <label class="active" for="a_startdate">Start Date:</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="a_enddate" type="text" class="validate">
          <label class="active" for="a_enddate">End Date:</label>
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
      <a href="#!" class="modal-action modal-close waves-effect waves-light btn red">Submit</a>
    </div>
  </div>

  <!-- ======================(3.ii): MODAL: EditExperience============================ -->
  <div id="modal_editExperience" class="modal">
    <div class="modal-content">
      <h4>Edit Experience</h4>
      <div class="row">
        <div class="input-field col s12 m6">
          <input value="Intern" id="e_job_position" type="text" class="validate">
          <label class="active" for="e_job_position">Job Position</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="Software Developer" id="e_job_role" type="text" class="validate">
          <label class="active" for="e_job_role">Job Role:</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="2008 N. Deerpark Dr." id="e_street" type="text" class="validate">
          <label class="active" for="e_street">Street:</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="Fullerton" id="e_city" type="text" class="validate">
          <label class="active" for="e_city">City</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="California" id="e_state" type="text" class="validate">
          <label class="active" for="e_state">State</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="92831" id="e_pincode" type="text" class="validate">
          <label class="active" for="e_pincode">ZipCode:</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="15/06/2016" id="e_startdate" type="date" class="datepicker">
          <label class="active" for="e_startdate">Start Date:</label>
        </div>
        <div class="input-field col s12 m6">
          <input value="25/08/2016" id="e_enddate" type="date" class="datepicker">
          <label class="active" for="e_enddate">End Date:</label>
        </div>
        <div class="col s12 right-align">
          <p class="no-border">
            <input class="filled-in white" type="checkbox" id="present" />
            <label for="present">Present</label>
          </p>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <a href="#" class="modal-action modal-close waves-effect waves-light btn red">Update Info</a>
    </div>
  </div>

  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="../../view/js/ui/bin/materialize.js"></script>

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
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  </script>

</body>

</html>
