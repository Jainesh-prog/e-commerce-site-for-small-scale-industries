<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body
{
 width: 100%;
  height: 100vh;
  display: flex;
  background: -webkit-linear-gradient(left,#FE4365,#83AF9B  );
  font-family: 'Nunito', sans-serif;
  justify-content: space-between;
 
}

.left-cont
{
  background:#83AF9B;
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
  background:#FE4365;
  width: 150px;
  height: 75px;
  font-family: 'Nunito', sans-serif;
  box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px rgba(0, 0, 0, 0.22);
}


.btn{
  background:#FE4365;
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
 	background:#83AF9B;
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

<span style="font-family: 'Nunito', sans-serif;">Sign Up as Customer</span>
<br>
<br>
<a href="registration.jsp" class="btn">Sign Up</a>
</div>
<div class="right-cont">
<span>Sign Up as Seller</span>
<br>
<br>
<a href="seller_reg.jsp" class="btn1">Sign Up</a>
</div>
</body>
</html>