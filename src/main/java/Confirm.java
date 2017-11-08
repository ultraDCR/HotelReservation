import java.util.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class Confirm extends HttpServlet {
public void doGet(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException
{
response.setContentType("text/html");
PrintWriter out = response.getWriter();
String hname=request.getParameter("hotel");
String uname=request.getParameter("user");
String url="jdbc:mysql://localhost:3306/register";
String con="com.mysql.jdbc.Driver";
String query="insert into booking(HotelName,Username) values('"+hname+"','"+uname+"')";

		Connection cn=null;
		try{
			Class.forName(con);
			cn=DriverManager.getConnection(url,"root","");
			
			try{
				Statement stat = cn.createStatement();
				stat.executeUpdate(query);
				out.println("Booking Sucessful");
			}catch(Exception e){
				out.println("Error: Booking Failed!!\n" + e.getMessage());
			}

		}catch(Exception e){
			out.println("Connection Failed: \n" + e.getMessage());
		}
		out.println("<a href='./Home.jsp'> <input type='button' value='Return To home.'></a>");
}

}