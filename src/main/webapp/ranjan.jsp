<%-- 
    Document   : ranjan
    Created on : Nov 7, 2017, 10:30:21 AM
    Author     : Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*"%> 
<%@ page import="java.sql.*"%>
<% String value1=request.getParameter("value");%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link type="text/css" rel="stylesheet" href="./css/style1.css">
</head>
<body>
   <c:if test="${not empty loggedInUser}">
			<p>${loggedInUser}</p>
		</c:if>
		<c:if test="${empty loggedInUser}">
			<p>You're not logged in!</p>
	</c:if>
	
  <div class="e"size="50">
  <img src="retrieve?id=<%= value1%> " width=300 height=300 >
  <p> 
 <%
		String url="jdbc:mysql://localhost:3306/register";
		String con="com.mysql.jdbc.Driver";
		Connection cn=null;
		ResultSet rs=null;
		String query="select HotelDescription from hotel where HotelId="+value1;
		try{
			Class.forName(con);
			cn=DriverManager.getConnection(url,"root","");
			
			Statement stat = cn.createStatement();
		    rs=stat.executeQuery(query);
		while(rs.next()){
		%>
		<%=rs.getString("HotelDescription") %>
  </p>
  <%
		}
  }catch(Exception e){
			out.println("Connection Failed: \n" + e.getMessage());
		}%>
  
 
 <a href="./confirm.jsp?value=<%= value1%>"><button>Book</button></a>
 </div>
</body>
</html>