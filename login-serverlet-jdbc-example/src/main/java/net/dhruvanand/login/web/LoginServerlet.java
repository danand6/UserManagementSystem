package net.dhruvanand.login.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dhruvanand.login.bean.LoginBean;
import net.dhruvanand.login.database.LoginDao;

@WebServlet("/login")
public class LoginServerlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private LoginDao loginDao = new LoginDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginBean user = new LoginBean();
		boolean status = false;
		boolean version = false;
		user.setUsername(username);
		user.setPassword(password);
		Connection connection;
	
			
			
			try {
				status = loginDao.validate(user);
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			
			if(status) {
				
				response.sendRedirect("loginsuccess.jsp");
				
				
			}
			else {

				try {
					version = loginDao.validate1(user);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				if(version) {
					response.sendRedirect("userLoginsuccess.jsp");


			}else {
				response.sendRedirect("loginFailed.jsp");

				
				

		} 
		}

	}

}

