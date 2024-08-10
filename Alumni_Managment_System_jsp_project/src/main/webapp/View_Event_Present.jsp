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
       Show_PresentEventService PresentService=new Show_PresentEventServiceImp();
       %>
        <h1>Present Alumni</h1>
        <div class="tbl-header">
          <table cellpadding="0" cellspacing="0" border="1">
            <thead>
              <tr id="trc">
                <th>Sr No</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Department</th>
                <th>year</th>
                <th>Event Name</th>
                <th>Date</th>
                <th>Location</th>
              </tr>
            </thead>
          </table>
        </div>
        
        <div class="tbl-content">
        <%
        	int count=0;
            List<Object[]>list=PresentService.veiwPresentEventAlumni();
            for(Object obj[]:list)
            {     
        %>
          <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
              <tr>
                <td><%=++count %></td>
                <td><%=obj[1] %></td>
                <td><%=obj[2] %></td>
                <td><%=obj[3] %></td>
                <td><%=obj[4] %></td>
                <td><%=obj[5] %></td>
                <td><%=obj[6] %></td>
                <td><%=obj[7] %></td>
                
              </tr>
             
              
            </tbody>
            
          </table>
            <%
            }
        %>
        </div>
       
      </section>
      
      
      <!-- follow me template -->
      <div class="made-with-love">
        Made with
        <i>♥</i> by
        <a target="_blank" href="https://codepen.io/nikhil8krishnan">Nikhil Krishnan</a>
      </div>
      </div>
    </div>
  </div>
    </div>
</body>
</html>