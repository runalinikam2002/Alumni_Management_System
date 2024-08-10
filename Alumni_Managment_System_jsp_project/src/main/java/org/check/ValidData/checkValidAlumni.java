package org.check.ValidData;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.Alumni.Services.AlumniRegiService;
import org.Alumni.Services.AlumniRegiServiceImp;

/**
 * Servlet implementation class checkValidAlumni
 */
@WebServlet("/ValidAlumni")
public class checkValidAlumni extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String name=request.getParameter("name");
		String email=request.getParameter("pass");
		
		AlumniRegiService aluService=new AlumniRegiServiceImp();
		 
		int value=aluService.verifyAlumni(name, email);
		if(value!=0)
		{
			HttpSession session=request.getSession(true);
			session.setAttribute("alumniId",value);
			RequestDispatcher r=request.getRequestDispatcher("alumniHome.jsp");
			r.forward(request, response);
			
		}
		else
		{
			RequestDispatcher r=request.getRequestDispatcher("alumniLogin.jsp");
			r.include(request, response);
			out.println("<h1>Employee Not Found</h1>");
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
