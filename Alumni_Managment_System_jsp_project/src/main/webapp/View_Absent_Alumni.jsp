<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.admin.Services.*,java.util.*" %>
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
       Show_absent_AlumniService AbsentService=new Show_absent_AlumniServiceImp();
       %>
        <h1>Absent Alumni</h1>
        <div class="tbl-header">
          <table cellpadding="0" cellspacing="0" border="1">
            <thead>
              <tr id="trc">
                <th>Sr No</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Department</th>
                <th>year</th>
              </tr>
            </thead>
          </table>
        </div>
        
        <div class="tbl-content">
        <%
        	int count=0;
            List<Object[]>list=AbsentService.View_absent_Alumni();
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