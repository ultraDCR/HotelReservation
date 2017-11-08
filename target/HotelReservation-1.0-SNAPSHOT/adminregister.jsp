<%-- 
    Document   : adminregister
    Created on : Nov 7, 2017, 10:20:28 AM
    Author     : Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><!DOCTYPE html>
<html>
    <head>
	<link type="text/css" rel="stylesheet" href="./css/style1.css">
    </head>
    <body>
    <center>  
<div class="e">	
<br><br>
<form method="post" action="./adminregister"/>
FirstName:<input type="text" placeholder="Firstname" name="fname"/><br><br>
MiddleName:<input type="text" placeholder="Middlename" name="mname"/><br><br>
Lastname:<input type="text" placeholder="Lastname" name="lname"/><br><br>
Gender: <input type="radio" name="gender" value="Male">Male
		<input type="radio" name="gender" value="Female">Female
		<input type="radio" name="gender" value="Other">Other
		<br><br>	
Username:<input type="text" placeholder="Username" name="uname"/><br><br>
password:<input type="password" placeholder="Password" name="pass"/><br><br>
<input type="submit" name="register" value="Register"/>
</form>	
<a href="./display.jsp"> <input type="button" value="Home"></a></br>
</div>
</center>
    </body>
</html>


