<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>RecommendMe | My Recommendations</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
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
		</ul>
		<a href="#" data-activates="nav-mobile" class="button-collapse"><i
			class="material-icons">menu</i></a>
	</div>
	</nav>
	<div class="section full-width no-pad-bot z-depth-2">
		<div class="container">
			<div class="row">
				<c:forEach var="reco" items="${lst}">
					<!-- Recommendations Content div -->
					<div class="col s12">
						<div class="card white ">
							<div class="card-section blue-grey darken-2 z-depth-2">
								<div class="row">
									<div class="col s12">
										<span class="card-title white-text">${reco.getFirstName()},
											<b>${reco.getLastName()} | ${reco.getEmailId()} |
												${reco.getRecoCell()}</b>
										</span>
									</div>
								</div>
							</div>
							<div class="card-content">
								<div class="row">
									<div class="col s12 m4">
										<p class="red-text">
											<b>Company:</b>
										</p>
										<p>${reco.getCompanyName()}</p>
									</div>
									<div class="col s12 m4">
										<p class="red-text">
											<b>Designation:</b>
										</p>
										<p>${reco.getDesignation()}</p>
									</div>
									<div class="col s12 m4">
										<p class="red-text no-border">
											<b>Date:</b>
										</p>
										<p class="no-border">${reco.getRecommendDate()}</p>
									</div>
								</div>
							</div>
							<div class="card-section">
								<div class="row">
									<div class="col s12">
										<p class="p-style">${reco.getRecoContent()}</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="js/bin/materialize.js"></script>
	<script src="js/init.js"></script>

</body>
</html>