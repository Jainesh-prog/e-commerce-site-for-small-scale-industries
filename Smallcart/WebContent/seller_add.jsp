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
 <link rel="stylesheet" href="css/seller_home.css">

<title>Insert title here</title>
</head>
<body>

<div class="head2">
      <h1 id="top" >Product Details</h1>
      <h3>To launch your product in market space</h3>
    </div>

    <form  action="addproduct" method="post" enctype="multipart/form-data">
<ul class="form-style-1">
    <li><label>Product name <span class="required">*</span></label><input type="text" name="field1" class="field-divided" placeholder="Enter a catchy title" />
 
     </li>
    <li>

        <label>Set a Price<span class="required">*</span></label>
        <input type="number" name="field3" class="field-long" placeholder="Rs." />
    </li>
    <!-- showing categories dynamically -->
    <%

      try {
	     Class.forName("com.mysql.jdbc.Driver");
          } catch (ClassNotFoundException e) {
            e.printStackTrace();
          }
%>
<%
try{ 
	 Connection connection = null;
     Statement statement = null;
     ResultSet resultSet = null;

     connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/smallcart","root","");
     statement=connection.createStatement();
     String sql ="SELECT * FROM category";
     resultSet = statement.executeQuery(sql);

%>
    <li>
        <label>Product Category</label>
        <select name="field4" class="field-select" placeholder="select category">
        <% while(resultSet.next()){ %>
        <option value="<%=resultSet.getString("category") %>"><%=resultSet.getString("category") %></option>
        <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
        <option value="Others">Others</option>
        </select>
    </li>
    <li>
        <label>Product Description<span class="required">*</span></label>
        <textarea name="field5" id="field5" class="field-long field-textarea"></textarea>
    </li>
    <li>
      <label>Upload Product Image</label>
      <input  type="file" name="image"  />

    </li>
    <li>
        <input type="submit" value="Submit" />
    </li>
</ul>
</form>
</body>
</html>