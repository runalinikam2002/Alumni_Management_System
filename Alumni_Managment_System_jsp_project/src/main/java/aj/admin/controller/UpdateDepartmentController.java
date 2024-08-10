package aj.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateDepartmentController
 */
@WebServlet("/UpdateDepartment")
public class UpdateDepartmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();	
		
		int Depid=Integer.parseInt(request.getParameter("did"));
		String DepName=request.getParameter("dname");
		
		RequestDispatcher r=request.getRequestDispatcher("dashbord.jsp");
		r.include(request, response);
		out.println("<div class='Container' style='margin-left: 28%; margin-top: 11%'>");
		out.println("<form class='formarea' name='frm' action='FinalDepartmentUpdate' method='POST'>");
		out.println("<div class='login' id='loginmid' >");
		out.println(" <h3>UPDATE DEPARTMENT</h3>");
		out.println("<div class='input-box'>");
		out.println("<input type='hidden' name='did' value='"+Depid+"' placeholder='Enter Department id ' > ");
		out.println("<br>");
		out.println("<input type='text' name='dname' value='"+DepName+"' placeholder='Enter Department name'> ");
		out.println("</div>");
		out.println("<button type='submit' name='s' value='Login'  class='btn' class='btn btn-outline-danger' id='btn' style='margin-top:2%'>Update department</button>");
		out.println("</div>");
		out.println(" </div>");
		out.println("</div>");
		out.println("</div>");
		out.println("</form>");
		out.println("</div>");

	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
