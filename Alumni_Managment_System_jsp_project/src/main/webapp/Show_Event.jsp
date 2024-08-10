<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.Alumni.Services.*,java.util.*,aj.Alumni.Controller.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/Event_show.css">
 <link rel="stylesheet" href="css/button.css">
</head>
<body>
<%!

view_all_Department_ServiceImp  alService=new view_all_Department_ServiceImp ();
	
%>
<%
 		//HttpSession session1 = request.getSession();              
   int aluid = Integer.parseInt(session.getAttribute("alumniId").toString());
     System.out.println("main Alumni Session id:="+aluid); 
     
 
	Show_Alumni_Info_Service alService=new Show_Alumni_Info_ServiceImp();
		int Alumni_Id=alService.show_Alumni(aluid);
		System.out.println(" get Main session id under the addinfoalumni table in AlumniId id:="+Alumni_Id);
		
		List<Object[]>list= alService.View_Alumni_Profile(Alumni_Id);
		String depName=null;
		for(Object obj[]:list)
		{
			depName=obj[3].toString();
			
			
		}
		System.out.println("Department name:="+depName);
		
%> 
     <div class="cont">
        <div class="subCon">
            <h1 id="upc">Upcoming Events</h1>
           
        </div>
        <div class="part">
            <div class="container">
                <h2>MERI FAMILY<small>Triggers on 767px</small></h2>
                <ul class="responsive-table">
                  <li class="table-header">
                    <div class="col col-1">Job Id</div>
                    <div class="col col-2">Event Name</div>
                    <div class="col col-3">Event Date</div>
                    <div class="col col-4">Event Addres</div>
                    <div class="col col-4"> Start Time</div>
                    <div class="col col-4">End Time</div>
                    <div class="col col-4">Department</div>
                    <div class="col col-4">JoinUs</div>
                  </li>
                  <%
                  show_Evant_Service evnService=new show_Evant_ServiceImp();
                  int count=0;
                  int EventId;
                  List<Object[]>list1=evnService.view_Event(depName);
                  for(Object obj[]:list1)         	 
                  {    
                	  EventId=Integer.parseInt(obj[0].toString());
                  %>
                  
                  <li class="table-row">
                    <div class="col col-1" data-label="Job Id"><%=++count %></div>
                    <div class="col col-2" data-label="Customer Name"><%=obj[1] %></div>
                    <div class="col col-3" data-label="Amount"><%=obj[2] %></div>
                    <div class="col col-4" data-label="Payment Status"><%=obj[3] %></div>
                     <div class="col col-4" data-label="Payment Status"><%=obj[4] %></div>
                      <div class="col col-4" data-label="Payment Status"><%=obj[5] %></div>
                       <div class="col col-4" data-label="Payment Status"><%=obj[6] %></div>
                        <div class="col col-4" ><a href="EvntPresent?evntId=<%=EventId %>&alumniId=<%=Alumni_Id %>" id="join" >Join Now</a></div>
                        
                  </li>
                 <%
                 System.out.println("present Alumni of Event Id"+Alumni_Id);
                  System.out.println("Event Id"+EventId);
                  }
                  
                 %>
                </ul>
              </div>
        </div>
    </div>
</body>
</html>