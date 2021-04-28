<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="jdbc.Cart"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<style type="text/css">
.login{
  text-align: center;
background:#4DCCBD;
  padding-top: 5vh;
  padding-bottom: 5vh;
  font-size: 3vh;
  font-family: Kanit;
  color: white;

}
</style>
<title>CART</title>
 <style>
    @import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
    </style>
</head>
<body style="background-color:#D0F1ED;">
<h1 style="text-align:center" class="login">VIEW YOUR CART</h1>

	<div class="container" align="center">
		<div class="row mt-5">

			<div class="col-md-6">
				<%
					Cart ob = (Cart) request.getAttribute("Cart");
				    
				try {
					Connection connection = null;
					Statement statement = null;
					ResultSet rs = null;
					PreparedStatement preparedStatement = null;
					String url = "jdbc:mysql://localhost:3306/smallcart";
					String username = "root";
					String password = "";
					connection = DriverManager.getConnection(url, username, password);
					String sql = "SELECT * FROM cart where phone = ?";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, ob.getPhone());
					rs = preparedStatement.executeQuery();
                    String productname="";
                    int totalsum=0;
					while (rs.next()) {
						productname=rs.getString("pName");
				%>

				<div class="card">
					<div class="card-body text-center">
						<h3>
						<%
				try {

				Connection con = null;
				Statement stmt = null;
				ResultSet result = null;
				
				String url1 = "jdbc:mysql://localhost:3306/smallcart";
				String username1 = "root";
				String password1 = "";
				con = DriverManager.getConnection(url1, username1, password1);

				String sql2 = "SELECT * FROM product where pname=?";
				 PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
				preparedStatement2.setString(1, productname);
				result = preparedStatement2.executeQuery();
				int count = 0;
			%>

			<%
				while (result.next()) {
			%>


			<th>
				<h2><%=result.getString("pname")%></h2>
				<h2><img alt="photo" src="img/product/<%=result.getString("img") %>" style="height:300px;width:300px"></h2>
				<h3>
					MRP=Rs.<%=result.getString("price")%></h3>
				<h5>
					Description=<%=result.getString("description")%></h5>
					<%
					int t1=Integer.parseInt(result.getString("price"));
				
					int sum=t1;
					totalsum+=sum;
					%>
					
						

					</div>
				</div>
					<%
				
			}
			%>
             <h3>Total=Rs.<%=totalsum%></h3></th>
             <hr>
			<%
				} catch (Exception e) {
			e.printStackTrace();
			}
			%>
			
			
				
				<%
					}%>
					
				
					
					<%

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>


			</div>
		</div>
	</div>
</body>
</html>