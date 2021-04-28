package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String number = request.getParameter("number");
			String password = request.getParameter("password");
			String dbName=null;
			String dbPassword=null;
			String sql = "select * from customer where phone=? and password=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, number);
			ps.setString(2, password);
			loginn ob=new loginn(number,password);
			ResultSet rs=ps.executeQuery();
			PrintWriter out = response.getWriter();
			while(rs.next())
			{
				dbName=rs.getString("phone");
				dbPassword=rs.getString("password");
			}
			if(number.equals(dbName) && password.equals(dbPassword))
			{
				request.setAttribute("loginn",ob);
				RequestDispatcher rd = request.getRequestDispatcher("Customer_home.jsp");
				rd.include(request, response);
			}
			else
			{
			// response.sendRedirect("login.jsp"); 
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
			
			
			
			
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		
	}

	}

}
