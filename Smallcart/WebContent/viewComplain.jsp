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
<title>COMPLAINS</title>
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
</head>
<body style="background-color:#FDF0D5;">
<%

try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
%>
<h2 align="center" class="login"><font><strong>READ COMPLAINS HERE</strong></font></h2>

<%
try{ 
	 Connection connection = null;
     Statement statement = null;
     ResultSet resultSet = null;

     connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
     statement=connection.createStatement();
     String sql ="SELECT * FROM helpdesk";
     resultSet = statement.executeQuery(sql);
     while(resultSet.next()){
%>
<br>

<div style="border:2px solid black; padding:2px;background-color:white;width:50%;margin-left:auto;margin-right:auto;display:block;" align="center">
<h2>
<u>
<%=resultSet.getString("fName") %>
<%=resultSet.getString("lName") %>
</u>
</h2>
<%=resultSet.getString("role") %>

<hr>
<%=resultSet.getString("problem") %>
<hr>
<div><b>CONTACT INFO:-</b><br><%=resultSet.getString("number") %>
<br></div>
<br>

</div>
<img src="img/divider3.png" alt="divider photo" style="	margin-left:auto;margin-right:auto;display:block;width:20%;">


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>