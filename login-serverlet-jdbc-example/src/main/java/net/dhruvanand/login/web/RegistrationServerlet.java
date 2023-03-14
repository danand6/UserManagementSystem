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

@WebServlet("/register")
public class RegistrationServerlet extends HttpServlet {

	RegistrationDao registrationDao = new RegistrationDao();
	
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		LoginRegistration loginRegistration = new LoginRegistration();

		String email = request.getParameter("username");
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		
		loginRegistration.setEmail(email);
		loginRegistration.setFirstName(firstName);
		loginRegistration.setLastName(lastName);
		loginRegistration.setPassword(password);
		loginRegistration.setRole(role);
		
		RequestDispatcher dispatcher = null;
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");		
			 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
					"root", "Dhruv@2001");

					PreparedStatement preparedStatement = connection
							.prepareStatement("INSERT INTO login (username, password, firstName, lastName, role) VALUES (?,?,?,?,?)");
			
				preparedStatement.setString(1, loginRegistration.getEmail());
				preparedStatement.setString(2, loginRegistration.getPassword());
				preparedStatement.setString(3, loginRegistration.getFirstName());
				preparedStatement.setString(4, loginRegistration.getLastName());
				preparedStatement.setString(5, loginRegistration.getRole());

				
				System.out.println(preparedStatement);
				
				int rowCount = preparedStatement.executeUpdate();
				dispatcher = request.getRequestDispatcher("registration");
				
				if(rowCount > 0) {
				//	request.setAttribute("status", "success");
					response.sendRedirect("registrationsuccess.jsp");

				}
				else {
					HttpSession session = request.getSession();

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

	public RegistrationServerlet() {
		// TODO Auto-generated constructor stub
	}

}
