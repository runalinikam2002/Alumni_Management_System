<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.Alumni.Services.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/View_Event_Present.css">
<link rel="stylesheet" href="css/button.css">

</head>

<body>
 <section>
 <form name="frm" action="sendfeedback" method="post">
 
 
       <%!
       Show_PresentEventService PresentService=new Show_PresentEventServiceImp();
       %>
       <%
 		//HttpSession session1 = request.getSession();              
   int aluid = Integer.parseInt(session.getAttribute("alumniId").toString());
     System.out.println("main Alumni Session id:="+aluid); 
     
 
	Show_Alumni_Info_Service alService=new Show_Alumni_Info_ServiceImp();
		int Alumni_Id=alService.show_Alumni(aluid);
		System.out.println(" get Main session id under the addinfoalumni table in AlumniId id:="+Alumni_Id);
      
%> 
        <h1>Send Feedback</h1>
        <div class="tbl-header" style="width: 50%;margin-left: 27%;" >
          <table cellpadding="0" cellspacing="0" border="1">
            <thead>
              <tr id="trc">
                <th>Sr No</th>               
                <th>Event name</th>               
                <th>Date</th>
                <th>Send Feedback</th>
                
              
              </tr>
            </thead>
          </table>
        </div>
        
        <div class="tbl-content" style="width: 50%;margin-left: 27%;">
        <%
            int PresentEventId;
        	int count=0;
            List<Object[]>list=PresentService.Personal_event_join(Alumni_Id);
            for(Object obj[]:list)
            {     
            	 /* PresentEventId=Integer.parseInt(obj[0].toString()); */ 
        %>
          <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
              <tr>
                <td><%=++count %></td>
                <td><%=obj[1] %></td>
                <td><%=obj[2] %></td>
                <td><a href="send_feedback.jsp?&Presentid=<%=obj[0] %>" id="join" >Send Feedback</a></td>
                 
              </tr>
             
              
            </tbody>
            
          </table>
            <%
            }
        %>
        </div>
       
      </section>
      
   </form>   
      
      
    
</body>
</html>