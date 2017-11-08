import java.io.IOException;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
// upload file's size up to 16MB
public class Hotel extends HttpServlet {
    private static final int BUFFER_SIZE = 4096;
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/register";
    private String dbUser = "root";
    private String dbPass = "";
    private String message;
    //naive way to obtain a connection to database
    //this MUST be improved, shown for 
    private Connection getConnection() {
		String con="com.mysql.jdbc.Driver";
        Connection conn = null;
        try {
            Class.forName(con);
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        } catch (Exception e) {
            //wrapping any exception and rethrowing it
            //inside a RuntimeException
            //so the method is silent to exceptions
            throw new RuntimeException("Failed to obtain database connection.", e);
        }
        return conn;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        //get values of text fields
        String firstName = request.getParameter("hName");
        String lastName = request.getParameter("hAddress");
		String description= request.getParameter("hDescription");
        InputStream inputStream = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            //obtains input stream of the upload file
            //the InputStream will point to a stream that contains
            //the contents of the file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
       
        try {
            // connects to the database
            conn = getConnection();
            // constructs SQL statement
            String sql = "INSERT INTO hotel (HotelName, HotelAddress, photo,HotelDescription) values (?, ?, ?, ?)";
            //Using a PreparedStatement to save the file
            PreparedStatement pstmtSave = conn.prepareStatement(sql);
            pstmtSave.setString(1, firstName);
            pstmtSave.setString(2, lastName);
			pstmtSave.setString(4, description);

            if (inputStream != null) {
                //files are treated as BLOB objects in database
                //here we're letting the JDBC driver
                //create a blob object based on the
                //input stream that contains the data of the file
                pstmtSave.setBlob(3, inputStream);
            }
            //sends the statement to the database server
            int row = pstmtSave.executeUpdate();
			
            if (row > 0) {
                message = "File uploaded and saved into database";
            }

            String filepath = "D:/Dev/JavaWorkSpaceNew/FileUploadDatabase/WebContent/FromDb.jpg";
            //Obtaining the file from database
            //Using a second statement

        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    //silent
                }
            
			}
			 // sets the message in request scope
            request.setAttribute("message", message);

            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp")
                .include(request, response);
        }
    }
}