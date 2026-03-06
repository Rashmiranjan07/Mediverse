package com.hmsm.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmsm.dao.UserDAO;
import com.hmsm.db.DBConnection;
import com.hmsm.entity.User;



@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			// get all data/value which is coming from  page for new User
			// registration
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			// Set all data to User Entity
			User user = new User(fullName, email, password);

			// Create Connection with DB
			UserDAO userDAO = new UserDAO(DBConnection.getConn());
			
			//get session
			HttpSession session = req.getSession();
			

			// call userRegister() and pass user object to insert or save user into DB.
			boolean f = userDAO.userRegister(user); // userRegister() method return boolean type value

			if (f == true) {

				session.setAttribute("successMsg", "Register Successfully");
				resp.sendRedirect("register.jsp");//which page you want to show this msg
				//System.out.println("register successfull");
				// out.println("success");

			} else {
				
				session.setAttribute("errorMsg", "Something went wrong!");
				resp.sendRedirect("register.jsp");//which page you want to show this msg
				
				//System.out.println("Error! Something went wrong");
				// out.println("error");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
