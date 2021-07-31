<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
        <jsp:include page="style.jsp" /> 
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
		      <li class="nav-item active">
		        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#home">Home &nbsp;<i style='font-size:17px' class='fas fa-home'></i></a>
                      </li>&nbsp;&nbsp;&nbsp;
                      <li class="nav-item">
		        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact us &nbsp;<i style='font-size:17px' class='fas fa-address-book'></i></a>
		      </li>&nbsp;&nbsp;&nbsp;
		      <li class="nav-item">
		        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#About">About &nbsp;<i style='font-size:17px' class='fas fa-star'></i></a>
		      </li>&nbsp;&nbsp;&nbsp;
                      <li class="nav-item">
                          <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#signUp">Sign up &nbsp;<i style='font-size:17px' class='fas'>&#xf2f6;</i></a>
		      </li>&nbsp;&nbsp;&nbsp;		      
		      <li class="nav-item">
		        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#login">Login &nbsp;<i style='font-size:17px' class='fas fa-key'></i></a>
		      </li>
                      
		    </ul>
		  </div>	
	</div>
</nav>

<!-- Intro Seven -->
<section class="intro carousel slide bg-overlay-light h-auto" id="home">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1" class=""></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="carousel-item active">
          <img style="width:100%" src="Img/Home.jpg">
        <div class="carousel-caption ">
          	<h2 class="display-4 text-white mb-2 mt-4">- T-shirts for Men -</h2>
                <p class="text-white mb-3 px-5 lead">Buy Latest Collections of t-shirts </p>
                <p class="text-white mb-3 px-5 lead">at India's Best Online Shopping Store.</p>
        </div>
      </div>
      
    </div>
    
    
</section>
<section class="team-section py-5" id="Shop">

<div class="container">
    <br>
	<br>
	<div class="row" id="ads">
    <%@ page import="java.sql.*"%>
             <%
		try
		{
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_product where available_or_not='y'");  
                        while(rs.next())
		  	{
			%>
             
            <!-- Category Card -->
    
    <div class="col-md-4">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge" style="background-color: skyblue"><% out.println(rs.getString("brand_name"));%></span>
                <span class="card-notify-year" style="background-color: black">MY T</span>
                <center><br>
                    <img class="img-fluid" src="<% out.println(rs.getString("image"));%>" style="height: 120px;width: 120px" alt="Alternate Text" /></center>
            </div><hr>
            <div class="card-image-overlay m-auto">
                <center> <span class="card-detail-badge" style="background-color: skyblue"><% out.println(rs.getString("sell_price")+"/- Rs.");%></span> </center>
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5><% out.println(rs.getString("prod_name"));%></h5>
                </div>
                <a class="ad-btn" style="background-color: skyblue" href="#login">View
                </a>
            </div>
        </div>
    </div>
                <% }
                
}
          catch(Exception e)
                {
			out.println(e);
                }
                %>
                
        </div>
    


</div>
</section>
<section class="team-section py-5" id="About">
	 <div class="container" >
             <br>
      <!-- Contact Section Heading -->
      <center><h2>
          <i class="fas fa-star"></i>
        About Us
          <i class="fas fa-star"></i>
        </h2></center><hr>

      <!-- About Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-white">About</h2>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        
        <div class="divider-custom-line"></div>
      </div>

      <!-- About Section Content -->
      <div class="row">
        <div class="col-lg-4 ml-auto">
          <p class="lead">T-shirts for men's - Buy Latest Collections of t-shirts at India's Best Online Shopping Store. </p>
        </div>
        <div class="col-lg-4 mr-auto">
          <p class="lead">Men Tshirts - Buy full & half sleeve round neck T-shirts online for men at M&D. Shop for polo & cotton t shirts for men at best prices in India.
</p>
        </div>
      </div>

      <!-- About Section Button -->
      

    </div>
</section>
  
<!-- Info block 1 -->
<section class="info-section" id="login">
    <div class="container login-container" style="width:70%" style="height:50%">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <img src="Img/User_Follower-512.png" alt="Avatar" class="avatar">
                </div>
                <div class="col-md-6 bg-primary login-form-2">
                    <center><h2 style="color:black">Login</h2></center>
                    <form action="CheckLogin.jsp" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Email *" value="" name="email" required=""/>
                        </div><br>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Your Password *" value="" name="pass" required=""/>
                        </div><br><br>
                        <center><div class="form-group">
                                <input type="submit" class="btnSubmit" style="width:150px;height: 40px;color: black " value="Login" name="Login" />
                            </div><br>
                        <div class="form-group">

                            <a href="#" class="ForgetPwd" style="color:black" value="Login">Forget Password?</a>
                            
                        </div></center>
                    </form>
                </div>
            </div>
        </div>
</section>


<section class="team-section py-5" id="signUp">
	 
<div class="container register-form">
            <div class="form">
                <div class="bg-primary">
                    <center><br><h2>Registration</h2><br></center>
                </div>

                <div class="form-content">
                    <form action="sign_up.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="f_name" placeholder="First Name" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="l_name" placeholder="Last Name" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="add" placeholder="Address" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <select type="text" class="form-control" name="city" placeholder="City *" value="" required="">
                                <option class="hidden"  selected disabled>City</option>
                                <%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select city_name from tbl_city where status='A'");
                                            
                                        while(rs.next())
                                        {
                                            %><option><% out.println(rs.getString("city_name")); %></option><%
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
                                 <input type="text" class="form-control" name="c_number" placeholder="Contact Number" value="" maxlength="10" minlength="10" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="email" placeholder="Email address" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="pass" placeholder="Password" value="" required=""/>
                            </div>
                             <div class="form-group">
                                 <input type="password" class="form-control" name="c_pass" placeholder="Confirm Password" value="" required=""/>
                            </div>
                        </div>
                    </div><br>
                    <center><button type="submit" class="btnSubmit bg-primary" value="submit" name="sign_up">Submit</button></center></form>
                </div>
            </div>
        </div>
</section>
                                
<!-- Info block 1 -->
<section class="team-section py-5"  id="contact">
	 
<div class="container register-form">
            <div class="form">
                <div class="bg-primary">
                    <center><br><h2>Contact Us</h2><br></center>
                </div>

                <div class="form-content">
                    
                        
                            
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Name" value="" required="" />
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-control"  placeholder="Contact Number" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email address" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="text"  class="form-control" placeholder="Suggestion" value="" required=""/>
                            </div>
                   
                    <br>
                    <center><button type="submit" class="btnSubmit bg-primary" value="submit" name="">Submit</button></center></form>
                </div>
            </div>
        </div>
  </section>
<!-- team style 1 -->

<section class="info-section bg-primary py-0">

 <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Footer Location -->
        <div class="col-lg-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4"><br><b><i>Location</i></b></h4>
          <p class="lead mb-0">19, Mangalmurti Apt,
            <br>Near Bhatar char rasta,
            <br>Suart, 395017.<br>
            <br>MO : 9714029100</p>
        </div>

        <!-- Footer Social Icons -->
        <div class="col-lg-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4"><br><b><i>Around the Web</i></b></h4>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
              <i class="fab fa-fw fa-facebook"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-twitter"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-linkedin-in"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-dribbble"></i>
          </a>
        </div>

        <!-- Footer About Text -->
        <div class="col-lg-4">
            <h4 class="text-uppercase mb-4"><br><b><i>Links</i></b></h4>
		<p>
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#login">Login</a>
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#signUp">Sign Up</a></p>

        </div>

      </div>
    </div>
  </footer>
  <!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
        <hr><small style="color: black"><b><i>Copyright &copy; Man Patel 2020</i></b></small><hr>
    </div>
  </section>
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
  