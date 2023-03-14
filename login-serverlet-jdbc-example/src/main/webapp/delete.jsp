<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id = request.getParameter("id");
try {   
   Class.forName("com.mysql.jdbc.Driver");		
	 Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
			"root", "Dhruv@2001");

			PreparedStatement preparedStatement = connection
					.prepareStatement("DELETE FROM login WHERE id = ?");
	
			preparedStatement.setString(1, id);
			System.out.println(preparedStatement);
			
			int rowCount = preparedStatement.executeUpdate();
			
			if(rowCount > 0) {
				//	request.setAttribute("status", "success");
					response.sendRedirect("viewUsers.jsp");

				}
				else {
					response.sendRedirect("viewUsers.jsp");

				}
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>