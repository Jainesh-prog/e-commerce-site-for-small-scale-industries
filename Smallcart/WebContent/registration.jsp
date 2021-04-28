<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style_reg.css">
</head>
<body>
<div class="cont">
<div class ="form">

<form action="registration" method="post" id="form">
<h1>Register</h1>
<label>
<span>Username</span>
<input type="text" name="user" required="required" >
</label>
<label>
<span>Email</span>
<input type="text" name="email" required="required" >
</label>
<label>
<span>Address</span>
<input type="text" name="address" required="required" >
</label>
<label>
<span>Phone</span>
<input type="text" name="phone" required="required" >
</label>
<label>
<span>Password</span>
<input type="password" name="password" required="required" >
</label>
<br>
<input type="submit" value="REGISTER" id="Login_btn" class="submit">
</form>
</div>
<div class="sub-cont">
<div class="img">
<div class="img-text">
<h2>Already a member?</h2>
<p>Sign In! </p>
<br>
<br>
<a href="login.jsp" id="box">Sign In</a>
</div>

</div>
</div>
</div>
</body>
</html>