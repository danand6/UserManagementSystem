package net.dhruvanand.login.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.dhruvanand.login.database.RegistrationDao;
import net.dhruvanand.login.registration.LoginRegistration;

@WebServlet("/update")
public class UserInfoServerlet extends HttpServlet {

	RegistrationDao registrationDao = new RegistrationDao();

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		LoginRegistration loginRegistration = new LoginRegistration();

		String id = request.getParameter("id");
		String email = request.getParameter("username");
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		RequestDispatcher dispatcher = null;
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet", "root", "Dhruv@2001");

			PreparedStatement preparedStatement = connection.prepareStatement(
					"UPDATE login SET username=?,password=?,firstName=?,lastName=?, role=? WHERE id=?");

			//preparedStatement.setString(1, id);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, firstName);
			preparedStatement.setString(4, lastName);
			preparedStatement.setString(5, role);
			preparedStatement.setString(6, id);

			System.out.println(preparedStatement);

			int rowCount = preparedStatement.executeUpdate();

			if (rowCount > 0) {
				// request.setAttribute("status", "success");
				response.sendRedirect("viewUsers.jsp");

			} else {
				response.sendRedirect("viewUsers.jsp");

			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	public UserInfoServerlet() {
		// TODO Auto-generated constructor stub
	}

}
