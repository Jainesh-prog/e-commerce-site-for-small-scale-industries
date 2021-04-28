<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="jdbc.loginn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <title>Profile</title>
    <link rel="stylesheet" href="css/Userinfo.css">
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@1,300&display=swap');
</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Catamaran:wght@300&family=Kanit&display=swap');
</style>
</head>
<body style="background-color:#EBEBEB;">

	<div class="container" align="center">
		<div class="row mt-5">

			<div class="col-md-6">
				<%
			 String phone=request.getParameter("phone");
				try {
					Connection connection = null;
					Statement statement = null;
					ResultSet rs = null;
					PreparedStatement preparedStatement = null;
					String url = "jdbc:mysql://localhost:3306/smallcart";
					String username = "root";
					String password = "";
					connection = DriverManager.getConnection(url, username, password);
					String sql = "SELECT * FROM customer where phone = ?";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, phone);
					rs = preparedStatement.executeQuery();

					while (rs.next()) {
				%>

				<div>
      <h1 class="head">Profile</h1>
    </div>
    

    <div class="card">


						<h2 style=" text-align:center; font-size:5vh; font-family:Work sans ">
							WELCOME
							<%=rs.getString("name")%> !
							</h2>

						<h2 style="text-align:center; position:relative; top:3vh; font-family:Kanit; ">YOUR DETAILS:</h2>

						<div style="position:absolute; top:55vh; left:39vw;">
						<div id="email">EMAIL: <a><%=rs.getString("email")%></a> </div>
						</div>

						<div style="position:absolute; top:65vh; left:39vw;">
						<div id="email">ADDRESS:<a><%=rs.getString("address")%></a></div>
						</div>

							<div style="position:absolute; top:75vh; left:39vw;">
						<div id="email">CONTACT:<a><%=rs.getString("phone")%></a></div>
							</div>				


					</div>
					<form action="CartServlet" method="post">
<td><input type="hidden" name="phone" value="<%=rs.getString("phone")%>" /></td>
<td><input type="hidden" name="password" value="<%=rs.getString("password")%>" /></td>

	<input type="submit" style="position:absolute;left:45.5vw;top:20vh;" value="GO TO YOUR CART" /></td>
	</form>
			
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