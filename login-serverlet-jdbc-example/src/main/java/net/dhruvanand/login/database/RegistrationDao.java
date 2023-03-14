package net.dhruvanand.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.dhruvanand.login.registration.LoginRegistration;

public class RegistrationDao {

	public boolean register(LoginRegistration loginRegistration) throws ClassNotFoundException {

		boolean status = false;

		String DRIVER = "com.mysql.jdbc.Driver";
		Class.forName(DRIVER);
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
				"root", "Dhruv@2001");

				PreparedStatement preparedStatement = connection
						.prepareStatement("INSERT INTO login (username, password) VALUES (?,?)") )
		{
			preparedStatement.setString(1, loginRegistration.getEmail());
			preparedStatement.setString(2, loginRegistration.getPassword());
			
			System.out.println(preparedStatement);
			
			preparedStatement.executeUpdate();
			status = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;

	}

	public RegistrationDao() {
		// TODO Auto-generated constructor stub
	}

}
