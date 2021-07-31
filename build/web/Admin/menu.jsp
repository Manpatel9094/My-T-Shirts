<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<style>


/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 18px;
  color: #818181;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
  color: #f1f1f1;
}

/* Main content */
.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
  background-color: green;
  color: white;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
  display: none;
  background-color: #262626;
  padding-left: 8px;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
  float: right;
  padding-right: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<body class="w3-light-grey">

<!-- Top container -->


<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left w3-top" style="z-index:3;width:300px;" id="mySidebar"><br>
  
    <div class="w3-container w3-row">
    <div class="w3-col s4">
        <img src="../Img/admin.png" class="w3-circle w3-margin-right" style="width:76px;height: 100px">
    </div>
    <div class="w3-col s8 w3-bar">
      <h2>Welcome, <strong>Admin</strong></h2>
    </div>
  </div>
  <hr>
  
  <div class="w3-bar-block">
      <a href="Admin_Dashboard.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-dashboard fa-fw"></i>  Dashboard</a>
      <a href="view_users.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Users</a>
<a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-history fa-fw"></i> Orders</a><hr>

      
      
      <button class="dropdown-btn" style="background-color: white;color: black"><i class="fa fa-bank fa-fw"></i>&nbsp;&nbsp;Manage Cities
    <i class="fa fa-caret-down"></i>
  </button>
      <div class="dropdown-container" style="background-color: white;color: black">
      <a href="Add_city_form.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-plus fa-fw"></i>  Add city</a>
      <a href="view_cities.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  View cities</a></div>
    
      <button class="dropdown-btn" style="background-color: white;color: black"><i class="fa fa-list-alt fa-fw"></i>&nbsp;&nbsp;Manage Categories 
    <i class="fa fa-caret-down"></i>
  </button>
      <div class="dropdown-container" style="background-color: white;color: black">
          <a href="Add_category_form.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-plus fa-fw"></i>  Add category</a>
          <a href="view_categories.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  View categories</a></div>

      <button class="dropdown-btn" style="background-color: white;color: black"><i class="fa fa-star fa-fw"></i>&nbsp;&nbsp;Manage Brands 
    <i class="fa fa-caret-down"></i>
  </button>
      <div class="dropdown-container" style="background-color: white;color: black">
          <a href="Add_brand_form.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-plus fa-fw"></i>  Add brand</a>
      <a href="view_brands.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  View brand</a></div>
      
      <button class="dropdown-btn" style="background-color: white;color: black"><i class="fa fa-tasks fa-fw"></i>&nbsp;&nbsp;Manage size 
    <i class="fa fa-caret-down"></i>
  </button>
      <div class="dropdown-container" style="background-color: white;color: black">
          <a href="Add_size_form.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-plus fa-fw"></i>  Add size</a>
          <a href="view_sizes.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  View size</a></div>


      <button class="dropdown-btn" style="background-color: white;color: black"><i class="fa fa-tasks fa-fw"></i>&nbsp;&nbsp;Manage Products 
    <i class="fa fa-caret-down"></i>
  </button>
      <div class="dropdown-container" style="background-color: white;color: black">
          <a href="Add_product_form.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-plus fa-fw"></i>  Add product</a>
          <a href="View_product.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  View products</a></div>
    
      
      <hr>
    
      <a href="../index.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
  </div><hr>
  <div class="w3-container">
      <center><h2 class="navbar-brand" href="#"><strong><b style="color: skyblue">My</b> <b style="color: blue">T-</b>Shirts</strong></h2></center>
  </div>
  
  <footer class="w3-container w3-padding-12 w3-gray" style="text-align: center">
    
    <p>Powered by Man Patel <i class="fa fa-copyright"></i> 2020</p>
  </footer>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->

<!-- !PAGE CONTENT! -->
</body>
</html>
<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}
</script>
