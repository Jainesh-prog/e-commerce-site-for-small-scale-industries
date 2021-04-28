package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
try {
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		String pName=request.getParameter("pName");
		if(pName==null)
		{
			Cart ob=new Cart(phone,password);
			request.setAttribute("Cart",ob);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("DisplayCart.jsp");
			requestDispatcher.forward(request, response);
		}
		else
		{
		String sql = "insert into cart(phone,password,pName) values(?,?,?)";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
		PreparedStatement preparedStatement = con.prepareStatement(sql);
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1,phone);
		preparedStatement.setString(2,password);
		preparedStatement.setString(3,pName);
		preparedStatement.executeUpdate();
		

		Cart ob=new Cart(phone,password);
		request.setAttribute("Cart",ob);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("DisplayCart.jsp");
		requestDispatcher.forward(request, response);
		}
}
catch (Exception e) {
	// TODO: handle exception
}
		
	}

}
