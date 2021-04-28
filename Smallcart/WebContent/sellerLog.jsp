<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/sell_login.css">

</head>
<body>
<div class="cont">
<div class="form">
<form action="sellerLog" method="post">
<label>
<span>Contact Number</span>
<input type="text" name="number" required="required">
</label>
<br>
<label>
<span>Password</span>
<input type="password" name="password" required="required" >
</label>
<br>
<br>
<input type="submit" value="LOGIN" id="Login_btn" class="submit">
</form>
</div>
<div class="sub-cont">
<div class="img">
<div class="img-text">
<h2>New Seller here?</h2>
<p>Sign Up to enjoy more features! </p>
<br>
<br>
<a href="seller_reg.jsp" id="box">Sign Up</a>
</div>

</div>
</div>
</div>
</body>
</html>