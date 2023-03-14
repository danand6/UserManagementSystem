package net.dhruvanand.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

import net.dhruvanand.login.bean.LoginBean;


public class LoginDao {

	public boolean validate(LoginBean user) throws ClassNotFoundException {
		boolean status = false;
	
		String DRIVER = "com.mysql.jdbc.Driver";
	       Class.forName(DRIVER);
	
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
				"root", "Dhruv@2001");

					
				PreparedStatement preparedStatement = connection
						.prepareStatement("select* from login where username = ? and password = ? and role = ?")) 
		{
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, "admin");
			
			
			
			
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			status = rs.next();


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	public boolean validate1(LoginBean user) throws ClassNotFoundException {
		boolean status = false;
	
		String DRIVER = "com.mysql.jdbc.Driver";
	       Class.forName(DRIVER);
	
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
				"root", "Dhruv@2001");

					
				PreparedStatement preparedStatement = connection
						.prepareStatement("select* from login where username = ? and password = ? and role = ?")) 
		{
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, "user");
			
			
			
			
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			status = rs.next();


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	public long delete(String username) {
		int i = 0;
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
				"root", "Dhruv@2001");

				PreparedStatement preparedStatement = connection
						.prepareStatement("DELETE from login where username=?")) 
		{
			preparedStatement.setString(1, username);
			

			i = preparedStatement.executeUpdate();
			System.out.println(preparedStatement);
		

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public LoginDao() {
		// TODO Auto-generated constructor stub
		
	}

}
