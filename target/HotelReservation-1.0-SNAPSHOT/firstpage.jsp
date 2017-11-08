<%-- 
    Document   : Firstpage
    Created on : Nov 7, 2017, 11:14:03 AM
    Author     : Ranjan
--%>


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
	 <a href="login.jsp"><button>Login</button></a>
		
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
	<a href="./login.jsp" >
	<div class="e">
	</br></br>
	<img src="retrieve?id=<%=rs.getString("HotelId") %> " width=300 height=300 >
	<p><%=rs.getString("HotelName") %></br></p>

	
		
	</div>
        </a>
<% 
	}
	}catch(Exception e){
			e.printStackTrace();
		}
%>
</center>
</body>
</html>
