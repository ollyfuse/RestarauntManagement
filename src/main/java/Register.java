
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Register2
 */
@WebServlet("/Register")
@MultipartConfig(maxFileSize = 16177215) 
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String url="jdbc:mysql://localhost:3306/msystem";
	 private  String user="root";
 private  String pass="";
 private String drivename="com.mysql.cj.jdbc.Driver";
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 InputStream inputStream = null; 
	        Part filePart = request.getPart("image");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
		
		
		String c_name = request.getParameter("c_name");
		String schools = request.getParameter("schools");
		String gender= request.getParameter("gender");
		String phone = request.getParameter("phone");
		int age = Integer.parseInt(request.getParameter("age"));
		int payment = Integer.parseInt(request.getParameter("payment"));
		String email = request.getParameter("email");
		String m_option = request.getParameter("m_option");
		String myloc = request.getParameter("myimg");

			Dbconnection dbcon = new Dbconnection();
			dbcon.loadDriver(drivename);
			Connection conn=dbcon.geConnection();
		String query="INSERT INTO clients VALUES(?,?,?,?,?,?,?,?,?)";
		String Message="Recorded !";
		PreparedStatement ps;
	
	try {
		
		ps=conn.prepareStatement(query);
		ps.setString(1, null);
		ps.setString(2,c_name);
		ps.setString(3, gender);
		ps.setString(4, schools);
		ps.setInt(5, age);
		ps.setString(6, m_option);
		ps.setInt(7, payment);
		ps.setString(8, phone);
		if (inputStream != null) {
            // fetches input stream of the upload file for the blob column
        	  ps.setBlob(9, inputStream);
        }
        if(ps.executeUpdate()>0) {
        	   Message = "New client Added Well";
        }

		
		ps.execute();
	}catch (Exception e) {
		Message=e.toString();
		e.printStackTrace();
	}
	

	
		

		request.setAttribute("errorMessage", Message);
		request.getRequestDispatcher("Clients.jsp").forward(request, response);

	//	response.getWriter().print(Result);
	}

}

/*
 * 
 * import java.io.IOException; import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 *//**
	 * Servlet implementation class Register
	 */
/*
 * @WebServlet("/Register") public class Register extends HttpServlet { private
 * static final long serialVersionUID = 1L;
 * 
 *//**
	 * @see HttpServlet#HttpServlet()
	 */
/*
 * public Register() { super(); // TODO Auto-generated constructor stub }
 * 
 *//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
/*
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { // TODO Auto-generated
 * method stub
 * response.getWriter().append("Served at: ").append(request.getContextPath());
 * }
 * 
 *//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 *//*
		 * protected void doPost(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException, IOException { // TODO Auto-generated
		 * method stub String c_name=request.getParameter("c_name"); String
		 * schools=request.getParameter("schools"); String
		 * gender=request.getParameter("gender"); String
		 * phone=request.getParameter("phone");
		 * 
		 * int age=Integer.parseInt(request.getParameter("age")); int
		 * payment=Integer.parseInt(request.getParameter("payment")); String
		 * m_option=request.getParameter("m_option");
		 * 
		 * //Client clt = new Client( c_name, gender, schools, m_option, age, payment,
		 * phone , String myloc);
		 * 
		 * Client clt=new Client(c_name, gender, schools, m_option, payment, age,
		 * phone); Dbconnection dbcon=new Dbconnection(); String
		 * Result=dbcon.insert(clt); //I solved this by adding these few lines:
		 * 
		 * //SERVLET request.setAttribute("errorMessage",
		 * "Clent Registed successfully");
		 * request.getRequestDispatcher("Clients.jsp").forward(request, response);
		 * 
		 * response.getWriter().print(Result); }
		 * 
		 * }
		 */