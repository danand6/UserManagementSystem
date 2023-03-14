package net.dhruvanand.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.dhruvanand.login.bean.LoginBean;


public class userLoginDao {

	public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
		boolean status = false;
		
		String DRIVER = "com.mysql.jdbc.Driver";
	       Class.forName(DRIVER);

		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/serverlet",
				"root", "Dhruv@2001");

				PreparedStatement preparedStatement = connection
						.prepareStatement("select* from login where username = ? and password = ? and role = ?")) 
		{
			preparedStatement.setString(1, loginBean.getUsername());
			preparedStatement.setString(2, loginBean.getPassword());
			preparedStatement.setString(3,  "user");
			
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}

	public userLoginDao() {
		// TODO Auto-generated constructor stub
		
	}

}
