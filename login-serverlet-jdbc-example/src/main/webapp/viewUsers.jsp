<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="net.dhruvanand.login.bean.LoginBean"%>

<% Class.forName("com.mysql.jdbc.Driver");	 %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
<meta charset="ISO-8859-1">
<title>Dhruvs Application</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

</head>

<body>
	<!-- create navigation bar ( header) -->
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
					href="/login-serverlet-jdbc-example/loginsuccess.jsp">Dashboard</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="/login-serverlet-jdbc-example/userRegistration.jsp">Register
							a new User</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="/login-serverlet-jdbc-example/viewUsers.jsp">User Info</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="/login-serverlet-jdbc-example/userlogin.jsp">User Login</a>
					</li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="/login-serverlet-jdbc-example/login.jsp">Logout</a></li>
				</ul>
			</div>

		</div>

	</nav>

	<br>
	<br>

	<div class="container">
		<div class="row">
			<h1>List Users</h1>
		</div>
		<div class="row"></div>

		<%
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
					"root", "Dhruv@2001");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from login") ;
       %>

		<table class="table table-striped table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>User ID</th>
					<th>User Email</th>
					<th>User First Name</th>
					<th>User Last Name</th>
					<th>Role</th>
					<th>Actions</th>
				</tr>
			</thead>
			<% while(resultset.next()){ 
				LoginBean user = new LoginBean();
				user.setId(resultset.getInt(1));
				user.setUsername(resultset.getString(2));
				user.setPassword(resultset.getString(3));
				user.setFirstName(resultset.getString(4));
				user.setLastName(resultset.getString(5));
				user.setRole(resultset.getString(6));
			%>

			<TR>
				<TD><%=user.getId()%></td>
				<TD><%=user.getUsername() %></td>
				<TD><%=user.getFirstName() %></TD>
				<TD><%=user.getLastName()%></TD>
				<TD><%=user.getRole()%></TD>
				<td><a class="btn btn-danger"
					href="delete.jsp?id=<%=user.getId() %>"> Delete </a> <a
					class="btn btn-primary"
					href="update.jsp?id=<%=user.getId()%>"> Update </a></td>
			</TR>
			<%
			}
			%>



		</table>
	</div>
</body>

</html>