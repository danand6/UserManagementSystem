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
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<br> <br>
				<h1>Employee Registration Form</h1>
				<form action="<%=request.getContextPath()%>/register" method="post">
					<div class="form-group">
						<label for="username"> Email </label> : <input type="text"
							class="form-control" id="username" name="username"
							placeholder="Enter Email" autofocus="autofocus">
					</div>
					<br>
					<div class="form-group">
						<label for="firstname"> First Name </label> : <input type="text"
							class="form-control" id="firstname" name="firstname"
							placeholder="Enter your First Name" autofocus="autofocus">
					</div>
					<br>
					<div class="form-group">
						<label for="lastname"> Last Name </label> : <input type="text"
							class="form-control" id="lastname" name="lastname"
							placeholder="Enter your Last Name" autofocus="autofocus">
					</div>
					<br>

					<div class="form-group">
						<label for="password">Password</label>: <input type="password"
							id="password" name="password" class="form-control"
							placeholder="Enter Password" />
					</div>
					<br>
					<div class="form-group">
						<label for="role"> Role </label> : <input type="text"
							class="form-control" id="role" name="role"
							placeholder="Enter your Role(user/admin)" autofocus="autofocus">
					</div>
					<br> <input type="submit" value="Register" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>