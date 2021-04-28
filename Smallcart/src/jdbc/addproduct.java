package jdbc;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.MultipartConfigElement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/addproduct")
public class addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addproduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String pname = request.getParameter("field1");
			String price = request.getParameter("field3");
			String category = request.getParameter("field4");
			String description = request.getParameter("field5");
			Part part=request.getPart("image");
			
			String path="C:\\Users\\jaine\\eclipse-workspace\\Smallcart\\WebContent\\img"+File.separator+ "product"+ File.separator+part.getSubmittedFileName();
			System.out.println(path);
			try {
			FileOutputStream fos=new FileOutputStream(path);
			InputStream is=part.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			
			String sql = "insert into product(pname,price,category,description,img) values(?,?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pname);
			ps.setString(2, price);
			ps.setString(3, category);
			ps.setString(4, description);
			ps.setString(5, part.getSubmittedFileName());
	
			ps.executeUpdate();
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = request.getRequestDispatcher("Seller_home.jsp");
			rd.include(request, response);			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
