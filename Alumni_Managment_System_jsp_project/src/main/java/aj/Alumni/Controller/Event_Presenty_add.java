package aj.Alumni.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Alumni.Services.Add_Presenty_EventService;
import org.Alumni.Services.Add_Presenty_EventServiceImp;


@WebServlet("/EvntPresent")
public class Event_Presenty_add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    
	    int EvntId=Integer.parseInt(request.getParameter("evntId"));
		int AlumniId=Integer.parseInt(request.getParameter("alumniId")); 
	    System.out.println("Presenty event id:="+EvntId);
		 System.out.println("Presenty Alumni event id:="+AlumniId); 
		 
		 Add_Presenty_EventService AdService=new Add_Presenty_EventServiceImp();
	    
		 boolean b=AdService.addPresenty(AlumniId, EvntId);
		 if(b)
		 {
			 RequestDispatcher r=request.getRequestDispatcher("Show_Event.jsp");
			 r.forward(request, response);
			 out.println("<h1>Presenty Add</h1>");
		 }
		
		 else
		 {
			 RequestDispatcher r=request.getRequestDispatcher("Show_Event.jsp");
			 r.forward(request, response);
			 out.println("<h1>Presenty Not Add</h1>");
		 }
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
