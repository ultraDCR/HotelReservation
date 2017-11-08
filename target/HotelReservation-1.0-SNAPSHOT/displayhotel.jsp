<%-- 
    Document   : displayhotel
    Created on : Nov 7, 2017, 10:23:30 AM
    Author     : Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<td><b>HotelId</b></td>
<td><b>HotelName</b></td>
<td><b>HotelAddress</b></td>
</tr>
<c:forEach items="${hh}" var="s" >
<tr bgcolor="#DEB887" >
<td>${s.hid}</td>
<td>${s.hname} </td>
<td>${s.haddress} </td>
</tr>
</c:forEach>

</table>
</br></br></br></br>
</div>
</center>
</body>
</html>