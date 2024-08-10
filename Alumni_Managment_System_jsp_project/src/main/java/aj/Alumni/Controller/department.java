package aj.Alumni.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Alumni.Services.addDepartmentService;
import org.Alumni.Services.addDepartmentServiceImp;

import aj.Alumni.Model.departmentModel;

/**
 * Servlet implementation class department
 */
@WebServlet("/AddDept")
public class department extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String name=request.getParameter("dname");
		
		departmentModel dmodel=new departmentModel();
		
	    dmodel.setName(name);
	    
	    addDepartmentService depService=new addDepartmentServiceImp();
	    
		int b=depService.adddepartent(dmodel);
		if(b==1)
		{
			RequestDispatcher r=request.getRequestDispatcher("dashbord.jsp");
			r.include(request, response);
		}
		else if(b==-1)
		{
			RequestDispatcher r=request.getRequestDispatcher("dashbord.jsp");
			r.include(request, response);
			out.println("<h1 style='margin-left:400px;margin-Top:250px;color: red;'>Department Alredy Present</h1>");
		}
		else
		{
			RequestDispatcher r=request.getRequestDispatcher("dashbord.jsp");
			r.include(request, response);
			out.println("<h1>NOT Department Add</h1>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
