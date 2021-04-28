<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>Admin Login</title>
    <style type="text/css">
       .login{
  text-align: center;
  background: linear-gradient(to right, #DFF6B6, #94DA1B);
  padding-top: 5vh;
  padding-bottom: 5vh;
  font-size: 3vh;
  font-family: Kanit;
  color: #29524A;

}

.form .required{
	color:red;
}

.form{
  position: absolute;
  left: 32vw; top:35vh;
}


.form li {
	padding: 0;
	display: block;
	list-style: none;
	margin: 10px 0 0 0;
}

.form label{
	margin:0 0 3px 0;
	padding:0px;
	display:block;
	font-weight: bold;
  font-size: 4vh;
}


.input
{
  width: 30vw;
  height: 6vh;
}

 .submit
{
  width:5vw;
  height: 2vh;
  align-content: center;
}
    </style>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
    </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
  <div class="login">
    <h1>Admin Login</h1>
    </div>

    <form  action="AdminLogin" method="post">
      <ul class="form">

          <li>
            <label>Contact Number <span class="required">*</span></label>
            <input class="input" type="text" name="phone" class="field-divided" placeholder="Contact" />
           </li>

          <li>
              <label>Password<span class="required">*</span></label>
              <input class="input" type="password" name="password" class="field-long" placeholder="Password" />
          </li>

          <li >
            <div class="submit">
              <input  type="submit" value="Submit" />
            </div>

          </li>


      </ul>


    </form>
</body>
</html>