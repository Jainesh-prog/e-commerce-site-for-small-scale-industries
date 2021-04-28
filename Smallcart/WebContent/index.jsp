<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SmallCart</title>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
.jumbotron{

background: -webkit-linear-gradient(left,#DBF9F4, #E6FDFF, #D9D7DD, #B07BAC,#5F7367);

}

</style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
  <a class="navbar-brand" href="index.jsp">SmallCart</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active" >
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
          Blog
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="readblog.jsp">Read Blog</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="addBlog.jsp">Add Blog</a>
        </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link enabled" href="#">Contact</a>
      </li>
      
    </ul>
    
  </div>
</nav>

        <div class="container-fluid m-0 p-0" >
            <div class="jumbotron">
                <h2>Welcome To Small Cart</h2>  
                <p>
                    E-Commerce Website for Small Scale Industries
                </p>
                <a href="login_option.jsp" class="btn btn-outline-dark"> Login </a>
                <a href="reg_option.jsp" class="btn btn-outline-dark"> SignUp </a>
                 <a href="adminlogin.jsp" class="btn btn-outline-dark"> Admin </a>
            </div>
        </div>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
    <img class="d-block w-100" src="img/pots.jpeg" height = "450" alt="First slide">
   
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/bangles2.jpg"  height = "450" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/handloom1.jpg" height = "450" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br>
<br>
<h1 align="center">BEST SELLERS</h1>


<!--best sellers  -->

<table>
	<tr>
	<%
		try {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		String url = "jdbc:mysql://localhost:3306/smallcart";
		String username = "root";
		String password = "";
		connection = DriverManager.getConnection(url, username, password);
		
		statement = connection.createStatement();
		
		String sql = "SELECT * FROM category";

		resultSet = statement.executeQuery(sql);
		String s="";
		while (resultSet.next()) {
		s=resultSet.getString("category");
		
	%>
	<form action="Product_category" method="post">
		<table border="0" width="100%" bgcolor="#C6DBDA">

			<tr>
				<td colspan="5"><h2><%=s%></h2>
					<hr></td>

				<td><input type="hidden" name="category" value="<%=s %>"/></td>
                <td><input type="submit"  value="view more>" /></td>
			</tr>
			<%
			try {
				
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;	
				PreparedStatement preparedStatement = null;
				String url1 = "jdbc:mysql://localhost:3306/smallcart";
				String username1 = "root";
				String password1 = "";
				con = DriverManager.getConnection(url1, username1, password1);
				stmt = connection.createStatement();
				String sql2 = "SELECT * FROM product where category=?";
				preparedStatement = connection.prepareStatement(sql2);
				preparedStatement.setString(1,s);
				rs = preparedStatement.executeQuery();
                int count=0;
				while (rs.next()==true && count<3) {
			%>
			
				<th><img src="img/product/<%=rs.getString("img") %>" style="height:250px;width:250px"></th>
			    
			<%
					}

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
		</table>
	</form>
		<img src="img/divider3.png" alt="divider photo" style="	margin-left:auto;margin-right:auto;display:block;width:20%;">
	
	<%
		}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</tr>
</table>
   
        
         
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>