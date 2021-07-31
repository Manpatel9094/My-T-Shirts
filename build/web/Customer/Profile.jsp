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
		      <li class="nav-item">
                          <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="../index.jsp">Logout &nbsp;<i style='font-size:17px' class="fas fa-sign-out-alt"></i></a>
		      </li>
                      &nbsp;&nbsp;&nbsp;
                           
		     
                      <li class="nav-item active">
                          <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#"><% String email=(String) session.getAttribute("user"); out.print(email);%> &nbsp;<i style='font-size:17px' class="fas fa-user"></i></a>
		      </li>
                     
                      
		    </ul>
		  </div>	
	</div>
</nav>
   <%@ page import="java.sql.*"%>
             <%
		try
		{
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_user where email_id='"+email+"'");  
                        while(rs.next())
                                        {
			%>
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
      <h2 class="page-section-heading text-center text-uppercase text-white" style="margin-top: -6%">User Profile</h2>

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
                                         Delete Account
                                    </a>
                                </div>
                                <div>
                                    <a onclick="document.getElementById('id01').style.display='block'" style="width:auto;" href="#" onclick="signup-trigger" data-target="#Change" data-toggle="modal" class="btn btn-primary">
                                    Change Password
                                    </a>&nbsp;&nbsp;&nbsp;
                                    
                                  
                                </div>
                              </div>
                            </div>
                            <hr class="m-0">

                            <div style="color: black"class="container">
                        	 
<div class="container register-form">
            <div class="form">
            

                <div class="form-content">
                    <form action="update_profile.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="hidden" name="id" value="<% out.println(rs.getString("user_id"));%>">
                                <input type="text" class="form-control" name="f_name" placeholder="First Name" value="<% out.println(rs.getString("f_name"));%>" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="l_name" placeholder="Last Name" value="<% out.println(rs.getString("l_name"));%>" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="add" placeholder="Address" value="<% out.println(rs.getString("address"));%>" required=""/>
                            </div>
                            <div class="form-group">
                                <select type="text" class="form-control" name="city" placeholder="City *" value="<% out.println(rs.getString("city_name"));%>" required="">
                                <%
                                    try 
                                    {
                                           
                                            Statement st=con.createStatement();  
                                            ResultSet rs1=st.executeQuery("select city_name from tbl_city where status='A'");
                                            
                                        while(rs1.next())
                                        {
                                            %><option><% out.println(rs1.getString("city_name")); %></option><%
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></select>

                            </div>
                           
                        </div>
                        <div class="col-md-6">
                             <div class="form-group">
                                 <input type="text" class="form-control" name="c_number" placeholder="Contact Number" value="<% out.println(rs.getString("contact_no"));%>" maxlength="10" minlength="10" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="email" placeholder="Email address" value="<% out.println(rs.getString("email_id"));%>" required="" readonly=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="" placeholder="" value="<% out.println(rs.getString("added_date"));%>" required="" readonly=""/>
                            </div>
                             
                        </div>
                    </div><br>
                    <center><button type="submit" class="btnSubmit bg-primary" value="submit" name="sign_up">Update</button></center></form>
                </div>
            </div>
        </div>
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
                                <%}
}catch(Exception e)
                {
			out.println(e);
                }
%>
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
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="#" method="post"><hr>
      <center><h2>Change Password</h2></center>
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
      <div class="form-group"><hr>
          <input type="password" class="form-control" placeholder="Enter old password" value="" required="" />
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control"  placeholder="Enter password" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Re-enter password" value="" required=""/>
                            </div><hr>
                    <center><button type="submit" class="btnSubmit bg-primary" value="submit" name="sign_up">Update</button></center></form>
      <hr>
    </div>

  </form>
</div>
