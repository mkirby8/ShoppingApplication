package controller;

import java.io.IOException;
import javax.servlet.http.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import dao.AdminDAO;
import java.util.List;
import java.util.ArrayList;

/**
 * Servlet implementation class AdminViewUsers
 */
@WebServlet("/AdminViewUsers")
public class AdminViewUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<User> allUsers = AdminDAO.viewUsers();
	
		request.setAttribute("users", allUsers);
		RequestDispatcher rd = request.getRequestDispatcher("viewUsers.jsp");
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
