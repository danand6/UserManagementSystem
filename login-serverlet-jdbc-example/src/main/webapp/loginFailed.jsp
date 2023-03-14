<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="ISO-8859-1">
<title>Registration and Login App</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>


<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="/login-serverlet-jdbc-example/login.jsp" href="@{/}">
					Dashboard </a>
			</div>

			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="/login-serverlet-jdbc-example/userRegistration.jsp">User
							Login</a></li>
				</ul>
			</div>

		</div>
	</nav>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<h1>Login Failed, please try again</h1>
				
				<div class="form-group">
						<br>  <span><a
							href="/login-serverlet-jdbc-example/login.jsp">Retry here</a></span>
					</div>
				
			</div>
		</div>
	</div>
</body>
</html>