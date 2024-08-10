<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script type='text/javascript'>
    function searchByName(str){
    	let xhttp=new XMLHttpRequest();
    	xhttp.onreadystatechange=function(){
    		 if(this.readyState==4 && this.status==200){
    			 document.getElementById("d").innerHTML=this.responseText;
    		 }
    	};
    	xhttp.open("GET","searchbyname.jsp?n="+str,true)
    	xhttp.send();
    }
 </script>
</head>
<body>
 <%!
   Connection conn;
   PreparedStatement stmt;
   ResultSet rs;
 %>
 <%
   Class.forName("com.mysql.cj.jdbc.Driver");
 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni_event","root","root");
 if(conn!=null){
	 stmt=conn.prepareStatement("select a.regName,a.regMail,a.regContact,d.Dep_name,b.batch_year from alumniregistration a inner join addinfoalumni ad on a.regId=ad.regId inner join department d on d.Dep_id=ad.Dep_id inner join batchyear b on b.btcId=ad.btcId");
	 rs=stmt.executeQuery();
%>
<center><input type='text' name='name' value='' style='width:30%;height:50px; border: 3 px solid black' onkeyup="searchByName(this.value)"/></center>
<br><br>
<div id="d">
 <table border='8' align='center' width='90%'>
  <tr>
  <!-- <th>Alumni id</th> -->
   <th>NAME</th>
   <th>Mail</th>
   <th>Contact</th>
   <th>Department Name</th>
   <th>batch year</th>
  </tr>
 <% 
	 while(rs.next()){
 %>
	 <tr>
	  <%-- <td><%=rs.getInt(1)%></td> --%>
	  <td><%=rs.getString(1)%></td>
	  <td><%=rs.getString(2)%></td>
	  <td><%=rs.getString(3)%></td>
	  <td><%=rs.getString(4)%></td>
	  <td><%=rs.getInt(5)%></td>
	  
	 </tr>
	<%	 
	 }
  %>
  </table>
  <% 
 }
 else{
	 out.println("<h1>Database is not connected</h1>");
 }
 
 %>
 </div>
</body>
</html>