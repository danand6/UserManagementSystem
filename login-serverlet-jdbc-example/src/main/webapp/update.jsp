<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String id = request.getParameter("id");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet", "root", "Dhruv@2001");
	PreparedStatement preparedStatement = connection.prepareStatement("SELECT* FROM login WHERE id = ?");
	preparedStatement.setString(1, id);
	ResultSet resultset = preparedStatement.executeQuery();
	while (resultset.next()) {
%>

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
				<h1>User Update Form</h1>
				<form action="<%=request.getContextPath()%>/update" method = "post">
					<div class="form-group">
						<label for="id">  </label> <input type="hidden"
							name="id" class="form-control"
							value="<%=resultset.getString("id")%>">
					</div>
					<div class="form-group">
						<label for="username"> Email </label> : <input type="text"
							name="username" class="form-control"
							value="<%=resultset.getString("username")%>">
					</div>
					<br>
					<div class="form-group">
						<label for="firstname"> First Name </label> : <input type="text"
							name="firstname" class="form-control"
							value="<%=resultset.getString("firstname")%>">
					</div>
					<br>
					<div class="form-group">
						<label for="lastname"> Last Name </label> : <input type="text"
							name="lastname" class="form-control"
							value="<%=resultset.getString("lastname")%>">
					</div>
					<br>

					<div class="form-group">
						<label for="password">Password</label>: <input type="password"
							name="password" class="form-control"
							
							value="<%=resultset.getString("password")%>" />
					</div>
					<br>
					<div class="form-group">
						<label for="role"> Role </label> : <input type="text"
							name="role" class="form-control"
							value="<%=resultset.getString("role")%>">
					</div>
					<br> <input type="submit" value="Update"  />
				</form>
			</div>
		</div>
	</div>
</body>
</html>







<%
}
	//connection.close();
} catch (Exception e) {
System.out.print(e);
e.printStackTrace();
}
%>

