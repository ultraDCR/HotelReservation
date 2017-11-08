import java.util.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class AdminRegister extends HttpServlet {
public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException
{
response.setContentType("text/html");
PrintWriter out = response.getWriter();
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String query="insert into admin(FirstName,MiddleName,LastName,Gender,Username,Password) values('"+fname+"','"+mname+"','"+lname+"','"+gender+"','"+uname+"','"+pass+"')";
String url="jdbc:mysql://localhost:3306/register";
		String con="com.mysql.jdbc.Driver";
		Connection cn=null;
		try{
			Class.forName(con);
			cn=DriverManager.getConnection(url,"root","");
			try{
				Statement stat = cn.createStatement();
				stat.executeUpdate(query);
				out.println("Submission Sucessful");
			}catch(Exception e){
				out.println("Error: Submission Failed!!\n" + e.getMessage());
			}

		}catch(Exception e){
			out.println("Connection Failed: \n" + e.getMessage());
		}
		out.println("<a href='./display.jsp'> <input type='button' value='Return To home.'></a>");
}

}