
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import=org.Alumni.Services.*,aj.Alumni.Model.* %>    --%>
<%@page import="org.Alumni.Services.*,aj.Alumni.Model.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/viewAlumniProfile.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigink="anonymous"></script>

</head>
<body>
	<%!AlumniRegiModel amodel;%>
	<%
	int aluid = Integer.parseInt(session.getAttribute("alumniId").toString());
	AlumniRegiService aluService = new AlumniRegiServiceImp();

	amodel = aluService.getProfile(aluid);
	%>
	<form name="frm" action="alumniInfo" method="post">
		<div class="Container ">


			<div class="login" id="loginmid">

				<h1>Add Information</h1>
				<div class="input-box">
					<input type="text" name="name" value='<%=amodel.getName()%>'>
					<input type="hidden" name="alumniId" value='<%=aluid%>'>
				</div>
				


				<div class="input-box">
					<input type="text" name="email" value='<%=amodel.getMail()%>'>

				</div>

				<div class="input-box">
					<input type="text" name="contact" value='<%=amodel.getContact()%>'>

				</div>
				
				<%
				addDepartmentService deService = new addDepartmentServiceImp();
				List<departmentModel> dep = deService.getAllDepartment();
				%>

				<div><br>
					<select name="dept">
						<option value="">Select Department</option>
						<%
						for (departmentModel d : dep) {
						%>

						<option value="<%=d.getDid()%>"><%=d.getName()%></option>


						<%
						}
						%>
					</select>
				</div>
				
				<%
				addBatchYersService batcService = new addBatchYersServiceImp();
				List<batchYears> list = batcService.getAllYears();
				%>
				<div><br>
					<select name="yers">
						<option value="">Select Yers</option>
						<%
						for (batchYears b : list) {
						%>

						<option value='<%=b.getId()%>'><%=b.getYears()%></option>

						<%
						}
						%>
					</select>
				</div>


				<button type="submit" name="s" value="addProfile" class="btn"
					class="btn btn-outline-danger" id="btn" style="margin-top: 2%">Add
					Information</button>




			</div>


		</div>
	</form>

</body>
</html>