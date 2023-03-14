<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%
String id = request.getParameter("id");
String email = request.getParameter("username");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String password = request.getParameter("password");
String role = request.getParameter("role");
if (id != null) {
	Connection con = null;
	PreparedStatement ps = null;
	int personID = Integer.parseInt(id);
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet", "root", "Dhruv@2001");
		String sql = "Update login set id=?, username=?, firstname=?,lastname=?,password=?,role=? where id=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, email);
		ps.setString(3, firstname);
		ps.setString(4, lastname);
		ps.setString(5, password);
		ps.setString(6,role);
		int i = ps.executeUpdate();
		if (i > 0) {
			response.sendRedirect("viewUsers.jsp");
		} else {
			response.sendRedirect("viewUsers.jsp");
;
		
		}
	} catch (SQLException sql) {
		out.println(sql);
		response.sendRedirect("viewUsers.jsp");

	}
}
%>

