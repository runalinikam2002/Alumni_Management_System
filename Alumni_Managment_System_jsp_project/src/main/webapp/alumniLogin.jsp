<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/alumni_Login.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript">
	
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
     spnElement.style.color="black";
    
    }
   
}
</script>
</head>
<body>
 <body>
    <div class="fi" >
        <img  src="css/rmoveBagroundCap.png" id="ima">
        </div>
       <div class="Container ">
       
         
          <form name="frm" action="ValidAlumni" method="post">
          
         <div class="login" id="loginmid">
                
                
                
               <h1>Login</h1>
               <div class="input-box">
                   <input type="text" id="na" name="name" value="" placeholder="Enter Username" onkeyup="nameVal(this.value)"><br><span id="na"></span> 
               </div>	
       
               <div class="input-box">
                  <input type="password" name="pass" value="" placeholder="Enter password"  onkeyup="validPass(this.value)" required><br><span id="spPass"></span>
               </div>
       
               <div class="remember-forgot">
                   <label><input type="checkbox">Remember me
                   </label>
                   <a href="#">Forgot password</a>
       
               </div>
               
                
                <button type="submit" name="s" value="Login"  class="btn" class="btn btn-outline-danger" id="btn" style="margin-top:2%" onclick="validateForm()">Login</button>
              <div class="register-link">
                       <p style="margin-left: 11%;color: black">Don't have an account? <a href="alumniRegister.jsp" style="color: black">Registration</a></p>
              </div>
               <div class="register-link">
                       <p style="margin-left: 10% ;color: black; ">Admin Login Here <a href="adminLogin.jsp" style="color: black" >Admin Ligin</a></p>
              </div>
               
          </div>
          
          </form>
          
          </div>
          <script >
               function validateForm()
               {
            	  
            	   var name=document.getElementById("na").value;
            	   var pass=document.getElementById("pa").value;
					
            	   if(name==""||pass=="")
            		   {
            		     alert("All Field must be filled ");
            		    
            		   }
               }
          
          </script>
</body>
</html>