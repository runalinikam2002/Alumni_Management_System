<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/alumniHome.css">
<link rel="stylesheet" href="css/contact.css">
<link rel="stylesheet" href="css/EventDemo.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"crossorigin="anonymous"></script>

</head>
<body>


 <main class="main"> 
        <div class="page-1 ">
            <div class="header">
                <div class="nav container">
                    <div class="logo">
                        
                        <h1>AJ<span>Coder</span></h1>
                    </div>
                    <ul>
                     <li><a href="viewAlumniProfile.jsp">Add information</a></li>
                    	 <li><a href='Show_Alumni_Profile.jsp'>View Profile</a></li>
                        <li><a href="Show_Event.jsp">Show Events</a></li>
                         <li><a href="Personal_event_join_Alumni.jsp">Feedback</a></li>
                        <li><a href="#box">About</a></li>
                        <li><a href="#cont">Contact</a></li>
                    </ul>
                    <a href="" class="btn">Join us</a>
                </div>
            </div>

            <div class="page-1__body container">
                <h2>Welcome to our</h2>
                <h1>Alumni <br> Management System</h1>
                <p>Success is not final, failure is not fatal: it is the courage to <br> continue that counts.</p>
                <a href="" class="btn">Take a Tour</a>
            </div>

            <div class="social container">
                <div><i class="fa-brands fa-instagram"></i></div>
                <div><i class="fa-brands fa-facebook"></i></div>
                <div><i class="fa-brands fa-twitter"></i></div>
                <div><i class="fa-brands fa-github"></i></div> 
            </div>

           

        </div>
    </main>
    
<!--      <div class="section2" id="event">
            <h2 id="upc">Upcoming events</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae voluptatum quidem placeat <br>veniam numquam repudiandae, aliquid dolorem labore reru</p>
      

            <div class="Box">
              <div class="card" style="width: 20rem;">
                <img src="imag/holiday.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Private Cinema</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>

              <div class="card" style="width: 20rem;">
                <img src="imag//small.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Alumni Getway</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>

              <div class="card" style="width: 20rem;">
                <img src="imag/small2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Friendly tournaments</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
              
        </div>


         <div class="Box1">
            <div class="card" style="width: 20rem;">
                <img src="imag/small3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title"> Holiday</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>

              <div class="card" style="width: 20rem;">
                <img src="imag//small6.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Alumni Holi</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>

              <div class="card" style="width: 20rem;">
                <img src="imag/small5.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Dance</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
              
        </div> -->
        
        
    
     <div class="container2" id='box'>
        <div class="part">
         <h1 id="about">About Us</h1>
         <p id='pe'>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quas repellat laborum fugiat deleniti tempora corporis tempore commodi recusandae voluptatum et ducimus aut facere vero, opt</p>
        </div>
        <div class="part1">
            <img src="css/remove_Images.png" id="im">
        </div>
        
    </div>
    
    <!--  contact -->
    <div class="footer">

        <h1 class="title" >College Alumni YMIM</h1>
                        
        <div class="coluna">
             <form action="#" class="formular">
                
                <label>  
                      <input type="text" name="name" class="campo" placeholder="Name" required="">
                </label>

                <label>  
                    
                    <input type="text" name="email" class="campo" placeholder="E-mail" >
                
                </label>

                <label>  
                     <input type="text" name="assunto" class="campo" placeholder="contact" >
                 </label>

                <label>  
                     <textarea name="mensagem" class="campo" placeholder="Address" rows="3" ></textarea>                    
                  </label>

                <label>  
                     <input type="hidden" name="acao" value="enviar">
                    <button class="btnEnviar" title="Enviar">Enviar</button>
                  </label>

            </form>

        </div><!---Div Coluna-->
       
        

        <div class="coluna" id='cont'>

            <div class="info">
                <p><i class=" icon-mail-3" ></i> ymim07@gmail.com</p>                    
                <p><i class=" icon-phone"></i> 21 0000-0000</p>
                <p><i class=" icon-whatsapp"></i> 21 90000-0000</p>
                <p><i class=" icon-pin-1"></i> Local: Av. Rio de janeiro</p>
                <p><i class=" icon-calendar"></i> Atendimento: Segunda a Sexta</p>
                <p><i class=" icon-clock-2"></i> 9:00 ás 18:00</p>
            
            </div>

            <div class="info">

                <ul class="btn_social">
                    <li> <img src="imag/facebook.png"><i class="icofont-facebook b1"></i></a></li>
                    <li><img src="imag/twitter.png"><i class="icofont-twitter b1"></i></a></li>
                    <li><img src="imag/insta.png" ><i class="icofont-instagram b1"></i></a></li>
                    <li><img src="imag/youtube.png"><i class="icofont-youtube b1"></i></a></li>
                    
                </ul>
                
            </div>
           
        </div>
    
    <div class="clear">
        <p>"This is something Mark Twain, or Samuel Clemens wrote, or<br> whatever: "To string incongruities and absurdities together in.<br> a wandering and sometimes purposeless way, and seem<br>innocently unaware that they are absurdities, is the basis of the American art.”</p>
        <h3 style="margin-top: 24%; margin-left: 19%;" >Copyright @2024 College Alumni System</h3>
    </div>
    </div>
    
    

    </div>
    
    
</body>
</html>