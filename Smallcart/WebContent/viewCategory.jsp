<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.login{
  text-align: center;
background:#ECCA09;
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
<title>CATEGORIES</title>
</head>
<body style="background-color:#FDF4C4">
<%

try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
%>
<h2 align="center" class="login"><font><strong>CATEGORIES</strong></font></h2>

<%
try{ 
	 Connection connection = null;
     Statement statement = null;
     ResultSet resultSet = null;

     connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
     statement=connection.createStatement();
     String sql ="SELECT * FROM category";
     resultSet = statement.executeQuery(sql);
     while(resultSet.next()){
%>
<h1 style="text-align:center;"><%=resultSet.getString("category") %></h1>
<img src="img/divider3.png" alt="divider photo" style="	margin-left:auto;margin-right:auto;display:block;width:20%;">


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>