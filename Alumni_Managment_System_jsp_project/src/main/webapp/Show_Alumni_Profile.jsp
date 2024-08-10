<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.Alumni.Services.*,java.util.*,aj.Alumni.Controller.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/View_Event_Present.css">

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
      
%> 
<form  name='frm' action="alumniInformation" method="POST">
 <section>
 
      
        <h1>Profile</h1>
        <div class="tbl-header">
          <table cellpadding="0" cellspacing="0" border="1">
            <thead>
              <tr id="trc">
                <th>Sr No</th>
                <th>Name</th>
		<th>Email</th>
                <th>Contact</th>
                <th>Department</th>
                <th>year</th>
              </tr>
            </thead>
          </table>
        </div>
        
        <div class="tbl-content">
        <%
  List<Object[]>list= alService.View_Alumni_Profile(Alumni_Id);
  
  int count=0;
  for(Object obj[]:list)
  { 
	  %>
          <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
              <tr>
                <th scope="row"><%=++count%></th>
				      <td><%=obj[0] %></td>
				      <td><%=obj[1] %></td>
				      <td><%=obj[2] %></td>
				      <td><%=obj[3] %></td>
				      <td><%=obj[4] %></td>
                
              </tr>
             
              
            </tbody>
            
          </table>
           <%
  }
   %> 
        </div>
       
      </section>
      
      
      
      </div>
  </body>
</html>