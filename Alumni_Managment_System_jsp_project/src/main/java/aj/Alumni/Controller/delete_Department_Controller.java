package aj.Alumni.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Alumni.Services.delete_Department_Service;
import org.Alumni.Services.delete_Department_ServiceImp;

/**
 * Servlet implementation class delete_Department_Controller
 */
@WebServlet("/del")
public class delete_Department_Controller extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		   response.setContentType("text/html");
		   PrintWriter out=response.getWriter();
		   
		   int DepId=Integer.parseInt(request.getParameter("depId"));
		   
		   delete_Department_Service delService=new delete_Department_ServiceImp();
		   
		   boolean b=delService.delDepartment(DepId);
		   
		   if(b)
		   {
			   RequestDispatcher r=request.getRequestDispatcher("view_all_Department.jsp");
			   r.forward(request, response);
			   out.println("<h1>Delete Record Succesfully</h1>");
		   }
		   else
		   {
			   RequestDispatcher r=request.getRequestDispatcher("view_all_Department.jsp");
			   r.forward(request, response);
			   out.println("<h1> Not Delete Record Succesfully</h1>");
		   }
	
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
