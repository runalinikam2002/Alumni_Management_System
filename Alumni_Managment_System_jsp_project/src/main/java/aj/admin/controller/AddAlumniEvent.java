package aj.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.admin.Services.AddEventService;
import org.admin.Services.AddEventServiceImp;

import aj.admin.model.AddEventModel;

/**
 * Servlet implementation class AddAlumniEvent
 */
@WebServlet("/addEvent")
public class AddAlumniEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			
			String Ename=request.getParameter("EvName");
			String date=request.getParameter("date");
			String Address=request.getParameter("Address");
			String Stime=request.getParameter("Stime");
			String Etime=request.getParameter("Etime");
			int did=Integer.parseInt(request.getParameter("dep"));
			System.out.println("====  Service  =====");
			System.out.println("Event Name:===="+Ename);
			System.out.println("Event Date:====="+date);
			System.out.println("Event addres:===="+Address);
			System.out.println("Event Start time:======"+Stime);
			System.out.println("Event Ende time======"+Etime);
			System.out.println("Event Department id:====="+did);
			
			
			AddEventModel Evemodel=new AddEventModel();
			Evemodel.setEname(Ename);
			Evemodel.setDate(date);
			Evemodel.setAddres(Address);
			Evemodel.setStime(Stime);
			Evemodel.setEtime(Etime);
			
			AddEventService eveService=new AddEventServiceImp();
			 
			int b=eveService.addEvent(Evemodel, did);
			if(b>0)
			{
				RequestDispatcher r=request.getRequestDispatcher("addEvent.jsp");
				r.include(request, response);
				out.println("<h1>Event Add<h1>");
			}
			else
			{
				RequestDispatcher r=request.getRequestDispatcher("addEvent.jsp");
				r.include(request, response);
				out.println("<h1>Not Event Add<h1>");
			}
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
