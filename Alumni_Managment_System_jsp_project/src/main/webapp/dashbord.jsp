<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Drop Down Sidebar Menu | CodingLab </title>
    <link rel="stylesheet" href="css/style.css">
    <!-- Boxiocns CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar close">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Alumni</span>
    </div>
    <ul class="nav-links">
      
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-collection' ></i>
            <span class="link_name">Alumni</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">Alumni</a></li>
          <li><a href="view_All_Alumni.jsp">View All Alumni</a></li>
          <li><a href="View_Event_Present.jsp">View Present Alumni</a></li>
          <li><a href="View_Absent_Alumni.jsp">View Absent Alumni</a></li>
        </ul>
        
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-collection' ></i>
            <span class="link_name">Department</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">Department</a></li>
          <li><a href="DepartmentAdd.jsp">Add Department</a></li>
          <li><a href="view_all_Department.jsp">View Department</a></li>
        </ul>
        
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-book-alt' ></i>
            <span class="link_name">Year</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">year</a></li>
          <li><a href="addBatchYear.jsp">Add Year</a></li>
          <li><a href="#">View year</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-plug' ></i>
            <span class="link_name">Event</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">Event</a></li>
          <li><a href="addEvent.jsp">Add Event</a></li>
          <li><a href="view_All_Events.jsp">View Event</a></li>
        </ul>
      </li>
      <li>
      <div class="iocn-link">
          <a href="View_feedback.jsp">
            <i class='bx bx-plug' ></i>
            <span class="link_name">Feedback</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
      </div>
      </li>
     
      <li>
    <div class="profile-details">
      <div class="profile-content">
        <img src="image/profile.jpg" alt="profileImg">
      </div>
      <div class="name-job">
        <div class="profile_name">Prem Shahi</div>
        <div class="job">Web Desginer</div>
      </div>
      <i class='bx bx-log-out' ></i>
    </div>
  </li>
</ul>
  </div>
  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
      <span class="text"></span>
    </div>

  <script src="js/script.js"></script>

</body>
</html>
