<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>RecommendME | My Resume</title>

<!-- CSS  -->
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
			<li><a href="../reco/loginRedirect" method = "GET">Recommend Me</a></li>
			<li><a href="../reco/viewreco">My Recommendations</a></li>
			<li><a href="../reco/shareRecommendation">Share Recommendations</a></li>
			<li><a href="../reco/searchPage">Check Status</a></li>
			<li><a href="../reco/logout">Logout</a></li>
		</ul>
			<a href="#" data-activates="nav-mobile" class="button-collapse"><i
				class="material-icons">menu</i></a>
		</div>
	</nav>

	<!-- ======================Ask For Recommendation ============================ -->
	<div class="section full-width no-pad-bot z-depth-2">
		<div class="row">
			<div class="col s12 m4">
				<div class="card">
					<div class="card-image">
						<img
							src="http://www.ecomp.poli.br/~wcci2018/wp-content/uploads/2017/03/word-doc-icon.png">
					</div>
					<div class="card-content">
						<form action="../../ResumeServlet" method="GET">
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="test1" value="pdf" />
									<label for="test1">PDF</label>
								</p>
							</div>
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="test2" value="docx" />
									<label for="test2">DOCX</label>
								</p>
							</div>
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="test3" value="txt" />
									<label for="test3">TEXT</label>
								</p>
							</div>
							<input type="hidden" name="template" value="templateOne" />
						 
					</div>
					<br>
					<div class="card-action">
						<input type="submit" value="Create">
					</div>
					</form>
				</div>
			</div>
			<div class="col s12 m4">
				<div class="card">
					<div class="card-image">
						<img
							src="http://www.ecomp.poli.br/~wcci2018/wp-content/uploads/2017/03/word-doc-icon.png">
					</div>
					<div class="card-content">
						<form action="../../ResumeServlet" method="GET">
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="w1" value="pdf" />
									<label for="w1">PDF</label>
								</p>
							</div>
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="w2" value="docx" />
									<label for="w2">DOCX</label>
								</p>
							</div>
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="w3" value="txt" />
									<label for="w3">TEXT</label>
								</p>
							</div>
							<input type="hidden" name="template" value="templateTwo" />
				 
					</div>
					<br>
					<div class="card-action">
						<input type="submit" value="Create">
					</div>
					</form>
				</div>
			</div>
			<div class="col s12 m4">
				<div class="card">
					<div class="card-image">
						<img
							src="http://www.ecomp.poli.br/~wcci2018/wp-content/uploads/2017/03/word-doc-icon.png">
					</div>
					<div class="card-content">
						<form action="../../ResumeServlet" method="GET">
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="test4" value="pdf" />
									<label for="test4">PDF</label>
								</p>
							</div>
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="test5" value="docx" />
									<label for="test5">DOCX</label>
								</p>
							</div>
							<div class="col s12 m4">
								<p>
									<input name="filetype" type="radio" id="test6" value="txt" />
									<label for="test6">TEXT</label>
								</p>
							</div>
							<input type="hidden" name="template" value="templateThree" />
						 
					</div>
					<br>
					<div class="card-action">
						<input type="submit" value="Create">
						
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="js/bin/materialize.js"></script>
	<script src="js/init.js"></script>

</body>

</html>
