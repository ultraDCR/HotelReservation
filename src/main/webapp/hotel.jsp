<%-- 
    Document   : hotel
    Created on : Nov 7, 2017, 10:26:46 AM
    Author     : Ranjan
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
</head>
<body>
    <center> 
        <h1>File Upload to Database Demo</h1>
        <form method="post" action="hotel" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Hotel Name: </td>
                    <td><input type="text" name="hName" size="50"/></td>
                </tr>
                <tr>
                    <td>Hotel Address: </td>
                    <td><input type="text" name="hAddress" size="50"/></td>
                </tr>
                <tr>
                    <td>Hotel Photo: </td>
                    <td><input type="file" name="photo" size="50"/></td>
                </tr>
				<tr>
					<td>Hotel Description: </td>
					<td><input type="text" name="hDescription" style="height:200px;" size="50" /></td>
                <tr>
					
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>