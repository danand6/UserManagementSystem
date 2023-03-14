<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Registration and Login App</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>

<body>

	<!-- create navigation bar ( header) -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/login-serverlet-jdbc-example/loginsuccess.jsp" href="@{/}"> Dashboard </a>
			</div>

			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="/login-serverlet-jdbc-example/userRegistration.jsp">Register a new User</a>
					</li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="/login-serverlet-jdbc-example/viewUsers.jsp">User Info</a>
					</li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="/login-serverlet-jdbc-example/login.jsp">Logout</a>
					</li>
				</ul>
			</div>

		</div>
	</nav>
	<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="/">User Info</a>
					</li>
				</ul>
				<ul class="nav navbar-nav">
					<li sec:authorize="isAuthenticated()"><a th:href="@{/logout}">Logout</a></li>
				</ul>
			</div>
	<div class="container">
		<div class="row">
			<h1> Admin Dashboard </h1>
		</div>
		
	</div>
</body>

</html>