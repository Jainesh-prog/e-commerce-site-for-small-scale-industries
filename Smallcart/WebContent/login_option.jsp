<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
font-family: 'Nunito', sans-serif;
}
body
{
 width: 100%;
  height: 100vh;
  display: flex;
  background: -webkit-linear-gradient(left,#E1F5C4,#FF4E50 );
  font-family: 'Nunito', sans-serif;
  justify-content: space-between;
}

.left-cont
{
  background:#FF4E50;
  margin-top: 200px ;
  margin-left: 250px;
  
  overflow: hidden;
  padding: 50px;
  width: 150px;
  height: 75px;
  box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px rgba(0, 0, 0, 0.22);
}

.right-cont{
  overflow: hidden;
  position: relative;
  margin-top: 200px ;
  margin-right: 250px;
   padding: 50px;
  background:#E1F5C4;
  width: 150px;
  height: 75px;
  box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px rgba(0, 0, 0, 0.22);
}


.btn{
  background:#E1F5C4;
 display: block;
  width: 150px;
  height: 30px;
  border-radius: 5px;
  color: black;
  font-size: 15px;
  cursor: pointer;
  text-align:center;
  padding:2px;
  
}

.btn1{
 	background:#FF4E50;
   display: block;
  width: 150px;
  height: 30px;
  border-radius: 5px;
  color: black;
  font-size: 15px;
  cursor: pointer;
  text-align:center;
  padding:2px;
 
}

</style>
</head>

<body>

<div class="left-cont">

<span>Sign In as Customer</span>
<br>
<br>
<a href="login.jsp" class="btn">Sign In</a>
</div>
<div class="right-cont">
<span>Sign In as Seller</span>
<br>
<br>
<a href="sellerLog.jsp" class="btn1">Sign In</a>
</div>
</body>
</html>