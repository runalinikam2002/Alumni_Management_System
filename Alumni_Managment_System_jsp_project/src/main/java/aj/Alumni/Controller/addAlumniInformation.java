package aj.Alumni.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Alumni.Services.AddAlumniInformationService;
import org.Alumni.Services.AddAlumniInformationServiceImp;

/**
 * Servlet implementation class addAlumniInformation
 */
@WebServlet("/alumniInfo")
public class addAlumniInformation extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2744829520640847404L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		int aluId = Integer.parseInt(request.getParameter("alumniId"));
		int btchid = Integer.parseInt(request.getParameter("dept"));
		int yearId = Integer.parseInt(request.getParameter("yers"));

		System.out.println("session"+aluId);

		
		AddAlumniInformationService adAlInfoSer = new AddAlumniInformationServiceImp();
//		
//		Show_Alumni_Info_Service alService=new Show_Alumni_Info_ServiceImp();
//		int Alumni_Id=alService.show_Alumni(aluId);
//		System.out.println("session"+Alumni_Id);
		
		int b = adAlInfoSer.addAluInfo(aluId, btchid, yearId);
		if (b==1) 
		{
			
			
//			RequestDispatcher r = request.getRequestDispatcher("Show_Alumni_Profile.jsp");
//			r.include(request, response);
			out.println("<h1>Data Add Succesfully<h1>");
		} 
		else if(b==-1)
		{
			RequestDispatcher r = request.getRequestDispatcher("viewAlumniProfile.jsp");
		r.include(request, response);
			out.println("<h1 style='margin-botum:500px;margin-Top:-100px;color: red;'>  Data Alreday Present<h1>");
		}
		else {
			RequestDispatcher r = request.getRequestDispatcher("alumniHome.jsp");
			r.include(request, response);
			out.println("<h1> Data not Add Succesfully<h1>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
