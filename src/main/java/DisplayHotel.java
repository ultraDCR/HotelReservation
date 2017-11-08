import java.util.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class DisplayHotel extends HttpServlet {
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
    String sql="select * from hotel";
	Statement stat=cn.createStatement();
	ResultSet rs=stat.executeQuery(sql);
	List<HotelDto> hotels=new ArrayList<HotelDto>();
	while(rs.next()){
		HotelDto hotel =new HotelDto();
		hotel.setHid(rs.getString("HotelId"));
		hotel.setHname(rs.getString("HotelName"));
		hotel.setHaddress(rs.getString("HotelAddress"));
		hotels.add(hotel);
	}

	request.setAttribute("hh",hotels);
	RequestDispatcher rd=request.getRequestDispatcher("/displayhotel.jsp");
	rd.include(request,response);
		
	
	}catch(Exception e){
		System.out.println("Exception!!!"+e);
	}
}
}