<%-- 
    Document   : displayclient
    Created on : Nov 7, 2017, 6:45:53 PM
    Author     : Ranjan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="./css/style1.css">
</head>
<body>
<center>
<div class="e">
</br></br></br></br>
<table>
<tr bgcolor="#A52A2A" style="color:white;">
<td><b>ClientId</b></td>
<td><b>FirstName</b></td>
<td><b>MiddelName</b></td>
<td><b>LastName</b></td>
<td><b>Gender</b></td>
<td><b>Username</b></td>
<td><b>Password</b></td>
</tr>
<d:forEach items="${cu}" var="b" >
<tr bgcolor="#DEB887" >
<td>${b.cid}</td>
<td>${b.fname} </td>
<td>${b.mname} </td>
<td>${b.lname} </td>
<td>${b.gender} </td>
<td>${b.uname} </td>
<td>${b.pass} </td>
</tr>
</d:forEach>

</table>
</br></br></br></br>
</div>
</center>
</body>
</html>
