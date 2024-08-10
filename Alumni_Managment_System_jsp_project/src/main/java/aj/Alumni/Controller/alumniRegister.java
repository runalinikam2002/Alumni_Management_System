package aj.Alumni.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Alumni.Services.AlumniRegiService;
import org.Alumni.Services.AlumniRegiServiceImp;

import aj.Alumni.Model.AlumniRegiModel;


@WebServlet("/register")
public class alumniRegister extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("contct");
		String username=request.getParameter("username");
		String pass=request.getParameter("pass");
		
		AlumniRegiModel model=new AlumniRegiModel();
		
		model.setName(name);
		model.setMail(email);
		model.setContact(contact);
		model.setUsername(username);
		model.setPass(pass);
		
		AlumniRegiService alService=new AlumniRegiServiceImp();
		
		boolean value=alService.addAlumniRegi(model);
		if(value)
		{
			RequestDispatcher r=request.getRequestDispatcher("alumniRegister.jsp");
			r.include(request, response);
			out.println("<h1>registration Succesfully</h1>");
			
		}
		else
		{
			out.println("<h1>registration Not Succesfully</h1>");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
