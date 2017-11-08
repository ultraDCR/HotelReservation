<%-- 
    Document   : Home
    Created on : Nov 3, 2017, 6:53:33 PM
    Author     : Ranjan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.net.URL"%>
<%@page import="java.sql.*" %>

<%		String url="jdbc:mysql://localhost:3306/register";
		String con="com.mysql.jdbc.Driver";
		Connection cn=null;
		Statement st=null;
		ResultSet rs=null;
		try {
			Class.forName(con);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Hotel Reservation </title>
	<link type="text/css" rel="stylesheet" href="./css/style1.css">
</head>
<body>
<center>
	<header>
	<div id="user">
	
		<c:if test="${not empty loggedInUser}">
			<p>
				${loggedInUser}<a href="firstpage.jsp"><button>Logout</button></a>
			</p>
		</c:if>
		<c:if test="${empty loggedInUser}">
			<p>You're not logged in!<a href="login.jsp"><button>Login</button></a></p>
		</c:if>
		</div>
		<div id="content" >	
		<img src="./image/image.png" >
		 HOTEL RESERVATION 
		</div>
	</header>
	<%
		try{
			cn=DriverManager.getConnection(url,"root","");
                        st = cn.createStatement();
			rs =st.executeQuery("SELECT * FROM hotel");
			while(rs.next()){
   %>
	<a href="./ranjan.jsp?value=<%=rs.getString("HotelId")%>" >
	<div class="e">
	</br>
	<img src="retrieve?id=<%=rs.getString("HotelId") %> " width=300 height=300 >
	<p><%=rs.getString("HotelName") %></br></p>

	
	
		
	</div>
<% 
	}
	}catch(Exception e){
			e.printStackTrace();
		}
%>
</center>
</body>
</html>
