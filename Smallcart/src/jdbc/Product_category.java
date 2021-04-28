package jdbc;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crce.category.Category;
import com.crce.category.CategoryWithInfo;

/**
 * Servlet implementation class ProductByCategoryServlet
 */
@WebServlet("/Product_category")
public class Product_category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product_category() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String category=request.getParameter("category");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		CategoryWithInfo ob=new CategoryWithInfo(phone,password,category);
		request.setAttribute("category",ob);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("Products_Category.jsp");
		requestDispatcher.forward(request, response);

	}

}