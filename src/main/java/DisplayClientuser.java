import java.util.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class DisplayClientuser extends HttpServlet {
public void doGet(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException
{
response.setContentType("text/html");
String url="jdbc:mysql://localhost:3306/register";
String con="com.mysql.jdbc.Driver";
Connection cn=null;
try{
	Class.forName(con);
	cn=DriverManager.getConnection(url,"root","");
    String sql="select * from client";
	Statement stat=cn.createStatement();
	ResultSet rs=stat.executeQuery(sql);
	List<ClientuserDto> clients=new ArrayList<ClientuserDto>();
	while(rs.next()){
		ClientuserDto client =new ClientuserDto();
		client.setCid(rs.getString("ClientId"));
		client.setFname(rs.getString("FirstName"));
		client.setMname(rs.getString("MiddleName"));
                client.setLname(rs.getString("LastName"));
                client.setGender(rs.getString("Gender"));
		client.setUname(rs.getString("Username"));
		client.setPass(rs.getString("Password"));
		
		clients.add(client);
	}

	request.setAttribute("cu",clients);
	RequestDispatcher rd=request.getRequestDispatcher("/displayclientuser.jsp");
	rd.include(request,response);
		
	
	}catch(Exception e){
		System.out.println("Exception!!!"+e);
	}
}
}