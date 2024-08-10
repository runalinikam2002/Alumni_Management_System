package aj.Alumni.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Alumni.Services.Add_Feedbak_Service;
import org.Alumni.Services.Add_Feedbak_ServiceImp;


@WebServlet("/sendfeedback")
public class Personal_event_join_Alumni extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	System.out.println("hiii controller");
	
	int feedbackid=Integer.parseInt(request.getParameter("feedbackid"));
	
	
	String feedbackname=request.getParameter("feedbackName");
	
	Add_Feedbak_Service feedService=new Add_Feedbak_ServiceImp();
	
	boolean b=feedService.isAddFeedback(feedbackid, feedbackname);
	if(b)
	{
		RequestDispatcher r=request.getRequestDispatcher("Personal_event_join_Alumni.jsp");
		r.forward(request, response);
		out.println("<h1 >Add Feedback Succesfuuly<h1>");
	}
	else
	{
		RequestDispatcher r=request.getRequestDispatcher("Personal_event_join_Alumni.jsp");
		r.forward(request, response);
		out.println("<h1>Add not Feedback Succesfuuly<h1>");	
	}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
