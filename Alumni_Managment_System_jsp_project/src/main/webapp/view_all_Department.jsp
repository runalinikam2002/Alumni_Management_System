<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.Alumni.Services.*,aj.Alumni.Model.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body style="border-left: 2px ">
<%@include file="dashbord.jsp" %>

<%!view_all_Department_ServiceImp  alService=new view_all_Department_ServiceImp (); %>
<table class="table table-striped"  style="border: 2px;width: 50%;margin-left: 20%;margin-top: 10%" id="tab">
  <thead>
    <tr>
      <th scope="col">Sr No</th>
      <th scope="col">Department Name</th>
      <th scope="col">DELETE</th>
      <th scope="col">UPDATE</th>
    </tr>
  </thead>
  <tbody style="border: 1px">
  <%
  	int count=0;
        List<departmentModel>list=alService.viewAllDepartment();
        for(departmentModel dep:list)
        {
   %> 

    <tr>
      <th ><%=++count %></th>
      <td><%=dep.getName() %></td>
      <td><a href='del?depId=<%=dep.getDid() %>'>DELETE</a>  </td>
      <td><a href='UpdateDepartment?did=<%=dep.getDid()%>&dname=<%=dep.getName()%>'>UPDATE</a></td>
    </tr>
   
    <%
        }
   %>  	
  </tbody>
   </div>
    </div>
  </div>
    </div>
</table>
</body>
</html>