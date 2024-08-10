<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>batchyear</title>
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
	margin-top: 50px;
	margin-right: 5%;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	height: 66vh;
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
    margin-top: 14%;
}

label {
	font-weight: bold;
    /* margin-top: 17%; */
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
   
    <form name="frm" action="AddYeras" method="post">
        <%@include file="dashbord.jsp" %>
   <div class="container-fluid  ">
        <div class="row">
         	<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			         <div class="col-md-6 col-sm-12" id="img" >
			             
			             <img style=""  src="imag/year1.jpg" 
						class="img-fluid mt-5">
						
						<h5 id="response" class="mt-5"></h5>
			         
			         
			         </div>
			         
			         <div class="col-md-6 col-sm-12 sub ">

							<h2
								style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">ADD BATCH YEARS</h2>
							
								<div class="form-group">
                                    <label for="Name">Event Year:</label> 
                                    <input type="text" name="EvName" placeholder="Enter Batch year" class="form-control"/>
                  
                                </div>
            
	                        <button style="width: 30%; text-align: center;  margin-left: 32%" type="submit" id="s" class="btn btn-primary">Add Year</button>
							</form>
						</div>
			        
			        </div>
			     
			     
			     </div>
			
			
			</div>
          
        
        </div>
   </div>
</form>
</body>
</html>