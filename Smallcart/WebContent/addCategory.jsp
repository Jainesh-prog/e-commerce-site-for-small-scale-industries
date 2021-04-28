<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.login{
  text-align: center;
background:#0F80D2;
  padding-top: 5vh;
  padding-bottom: 5vh;
  font-size: 3vh;
  font-family: Kanit;
  color: white;

}
</style>
<title>Category page</title>
 <style>
    @import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
    </style>
</head>
<body style="background-color:#E3F2FD">
<div align="center">
		<h1 class="login">ADD A CATEGORY OF PRODUCT HERE</h1>
		<form action="addcategory" method="post">
			<table>
				<tr>
					<td>CATEGORY:</td>
					<td><input type="text" name="category"></td>
				</tr>
				<tr>

					<td><input type="submit" value="ADD" /></td>
					<td><input type="reset" value="clear" /></td>
				</tr>


			</table>
			
		</form>






	</div>
</body>
</html>