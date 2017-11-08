<%-- 
    Document   : confirm
    Created on : Nov 7, 2017, 10:21:41 AM
    Author     : Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String value1=request.getParameter("value");%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html>
    <head>
    
     </head>
    <body>
     <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%
   try{
  String driverName = "com.mysql.jdbc.Driver";
  String url = "jdbc:mysql://localhost:3306/";
  String dbName = "register";
  String userName = "root";
     String password = "";
       Connection con = null;
       Class.forName(driverName);
      con = DriverManager.getConnection(url+dbName,userName,password);
        Statement st = con.createStatement();
     PreparedStatement pre1 = con.prepareStatement("select * from hotel where HotelId=?");

 pre1.setString(1,value1);
  ResultSet rs1=pre1.executeQuery();
if(rs1.next()) {  
 %>
<table border="1">
                <tr>
                    <td>Hotel Name </td>
                    <td>Hotel Address </td>
					<td>UserName</td>
                </tr>
                <tr>
                    <td><%= rs1.getString("HotelName")%> </td>
                    <td><%= rs1.getString("HotelAddress")%></td>
					<td><c:if test="${not empty loggedInUser}">
							${loggedInUser}
						</c:if></td>
                </tr>
            </table>
<a href="./confirm?hotel=<%= rs1.getString("HotelName")%>&user=${loggedInUser}"><button>Confirm Booking</button></a>
<%
        
  pre1.close();
  con.close();  
  }
   }
  catch (Exception e){
         out.println(e.getMessage());
        }
%>

  </body>
    </html>
	
