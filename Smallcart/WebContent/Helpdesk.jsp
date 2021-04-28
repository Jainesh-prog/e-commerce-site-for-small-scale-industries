<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HELDESK</title>
  <link rel="stylesheet" href="css/helpdesk.css">
</head>
<body bgcolor="#EFF6FB">

<h1 id="heading"><font-size=7 color=#000000 face="Rosso one">Complaint/Query Form Fill Up:-</font></h1>

<div class="form">

<FORM  action="Helpdesk" method="post" >
  <ul>

<li>
<label for="">First Name:<span class="required">*</span></label>
<input class="input" type="text" name="fname" id="First Name" placeholder="E.g. Rahul">
</li>

<li>
<label>Last Name: <span class="required">*</span></label>
<input class="input" type="text" name="lname" id="Last Name" placeholder="E.g. Dravid">
</li>

<li>
<label>Select Customer/Seller <span class="required">*</span></label>
   <select name="role" class="field-select" placeholder="select role">
    <option value="Seller">Seller</option>
    <option value="Customer">Customer</option>
</li>
<br>
<br>
<li>
  <label>Mobile Number:<span class="required">*</span></label>
<INPUT class="input" name="phone" type="number" id="mobile number" SIZE="10" MAXLENGTH="10" placeholder="Mobile no.">
</li>

<li>
<label>Email Address:</label>
<input class="input" name="email" type="email" id="Email-Address" NAME="Email-address" SIZE="60,80" MAXLENGTH="10000"  placeholder="Email-Address">
</li>

<li>
<label>Please Write Your Problem: <span class="required">*</span></label>
<Textarea rows="5" name="problem" cols="68" id="rem" Name= "Please write your Problem"></textarea>
</li>

<li>
<input type="submit" name="Request" value="Submit">
<input type="reset" name="clear" value="Reset">
</li>

</ul>

</form>
</div>
</body>
</html>