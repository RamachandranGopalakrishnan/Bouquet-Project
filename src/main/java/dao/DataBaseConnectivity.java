package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class DataBaseConnectivity {
       private final String url="jdbc:mysql://localhost:3306/bouquet";
       private final String user="root";
       private final String password="17062001";
       private Connection connect=null;
       private static DataBaseConnectivity dataBaseConnection=null;
       
       
       private DataBaseConnectivity() throws SQLException, ClassNotFoundException {
    	   Class.forName("com.mysql.cj.jdbc.Driver");
    	   connect=DriverManager.getConnection(url,user,password);
       }
       public static  DataBaseConnectivity getConnection() throws SQLException, ClassNotFoundException {
    	   if(dataBaseConnection==null) {
    		   dataBaseConnection=new DataBaseConnectivity();
    	   }
    	   return dataBaseConnection;
       }
       public boolean logInCheck(String userName,String password) throws SQLException{
    	  
    	   String query="select * from login where name=? and passwords=?;";
    	   PreparedStatement preparedStatement=connect.prepareStatement(query);
    	   preparedStatement.setString(1, userName);
    	   preparedStatement.setString(2, password);
    	   
    	   if(preparedStatement.execute()) {
    		   return true;
    	   }
    	   return false;
       }
      
       public boolean signUp(String userName,String password) throws SQLException{
    	  
    	   String query="insert into login(name,passwords)values(?,?);";
    	   PreparedStatement preparedStatement=connect.prepareStatement(query);
    	   preparedStatement.setString(1, userName);
    	   preparedStatement.setString(2,password);
    	   
    	   if(preparedStatement.executeUpdate()==1)return true;
    	   else return false;
       }
       
       public boolean storeOrders(String bouquetId,int quantity,int userId,String cost) throws SQLException {
    	   String query = "INSERT INTO orders (bouquet_id, user_id, quantity, total_cost) VALUES (?, ?, ?, ?)";
           PreparedStatement preparedStatement = connect.prepareStatement(query);
           double costt = Double.parseDouble(cost); // Fetch cost dynamically
           double totalCost = costt * quantity;

           preparedStatement.setInt(1, Integer.parseInt(bouquetId));
           preparedStatement.setInt(2, userId);
           preparedStatement.setInt(3, quantity);
           preparedStatement.setDouble(4, totalCost);

           int rowsAffected = preparedStatement.executeUpdate();
           if (rowsAffected > 0) {
               return true;
           } else {
               return false;
           }
       }
}
