package servlets;

import dao.DataBaseConnectivity;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
@WebServlet("/Orders")
public class Orders extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bouquetId = request.getParameter("bouquetId");
        String quantityStr = request.getParameter("quantity");
        String cost=request.getParameter("cost");
        System.out.println(cost);
        int userId = (int)(Math.random()*1000); 
        int quantity = Integer.parseInt(quantityStr);
        DataBaseConnectivity dataBaseConnect = null;
        if (bouquetId != null && quantityStr != null) {
        try {
			dataBaseConnect = DataBaseConnectivity.getConnection();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
           try {
			if (dataBaseConnect.storeOrders(bouquetId,quantity,userId,cost)) {
			            response.sendRedirect("ordersSuccess.jsp");
			        } else {
			            response.sendRedirect("ordersFail.jsp");
			        }
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
            
        }
        
    }
}

