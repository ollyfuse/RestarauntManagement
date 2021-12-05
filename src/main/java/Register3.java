

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register3
 */
@WebServlet("/Register3")
public class Register3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register3() {
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
		String ca_name=request.getParameter("ca_name");
		int start_year=Integer.parseInt(request.getParameter("start_year"));
		int end_year=Integer.parseInt(request.getParameter("end_year"));
		int phone=Integer.parseInt(request.getParameter("phone"));
		
Supplier supp = new Supplier (ca_name, start_year, end_year, phone);
		
		Dbconnection dbcon=new Dbconnection();
		String Result=dbcon.insert(supp);
		request.setAttribute("errorMessage", "Supplier Registed successfully");
		request.getRequestDispatcher("Suppliers.jsp").forward(request, response);
		
		response.getWriter().print(Result);
	}

}
