package aj.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.admin.Services.UpdateDepartmentService;
import org.admin.Services.UpdateDepartmentServiceImp;



@WebServlet("/FinalDepartmentUpdate")
public class FinalUpdateDepartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int depid=Integer.parseInt(request.getParameter("did"));
		String depName=request.getParameter("dname");
		
		UpdateDepartmentService updepServ=new UpdateDepartmentServiceImp();
		

		
		boolean b=updepServ.isUpdateDepartment(depid, depName);
		if(b)
		{
			RequestDispatcher r=request.getRequestDispatcher("view_all_Department.jsp");
			r.forward(request, response);
			out.println("<h1>Department Update Succesfully");
		}
		else
		{
			RequestDispatcher r=request.getRequestDispatcher("view_all_Department.jsp");
			r.forward(request, response);
			out.println("<h1>Department Not Update ");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
