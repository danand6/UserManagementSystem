package net.dhruvanand.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dhruvanand.login.bean.LoginBean;
import net.dhruvanand.login.database.userLoginDao;

@WebServlet("/userlogin")
public class userLoginServerlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private userLoginDao userloginDao = new userLoginDao();

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginBean loginBean = new LoginBean();
		
		loginBean.setUsername(username);
		loginBean.setPassword(password);
		
		try {
			if(userloginDao.validate(loginBean)) {
				response.sendRedirect("userLoginsuccess.jsp");
			}
			else {
				response.sendRedirect("userLoginfailed.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	public userLoginServerlet() {
		// TODO Auto-generated constructor stub
	}

}
