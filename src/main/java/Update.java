

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private String drivename="com.mysql.cj.jdbc.Driver";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("idc");
		String c_name = request.getParameter("c_name");
		String schools = request.getParameter("schools");
		String gender= request.getParameter("gender");
		String phone = request.getParameter("phone");
		String age = request.getParameter("age");
		String payment = request.getParameter("payment");
		String email = request.getParameter("email");
		String m_option = request.getParameter("m_option");
			Dbconnection dbcon = new Dbconnection();
			dbcon.loadDriver(drivename);
			Connection conn=dbcon.geConnection();
			 String sql = "UPDATE clients SET  c_name='"+c_name+"',schools='"+schools+"',gender='"+gender+"',phone='"+phone+"', age='"+age+"', payment='"+payment+"', email='"+email+"',m_option='"+m_option+"' where c_id='"+id+"'";
			 try {
					PreparedStatement ps = conn.prepareStatement(sql);
					//ps.execute();
				//	ps.execute();
		           int i= ps.executeUpdate();
					
		           if(i > 0) {
		        	   String Message = "updated well";
		           }
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					//message=e.toString();
					e.printStackTrace();
				}
				/* response.getWriter().print(id); */
		      //  request.setAttribute("errorMessage", "hhhhh");
			response.sendRedirect("Edit.jsp?id="+id);

	
				
	}

}
