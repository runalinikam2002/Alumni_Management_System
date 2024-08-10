<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
<div class="Container ">
  <!-- <marquee><h1>Petrol Pump Management System.....</h1></marquee> -->
   <form name="frm" action="ValidAdmin" method="post">
  <div class="login" id="loginmid">
 
        <h1>Admin Login</h1>
        <div class="input-box">
            <input type="text" name="name" value="" placeholder="Enter Username"> 
        </div>	

        <div class="input-box">
            <input type="password" name="pass" value="" placeholder="Enter password">
            
        </div>

        <div class="remember-forgot">
            <label><input type="checkbox">Remember me
            </label>
            <a href="#">Forgot password</a>

        </div>
        
        <button type="submit" name="s" value="Login"  class="btn" class="btn btn-outline-danger" id="btn" style="margin-top:2%">Login</button>

         
       
         
   </div>
   </form>
   
   </div>
   
</body>
</html>