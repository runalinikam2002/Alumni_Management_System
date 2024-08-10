<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
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
	width: 90%;
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
<script type='text/javascript'>
    function nameVal(str)
         {     let flag=false;
             var spnElement;
             for(var i=0;i<str.length;i++)
             {
                 let ascii=str.charCodeAt(i);
                 if(!( (ascii>=65&& ascii<=97)||(ascii>=97 && ascii<=122) ||ascii==32))
                 {
                    flag=true;
                    break;
                 }
             }
             if(flag)
             {
             spnElement=document.getElementById("na");
             spnElement.innerHTML="invalid name";
             spnElement.style.color="red";
           
             }
             else{
              spnElement=document.getElementById("na");
              spnElement.innerHTML="";
              spnElement.style.color="white";
             
             }
            
         }
     var spanElement;
     function Emailvaild(str)
     {   var flag=false;
         var index=str.indexOf("@");
         var count=0;
         for(var i=0;i<str.length;i++)
         {
              if(str.charAt(i)=='@')
             { 
                 ++count;
             }
         }
         if(index!=-1 && index>0 && count==1)
         {  
              var epart=str.substring((index+1),str.length);
             index=epart.indexOf(".");
             if(index!=-1 && (index==epart.length-4 || index==epart.length-3))
             {
                 spanElement=document.getElementById("email");
                 spanElement.innerHTML="valid email address dot present";
                 spanElement.style.color="red";
            }
           else
             {
                 spanElement=document.getElementById("email");
                 spanElement.innerHTML="Invalid Email Address ";
                 spanElement.style.color="red";
             }
 
         }
         else
         {
             spanElement=document.getElementById("email");
             spanElement.innerHTML="Invalid Email Address "+count;
             spanElement.style.color="red";
         }
     }
 
     function MobileValidate(str)
     {   
         var flag=false;
         var spanElement;
         for(var i=0;i<str.length;i++)
         {
             var ascii=str.charCodeAt(i);
             if(!((ascii>=48 && ascii<=57) && (str.length==10) && (!(str.charCodeAt(0)>=49 && str.charCodeAt(0)<=53))))
            { 
                 flag=true;
                 break;
           }
        }  
        if(flag)
        { 
                 spanElement=document.getElementById("co");
                 spanElement.innerHTML="invalid Contact";
                 spanElement.style.color="red";
                 spanElement.styel.backgroundColor="white";
        }
        else
        {
             spanElement=document.getElementById("co");
             spanElement.innerHTML="";
             spanElement.style.color="white";
             spanElement.styel.backgroundColor="white";
 
        }   
     }
    
     function validPass(str) {
     var sp = document.getElementById("spPass");
     if (str.length < 8) {
         sp.innerHTML = "Password must be at least 8 characters long";
         sp.style.color = "red";
         sp.style.backgroundColor = "white";
         return;
     }
     if (!/[A-Z]/.test(str)) {
         sp.innerHTML = "Password must contain at least one uppercase letter";
         sp.style.color = "red";
         sp.style.backgroundColor = "white";
         return;
     }
     if (!/[a-z]/.test(str)) {
         sp.innerHTML = "Password must contain at least one lowercase letter";
         sp.style.color = "red";
         sp.style.backgroundColor = "white";
         return;
     }
     if (!/[0-9]/.test(str)) {
         sp.innerHTML = "Password must contain at least one number";
         sp.style.color = "red";
         sp.style.backgroundColor = "white";
         return;
     }
     if (!/[!@#$%^&*(),.?":{}|<>]/.test(str)) {
         sp.innerHTML = "Password must contain at least one special character";
         sp.style.color = "red";
         sp.style.backgroundColor = "white";
         return;
     }
     sp.innerHTML = "";
     sp.style.color = "white";
     sp.style.backgroundColor = "white";
 }
  </script>
 

</head>
<body>

   <div class="container-fluid  ">
        <div class="row">
          
			
			<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			         <div class="col-md-6 col-sm-12">
			             
			             <img src="imag/alumni7.jpg" alt="Patient Registration"
						class="img-fluid mt-5">
						
						<h5 id="response" class="mt-5"></h5>
			         
			         
			         </div>
			         
			         <div class="col-md-6 col-sm-12 sub ">

							<h2
								style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">Registration Page</h2>
							<form name='frm' method='POST' action='register'>
								<div class="form-group">
                <label for="Name">Enter Name:</label> <input
                    type="text" class="form-control" id="patientName"  value=""
                    name="name" placeholder="Enter Alumni name" onkeyup='nameVal(this.value) 'required>
                   <span id="na"></span>
            </div>
            <div class="form-group">
                <label for="email">Enter Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Alumni Email Id" onkeyup="Emailvaild(this.value)" required>
                <span id="email"></span>
            </div>

							
                <label for="contact">Contact No</label>
                 <input type="text"   class="form-control" id="contact" name="contct"  value=""
                    placeholder="Enter contact number" onkeyup='MobileValidate(this.value)' required>
                    <span id="co"></span>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" onkeyup="nameVal(this.value)" required>
                        <span id="d"></span>
                    </div>

                    <div class="form-group">
                        <label for="Password">Password</label>
                        <input type="text" class="form-control" id="Password" name="pass" placeholder="Enter Password" onkeyup="validPass(this.value)" required>
                        <span id="spPass"></span>
                    </div><br><br>
                    </div>
								<button style="width: 30%; text-align: center;  margin-left: 56%" type="submit" name="s" class="btn btn-primary">Submit</button>
							</form>


						</div>
			        
			        </div>
			     
			     
			     </div>
			
			
			</div>
          
        
        </div>
   </div>
	
	



</body>
</html>