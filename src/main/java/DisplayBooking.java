import java.util.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class DisplayBooking extends HttpServlet {
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
    String sql="select * from booking";
	Statement stat=cn.createStatement();
	ResultSet rs=stat.executeQuery(sql);
	List<BookingDto> bookings=new ArrayList<BookingDto>();
	while(rs.next()){
		BookingDto booking =new BookingDto();
		booking.setBno(rs.getString("BookingNo"));
		booking.setHname(rs.getString("HotelName"));
		booking.setUname(rs.getString("Username"));
		
		bookings.add(booking);
	}

	request.setAttribute("book",bookings);
	RequestDispatcher rd=request.getRequestDispatcher("/displaybooking.jsp");
	rd.include(request,response);
		
	
	}catch(Exception e){
		System.out.println("Exception!!!"+e);
	}
}
}