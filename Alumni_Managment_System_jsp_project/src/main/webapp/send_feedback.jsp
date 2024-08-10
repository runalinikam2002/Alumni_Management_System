<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/send_feedback.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Font Awesome for icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Custom CSS  -->
<style>
  
.container {
	max-width: 800px;
	/* margin: auto; */
	height:50vh;
	margin-top: 0%;
	align-content:center;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	animation: fadeIn 2s ease;
	margin-left: 350px; 
	
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
#im
{
    height: 250px;
   margin: 100px auto;
}

label {
	font-weight: bold;
}

input[type="text"], select {
	width: 90%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #a3adb7;
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
 <script>


function validate(str)
    {   var flag=false;
        var spanElement;
       for(var i=0;i<str.length;i++)
       {        var ascii=str.charCodeAt(i);
	  if(!((ascii>=65 && ascii<=90) ||(ascii>=97 && ascii<=122) ||ascii==32))
	  { flag=true;
	     break;
                }
       }  
       if(flag)
       { spanElement=document.getElementById("s");
	 spanElement.innerHTML="invalid name";
	 spanElement.style.color="red";
        //  spanElement.styel.backgroundColor="white";
       }
       else{
         spanElement=document.getElementById("s");
	 spanElement.innerHTML="";
	//  spanElement.style.color="white";
        //  spanElement.styel.backgroundColor="white";

       }   
    }


    

    </script>
</head>
<body>
<%
	int Presentid=Integer.parseInt(request.getParameter("Presentid"));
	System.out.println("send feedback jsp:"+Presentid);

%>
<%@include file="Personal_event_join_Alumni.jsp"%>;
<form name="frm" action="sendfeedback" method="get">
   <div class="container-fluid  " >
        <div class="row">
          
          
			
			<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			         <div class="col-md-6 col-sm-12">
			             
			             <img src="imag/remove1.png" id="im" alt="Patient Registration"
						class="img-fluid mt-5">
						
						<h5 id="response" class="mt-5"></h5>
			         
			         
			         </div>
			         
			         <div class="col-md-6 col-sm-12 sub ">

							<h2
								style="color: #093b6a; font-family: 'Times New Roman', Times, serif;margin-left: -100px;">Add Feedback</h2>
							<form name='frm' method='POST' action='adPatient'>
								<div class="form-group">
								<input type="hidden"  name="feedbackid" value="<%=Presentid%>"/>
                <label for="patientName" style="margin-top: 40px;">Feedback </label> 
                <input type="text" class="form-control" id="patientName"  value=""
                    name="feedbackName" placeholder="Enter Feedback" onkeyup='validate(this.value) 'required>
                   <span id="s"></span>
            </div>
           
								<button type="submit" name="s" class="btn btn-primary">Submit</button>
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