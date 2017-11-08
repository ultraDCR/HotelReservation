<%-- 
    Document   : displayhoteluser
    Created on : Nov 7, 2017, 6:46:20 PM
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
<td><b>BookingNo</b></td>
<td><b>HotelName</b></td>
<td><b>Username</b></td>
</tr>
<d:forEach items="${hu}" var="b" >
<tr bgcolor="#DEB887" >
<td>${b.bno}</td>
<td>${b.hname} </td>
<td>${b.uname} </td>
</tr>
</d:forEach>

</table>
</br></br></br></br>
</div>
</center>
</body>
</html>
