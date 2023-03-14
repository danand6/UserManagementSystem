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
						href="/login-serverlet-jdbc-example/userlogin.jsp">User
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
				<h1>Admin Login Form</h1>
				<form action="<%=request.getContextPath()%>/login" method="post">
					<div class="form-group">
						<label class="col-3 text-right" for="username"> Username </label>
						: <input type="text" class="form-control col-md-9" id="username"
							name="username" placeholder="Enter Username"
							autofocus="autofocus">
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-3 text-right" for="password">Password</label>: <input
							type="password" id="password" name="password"
							class="form-control col-md-9" placeholder="Enter Password" />
					</div>
					<br> <br> <input type="submit" value="Submit" />


					<div class="form-group">
						<br>  <span>New user? <a
							href="/login-serverlet-jdbc-example/registration.jsp">Register
								here</a></span>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>