

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register2
 */
@WebServlet("/Register2")
public class Register2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String f_name=request.getParameter("f_name");
		String gender=request.getParameter("gender");
		int year_expr=Integer.parseInt(request.getParameter("year_expr"));
		int age=Integer.parseInt(request.getParameter("age"));
		int idnumber=Integer.parseInt(request.getParameter("idnumber"));
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
Chief chf = new Chief (f_name,gender,year_expr,age,phone,email,idnumber);
		
		Dbconnection dbcon=new Dbconnection();
		String Result=dbcon.insert(chf);
		
		request.setAttribute("errorMessage", "Chief Registed successfully");
		request.getRequestDispatcher("Chiefs.jsp").forward(request, response);
		
		response.getWriter().print(Result);
	}

}
