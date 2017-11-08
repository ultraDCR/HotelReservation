import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class Login extends HttpServlet {
public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException
{
PrintWriter out = response.getWriter();
response.setContentType("text/html");
String username=request.getParameter("uname");
String password=request.getParameter("pass");
String url="jdbc:mysql://localhost:3306/register";
String con="com.mysql.jdbc.Driver";
Connection cn=null;
try{
	Class.forName(con);
	cn=DriverManager.getConnection(url,"root","");
    String sql1="select Username,Password from client where Username='"+username+"' and Password='"+password+"'";
	String sql2="select Username,Password from admin where Username='"+username+"' and Password='"+password+"'";
	Statement stat1=cn.createStatement();
	Statement stat2=cn.createStatement();
	ResultSet rs1=stat1.executeQuery(sql1);
	ResultSet rs2=stat2.executeQuery(sql2);
	if(rs1.next()){
			request.getSession().setAttribute("loggedInUser", username);
			RequestDispatcher rd=request.getRequestDispatcher("/Home.jsp");
			rd.include(request,response);
		}
	else if(rs2.next()){
			request.getSession().setAttribute("loggedInUser", username);
			RequestDispatcher rd=request.getRequestDispatcher("/display.jsp");
			rd.include(request,response);
		}
	else if(!rs1.next()&&!rs2.next()){
			request.setAttribute("alertMsg", "Username or password incorrect");
			RequestDispatcher rd=request.getRequestDispatcher("/Failure.jsp");
			rd.include(request,response);
	}
		}catch(Exception e){
			
			out.println("Connection Failed: \n" + e.getMessage());
		}

}

}