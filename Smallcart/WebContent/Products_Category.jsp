<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="com.crce.category.CategoryWithInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.login{
  text-align: center;
background:#F57E00;
  padding-top: 5vh;
  padding-bottom: 5vh;
  font-size: 3vh;
  font-family: Kanit;
  color: white;
}
</style>
 <style>
    @import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
    </style>
<title>Products</title>
<link rel="stylesheet" href="css/Common_css.css">
</head>
<body style="background-color:#FFE1C2;">
<h1 class="login">VIEW PRODUCTS BY CATEGORIES</h1>

	<div class="container" align="center">
		<div class="row mt-5">

			<div class="col-md-6">
				<%
				CategoryWithInfo ob = (CategoryWithInfo)request.getAttribute("category");
					try {
					Connection connection = null;
					Statement statement = null;
					ResultSet rs = null;
					PreparedStatement preparedStatement = null;
					String url = "jdbc:mysql://localhost:3306/smallcart";
					String username = "root";
					String password = "";
					connection = DriverManager.getConnection(url, username, password);
					String sql = "SELECT * FROM product where category = ?";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1,ob.getC_name());
					rs = preparedStatement.executeQuery();

					while (rs.next()) {
				%>
			
				<div class="card">
					<div class="card-body text-center">
						<h2><%=rs.getString("pname")%></h2>
						<h2><img src="img/product/<%=rs.getString("img")%>" style="height:300px;width:300px" alt="photo"></h2>
						<br>
				        <h3>MRP=Rs.<%=rs.getString("price")%></h3>
				        <h3><%=rs.getString("description") %></h3>
						<form action="CartServlet" method="post">
						<td><input type="hidden" name="pName"
								value="<%=rs.getString("pname")%>" /></td>


							<td><input type="hidden" name="phone"
								value="<%=ob.getPhone()%>" /></td>
							<td><input type="hidden" name="password"
								value="<%=ob.getPassword()%>" /></td> <input type="submit"
								value="ADD TO CART" />
							</td>
							<hr>

						</form>
						
						
					</div>
				</div>
				<%
					}

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>


			</div>
		</div>
	</div>
</body>
</html>