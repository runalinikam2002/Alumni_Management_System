<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/registration.css">
</head>
<body>
 <div class="container">
        <form action="" method="post">
            <h1>Registration From</h1>
            <div class="content" id="abc">
                <div class="input-box">
                    <label for="name">Full Name</label>
                    <input type="text" placeholder="Enter Full Name" name="name">
                </div>

                <div class="input-box">
                    <label for="username">Username</label>
                    <input type="text"placeholder="Enter Username" name="username">
                </div>

                <div class="input-box">
                    <label for="email">Email</label>
                    <input type="email" placeholder="Enter Your Email" name="email">
                </div>

                <div class="input-box">
                    <label for="phonenumber">Phone Number</label>
                    <input type="tel" placeholder="Enter Your Phone Number" name="phonenumber">
                </div>

                <div class="input-box">
                    <label for="Password">Password</label>
                    <input type="password" placeholder="Enter your password" name="password">
                </div>
                <span class="gender-title">Gender</span>
                <div class="gender-category">
                    <input type="radio" name="gender" id="male">
                    <label>Male</label>
                    <input type="radio" name="gender" id="f1male">
                    <label>Female</label>
                    <input type="radio" name="gender" id="other">
                    <label>other</label>
                </div>
            </div>
           <div class="button-container">
                <button type="submit">Submit</button>
           </div>
            
        </form>

    </div>


</body>
</html>