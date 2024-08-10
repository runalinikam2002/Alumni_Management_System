<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
 Connection conn;
 PreparedStatement stmt;
 ResultSet rs;
%>
<%
 String regName=request.getParameter("n");
 Class.forName("com.mysql.cj.jdbc.Driver");
 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni_event", "root","root");
 if(conn!=null){
	stmt=conn.prepareStatement("select a.regName,a.regMail,a.regContact,d.Dep_name,b.batch_year from alumniregistration a inner join addinfoalumni ad on a.regId=ad.regId inner join department d on d.Dep_id=ad.Dep_id inner join batchyear b on b.btcId=ad.btcId where regName like '%"+regName+"%' "); 
	rs=stmt.executeQuery();
	out.println("<table border='5' align='center' width='50%'>");
	out.println("<tr><th>Name</th><th>Email</th><th>Contact</th><th>Department Name</th><th>batch year</th></tr>");
	while(rs.next()){
		out.println("<tr>");
		 /* out.println("<td>"+rs.getInt(1)+"</td>"); */
		out.println("<td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+rs.getInt(5)+"</td>");
		
		out.println("</tr>");
	}
	out.println("</table>");
 }
 else{
	 out.println("Database is not connected");
 }
%>
</body>
</html>