<%-- 
    Document   : register
    Created on : Sep 13, 2017, 7:17:07 PM
    Author     : Ranjan
--%>

<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="./css/style1.css">
    </head>
    <body>
        <center>
            <div class="e">
                <br>
        <a href="./login.jsp"> <input type="button" value="Back to Login"></a><br><br><br>
<form method="post" action="./register"/>
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
<br><br>
</form>	
            </div>
        </center>
    </body>
</html>
