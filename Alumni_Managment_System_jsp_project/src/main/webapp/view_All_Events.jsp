<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@page import="org.admin.Services.*,java.util.*,aj.admin.model.*" %>   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
<%@include file="dashbord.jsp" %>

<table class="table" style="border: 1px">
  <thead>
    <tr>
      <th scope="col">Sr No</th>
      <th scope="col">Event Name</th>
      <th scope="col">Event Date</th>
      <th scope="col">Event Address</th>
      <th scope="col">Start Time</th>
      <th scope="col">End Time</th>
      <th scope="col">Department</th>
    </tr>
  </thead>
  <tbody style="border: 1px">
  <%!
     AddEventService EvService=new AddEventServiceImp();
      
   %> 
<%
    int count=0;
    List<Object[]>list=EvService.isViewEvent();
        for(Object obj[]:list)
        {     
    %>
    <tr>
    
       <th ><%=++count %></th>
      <td><%=obj[0] %></td>
      <td><%=obj[1] %></td>
      <td><%=obj[2] %></td>
      <td><%=obj[3] %></td>
      <td><%=obj[4] %></td>
      <td><%=obj[5] %></td>
     <%
        }
     %>
    </tr>
 	
  </tbody>
   </div>
    </div>
  </div>
    </div>
</table>
</body>
</html>
