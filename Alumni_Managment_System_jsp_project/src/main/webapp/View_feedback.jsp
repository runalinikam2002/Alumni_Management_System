<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.Alumni.Services.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/View_Event_Present.css">

</head>

<body>
 <section>
 <%@include file="dashbord.jsp" %>
       <%!
       Add_Feedbak_Service FeedbackService=new Add_Feedbak_ServiceImp();
       %>
        <h1>View Feedback Alumni</h1>
        <div class="tbl-header">
          <table cellpadding="0" cellspacing="0" border="1">
            <thead>
              <tr id="trc">
                <th>Sr No</th>
                <th>Alumni Name</th>
                <th>Contact</th>
                <th>Department</th>
                <th>year</th>
                <th>Event Name</th>
                <th>Feedback</th>
                
              </tr>
            </thead>
          </table>
        </div>
        
        <div class="tbl-content">
        <%
        	int count=0;
            List<Object[]>list=FeedbackService.view_all_Feedback();
            for(Object obj[]:list)
            {     
        %>
          <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
              <tr>
                <td><%=++count %></td>
                <td><%=obj[0] %></td>
                <td><%=obj[1] %></td>
                <td><%=obj[2] %></td>
                <td><%=obj[3] %></td>
                <td><%=obj[4] %></td>
                <td><%=obj[5] %></td>
               
                
              </tr>
             
              
            </tbody>
            
          </table>
            <%
            }
        %>
        </div>
       
      </section>
      
      
     
      </div>
    </div>
  </div>
    </div>
</body>
</html>