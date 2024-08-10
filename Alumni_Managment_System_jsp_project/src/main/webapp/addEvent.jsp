<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="org.Alumni.Services.*,aj.Alumni.Model.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EventAdd</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Font Awesome for icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Custom CSS  -->
<style>
  
.container {
	max-width: 900px;
	margin: auto;
/* 	margin-top: 50px; */
	margin-right: 5%;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	animation: fadeIn 2s ease; 
	
}
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

h2 {
	text-align: center;
	margin-bottom: 30px;
}

label {
	font-weight: bold;
}

input[type="text"], select {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ced4da;
	border-radius: 5px;
	box-sizing: border-box;
}

button[type="submit"] {
	width: 90%;
	padding: 10px;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	color: white;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #0056b3;
}




</style>

</head>
<body>
    <%!view_all_Department_ServiceImp  alService=new view_all_Department_ServiceImp ();
    List<departmentModel>list=alService.viewAllDepartment();
    %>
   x
    <form name='evn' action="addEvent" method="POST">
   <div class="container-fluid  ">
        <div class="row">
          
			
			<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			         <div class="col-md-6 col-sm-12" id="img" style="margin-top: 10%;">
			             
			             <img style=" height: 450px;"  src="imag/alumni5.jpg" 
						class="img-fluid mt-5">
						
						<h5 id="response" class="mt-5"></h5>
			         
			         
			         </div>
			         
			         <div class="col-md-6 col-sm-12 sub ">

							<h2
								style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">Add Event</h2>
							
								<div class="form-group">
                                <label for="Name">Event Name:</label> 
                                 <input type="text" name="EvName" placeholder="Enter Event name" class="form-control"/>
                  
            </div>
            <div class="form-group">
                <label>Enter Date</label>
                <input type="date" class="form-control" name="date" placeholder="Enter Event Date" >
                
            </div>

							
                <label>Address</label>
                <input type="text"   class="form-control" name="Address" placeholder="Enter your Address">
                    
                    <div class="form-group">
                        <label>Start Time</label>
                        <input type="time" class="form-control" name="Stime" placeholder="Enter start time" >
                       
                    </div>

                    <div class="form-group">
                        <label>End Time</label>
                        <input type="time" class="form-control" name="Etime" placeholder="Enter Password" >
                        
                    </div>
                    <label>select department</label>
                    <select name='dep'>
                        <option value="">Batch</option>
             
                    <%
                    
                    for(departmentModel dep:list)
                    {
                    %> 
                    
                        <option value="<%=dep.getDid()%>"><%=dep.getName() %></option>
                 <%
                    }
                 %>  
                    </select>
                    	<button style="width: 30%; text-align: center;  margin-left: 35%;" type="submit" id="s" class="btn btn-primary">Submit</button>
							
                    <!-- </div>
								<button style="width: 30%; text-align: center;  margin-left: 56%; margin-bottom: -12%;" type="submit" id="s" class="btn btn-primary">Submit</button>
							</form>
                           

						</div> -->
			        
			        </div>
			     
			     
			     </div>
			
			
			</div>
          
        
        </div>
   </div>
</form>
	



</body>
</html>