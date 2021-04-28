package jdbc;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addcategory")
public class addcategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addcategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try {
		String Category=request.getParameter("category");
		String sql = "insert into category(category) values(?)";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, Category);
		ps.executeUpdate();
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = request.getRequestDispatcher("viewCategory.jsp");
		rd.include(request, response);     }
     catch (Exception e) {
		e.printStackTrace();
    	 // TODO: handle exception
	}
	}

}
