<%-- 
    Document   : login
    Created on : Sep 13, 2017, 6:43:01 PM
    Author     : Ranjan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
		<link type="text/css" rel="stylesheet" href="./css/style1.css">
        <title>Hotel Booking</title>
    </head>
    <body>
		<center>
        <h1>Welcome to Hotel Booking System Login Page.</h1></br></br>
        <div class="e">
		</br></br>
            <form action="./login" method="post">
            Username:<input type="text" placeholder="Username" name="uname"/></br></br>
            Password:<input type="password" placeholder="Password" name="pass"/></br></br>
            <input id="loginbtn" type="submit" value="Login" />
            </form>
               
                    <c:if test="${not empty alertMsg}">
                    <c:out value="${alertMsg}"/>
                </c:if>
               
           
            </br></br>
			<label>Doesn't have account? </label>
            <a href="./register.jsp">Register now </a>
			</br></br>
        </div>
		</center>
    </body>
</html>
