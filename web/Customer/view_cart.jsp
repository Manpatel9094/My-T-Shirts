<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <!-- Theme CSS -->
  <link href="css/freelancer.min.css" rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->
<jsp:include page="../style.jsp" /> 
<style>
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>


<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<title>My T-shirts</title>
<!-- Top navigation -->
<nav class="navbar navbar-expand-md fixed-top top-nav">
	<div class="container">
            <a class="navbar-brand" href="#"><strong><b style="color: skyblue">My</b> <b style="color: blue">T-</b>Shirts</strong></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav ml-auto">
		      <li class="nav-item">
                          <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Customer_Dashboard.jsp">Home &nbsp;<i style='font-size:17px' class='fas fa-home'></i></a>
                      </li>
                      &nbsp;&nbsp;&nbsp;      
		      <li class="nav-item  active">
                          <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="">My Cart &nbsp;<i style='font-size:17px' class="fas fa-shopping-cart"></i></a>
		      </li>
                      &nbsp;&nbsp;&nbsp;
                           
		     
                      <li class="nav-item">
                          <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Customer_Dashboard.jsp"><% String email=(String) session.getAttribute("user"); out.print(email);%> &nbsp;<i style='font-size:17px' class="fas fa-user"></i></a>
		      </li>
                     
                      
		    </ul>
		  </div>	
	</div>
</nav>
   
<!-- Intro Seven -->
<section class="intro carousel slide bg-overlay-light h-auto" id="home" >
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1" class=""></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="carousel-item active">
                    <img style="width:100%" src="../Img/Home.jpg">

        <div class="carousel-caption ">
          	 <div class="container">

      <!-- About Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-white" style="margin-top: -6%"></h2>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        
        <div class="divider-custom-line"></div>
      </div>

      <br>
    <div class="content" style="height: 540px">
        <div class="animated fadeIn"> 
                    <div class="row">
                
                        <div class="container-fluid">
      
                                <div class="bg-white">

                            <div class="container">
                                
                              <div class="d-flex justify-content-between align-items-center py-4">
                                  
                                <div>
                                  <a href="#" class="d-inline-block text-dark">
                                      <strong style="color: green"></strong></a>
                                    &nbsp;&nbsp;&nbsp;
                                  
                                  <a href="#" style="background-color: red; color: white" class="btn">
                                         Delete Cart
                                    </a>
                                </div>
                                <div>
                                    <a onclick="document.getElementById('id01').style.display='block'" style="width:auto;" href="Customer_Dashboard.jsp" onclick="signup-trigger" data-target="#Change" data-toggle="modal" class="btn btn-primary">
                                   Continue Shopping
                                    </a>&nbsp;&nbsp;&nbsp;
                                    
                                  
                                </div>
                              </div>
                            </div>
                            <hr class="m-0">

                            <div style="color: black"class="container">
                        	<div class="row" id="ads">
    <%@ page import="java.sql.*"%>
             <%
		try
		{
                    
                    

                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  
                            
                                                Statement stmt1=con.createStatement();  
                                                ResultSet rs1=stmt1.executeQuery("select product_id from tbl_cart where email_id='"+email+"'");
                                                while(rs1.next()){
 
                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_product where available_or_not='y' and status='a' and product_id='"+rs1.getString("product_id")+"'");  
                        while(rs.next())
		  	{
			%>
                        <input type="hidden" name="product_id" value="<% out.println(rs.getString("product_id"));%>">
            <!-- Category Card -->
            
    <div class="col-md-4">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge" style="background-color: skyblue"><% out.println(rs.getString("brand_name"));%></span>
                <span class="card-notify-year" style="background-color: black">2021</span>
                <center><br>                
                    <img class="img-fluid" src="../<% out.println(rs.getString("image"));%>" style="height: 120px;width: 120px" alt="Alternate Text" /></center>
            </div><hr>
            <div class="card-image-overlay m-auto">
                <center> <span class="card-detail-badge" style="background-color: skyblue"><% out.println(rs.getString("sell_price")+"/- Rs.");%></span> </center>
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5><% out.println(rs.getString("prod_name"));%></h5>
                </div>
                
                                    <% out.println("<a class="+"ad-btn"+" style='background-color: skyblue' href="+"order_process.jsp?product_id="+rs.getString("product_id")+" >Check out </a>"); %>
                                    <% out.println("<a class="+"ad-btn"+" style='background-color: red;color: white;border: black'  href="+"delete_cart_item.jsp?product_id="+rs.getString("product_id")+" >Remove</a>"); %>

            </div>
        </div>
    </div>
                <% }
}
                
}
          catch(Exception e)
                {
			out.println(e);
                }
                %>
                
                                </div><br>
                                        
                            </div>
                          </div>
                            
                    </div>
                </div>
            </div>
            <!-- .animated -->
        </div>

      <!-- About Section Button -->
      

    </div>
  </section>

  <!-- Footer -->
        </div>
      </div>
      
    </div>
    
</section>


    

    <script>
    // Sticky Header
$(window).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll >= 100) {
        $(".top-nav").addClass("light-header");
    } else {
        $(".top-nav").removeClass("light-header");
    }
});

// Year for copy content
$(function(){
var theYear = new Date().getFullYear();
$('#year').html(theYear);
});

</script>
  <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
