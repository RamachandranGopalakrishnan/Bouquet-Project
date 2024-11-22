package servlets;

import java.io.IOException;
import java.sql.SQLException;

import dao.DataBaseConnectivity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/SignUp")
public class SignUp extends HttpServlet{
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
		
		try {
			DataBaseConnectivity databaseConnection=DataBaseConnectivity.getConnection();
			if(databaseConnection.signUp(userName,password)) {
				response.sendRedirect("logIn.jsp");
			}
			else {
				response.sendRedirect("signUp.jsp");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
