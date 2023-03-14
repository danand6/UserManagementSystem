package net.dhruvanand.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dhruvanand.login.database.LoginDao;

public class userDeleteServerlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	LoginDao loginDao = new LoginDao();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String username = request.getParameter("username");

		loginDao.delete(username);
		
		
	}

	public userDeleteServerlet() {
		// TODO Auto-generated constructor stub
	}

}
