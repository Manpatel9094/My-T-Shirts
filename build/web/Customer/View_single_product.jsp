<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <!-- Theme CSS -->
  <link href="css/freelancer.min.css" rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->
<jsp:include page="../style.jsp" /> 

<style>
    
/*****************globals*************/
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */
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
                      </li>&nbsp;&nbsp;&nbsp;
                           
		     
                      <li class="nav-item active">
                          <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#"><% String email=(String) session.getAttribute("user"); out.print(email);%> &nbsp;<i style='font-size:17px' class="fas fa-user"></i></a>
                      </li>
                      
                      
                      
		    </ul>
		  </div>	
	</div>
</nav>
   <%@ page import="java.sql.*"%>
             <%
                 
                                     String product_id = request.getParameter("product_id");

		try
		{
                    
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_product where product_id='"+product_id+"'");  
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
      <h2 class="page-section-heading text-center text-uppercase text-white" style="margin-top: -12%"></h2>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        
        <div class="divider-custom-line"></div>
      </div>

      <br>
    <div class="content" style="height: 540px">
        <div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
                                            <div class="preview-pic tab-content" style="margin-top: 10%">
						  <div class="tab-pane active" id="pic-1"><img style="width: 300px;height: 300px" src="../<% out.println(rs.getString("image"));%>" /></div>
						 </div>
					</div>
					<div class="details col-md-6">
                                            <h3 class="product-title"style="color:black"><% out.println(rs.getString("prod_name"));%></h3>
						<h5 class="product-title"style="color:black"><% out.println(rs.getString("cat_name"));%></h5>
                                                <h5 class="product-title"style="color:black"><% out.println(rs.getString("brand_name"));%></h5>

						<p style="color:black" class="product-description"><% out.println(rs.getString("description"));%></p>
                                                <h4 style="color:black"  class="price">current price: <span style="color:blue"><% out.println(rs.getString("sell_price"));%>/-&nbsp;Rs.</span></h4>
						<p style="color:black" class="vote"><strong>100%</strong> of buyers enjoyed this product!</p>
						<h5 style="color:black" class="sizes">size:
							<span class="size" data-toggle="tooltip" title="small"><% out.println(rs.getString("size"));%></span>
							
						</h5>
                                                        <div class="input-group">
                                                            <span class="input-group-btn" style="margin-left: 175px">
                                        <button type="button" class="quantity-left-minus btn btn btn-sm btn-primary" data-type="minus" data-field="" style="height: 45px; width: 45px; border-radius: 50%"><h3>-</h3>
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
         <input type="text" id="quantity" name="quantity"  value="1" min="1" max="100" style="height: 40px;width: 50px">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus btn btn btn-sm btn-primary" data-type="plus" data-field="" style="height: 45px; width: 45px; border-radius: 50%"><h3>+</h3>
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
</div>
						<div class="action">
                                                    <br><a href="add_to_cart_process.jsp?product_id=<%out.println(rs.getString("product_id"));%>" style="background-color: skyblue" class="add-to-cart btn btn-default" type="submit"><span style="padding-top:-50%">add to cart</span></a></form>
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

<script>
    $(document).ready(function(){

var quantitiy=0;
   $('.quantity-right-plus').click(function(e){
        
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());
        
        // If is not undefined
            
            $('#quantity').val(quantity + 1);

          
            // Increment
        
    });

     $('.quantity-left-minus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());
        
        // If is not undefined
      
            // Increment
            if(quantity>1){
            $('#quantity').val(quantity - 1);
            }
    });
    
});
    </script>
  