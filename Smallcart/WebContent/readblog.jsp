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
<title>Insert title here</title>

  
</head>
<body style="background: -webkit-linear-gradient(RIGHT,#46B1C9,   #84C0C6,   #9FB7B9,   #BCC1BA,   #F2E2D2 );">
<%
String id = request.getParameter("userId");

try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
%>
<h2 align="center"><font><strong>READ BLOGS HERE</strong></font></h2>

<%
try{ 
	 Connection connection = null;
     Statement statement = null;
     ResultSet resultSet = null;

     connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
     statement=connection.createStatement();
     String sql ="SELECT * FROM blog";
     resultSet = statement.executeQuery(sql);
     while(resultSet.next()){
%>
<br>

<div style="border:2px solid black; padding:2px;background-color:white;width:50%;margin-left:auto;margin-right:auto;display:block;" align="center">
<h2>
<u>
<%=resultSet.getString("title") %>
</u>
</h2>
<h4><i>-by <%=resultSet.getString("name") %></i></h4>
<hr>
<%=resultSet.getString("content") %>
<hr>
<div><b>USEFUL LINKS:-</b><br><a href="<%=resultSet.getString("link") %>"><%=resultSet.getString("link") %></a><br></div>
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