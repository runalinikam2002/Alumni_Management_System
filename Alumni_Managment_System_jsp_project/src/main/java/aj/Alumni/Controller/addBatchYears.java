package aj.Alumni.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Alumni.Services.addBatchYersService;
import org.Alumni.Services.addBatchYersServiceImp;

import aj.Alumni.Model.batchYears;


@WebServlet("/AddYeras")
public class addBatchYears extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		int yer=Integer.parseInt(request.getParameter("BatchYears"));

		batchYears yers =new batchYears();
		
		yers.setYears(yer);
		
		addBatchYersService service=new addBatchYersServiceImp();
		boolean b=service.addBatchYers(yers);
		if(b)
		{
			RequestDispatcher r=request.getRequestDispatcher("addBatchYear.jsp");
			r.include(request, response);
			out.println("<h1>Yers Add<h1>");
		}
		else
		{
			RequestDispatcher r=request.getRequestDispatcher("addBatchYear.jsp");
			r.include(request, response);
			out.println("<h1>Yers Not Add<h1>");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
