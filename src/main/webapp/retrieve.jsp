<%-- 
    Document   : retrieve
    Created on : Nov 7, 2017, 10:28:22 AM
    Author     : Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String value1=request.getParameter("id");%>
<!DOCTYPE html>
    <html>
    <head>
    <link type="text/css" rel="stylesheet" href="./css/style1.css">
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
    //PrintWriter out=response.getWriter();

  out.println("Retrieve Image Example!");
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
while(rs1.next())   
 {byte[] bytearray1 = new byte[4096];  
           int size1=10000;  
          InputStream sImage1;  
            sImage1 = rs1.getBinaryStream(4);  
            response.reset();  
           response.setContentType("image/png");  
           response.addHeader("Content-Disposition","filename=logo.jpg");  
           while((size1=sImage1.read(bytearray1))!= -1 )  
             {  
               response.getOutputStream().write(bytearray1,0,size1);  
             }  
           response.flushBuffer(); 
           
           rs1.close();  
        }
  pre1.close();
  con.close();  
  }
 catch (Exception e){
         out.println(e.getMessage());
        }
%>
  </body>
    </html>