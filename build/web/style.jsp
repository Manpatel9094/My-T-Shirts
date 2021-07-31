<%-- 
    Document   : style
    Created on : 26 Nov, 2020, 6:34:12 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My T-shirt</title>
    </head>
    <body>
        <style>
    /*Google Fonts*/

body, html{
	height: 100%;
	width:100%;
}
body{
	font-size: 1rem;
	font-family: 'Source Sans Pro', sans-serif;
}

/* ========== Universal Stylings ========== */
h1,h2,h3,h4,h5{
	position: relative;
	font-family: 'Montserrat', sans-serif;
}
h6{
	position: relative;
	text-transform: uppercase;
}
.bg-primary{
	background-color: #35CBDF!important;
}
.text-inverse{
	color: #074052;
}
.text-primary{
	color: #35CBDF!important;
}
.btn{
	font-family: 'Montserrat', sans-serif;
	font-size: 1rem;
	font-weight: 600;
	
}
.btn-primary{
	background-color: #35CBDF;
	border-color: #35CBDF;
	text-shadow: 1px 1px 2px rgba(0,0,0,0.4)
}
.btn-primary:hover,.btn-primary:focus{
	background-color: #00BED7;
	border-color: #00BED7;
}
.btn-capsul{
	border-radius: 50px;
}
i.box-circle-outline{
	border-color: inherit;
	border-width: 1px;
	border-style:solid;
	border-radius: 50%;
	height: 50px;
    line-height: 50px;
    text-align: center;
    width: 50px;
}
i.box-circle-solid{
	background-color:#35CBDF;
	border-radius: 50%;
    color: #fff;
    font-size: 22px;
    height: 55px;
    line-height: 55px;
    text-align: center;
    width: 55px;
}
.text-underline-white:before{
	content:"";
	position: absolute;
	width:100px;
	height: 4px;
	left:50%;
	margin-left:-50px;
	background:#fff;
	bottom: -15px;
	border-radius: 10px;
}
.text-underline-rb-white:before{
	content:"";
	position: absolute;
	width:100px;
	height: 4px;
	left:0;
	background:#fff;
	bottom: -15px;
	border-radius: 10px;
}
.text-underline-primary:before{
	content:"";
	position: absolute;
	width:50px;
	height: 4px;
	left:50%;
	margin-left:-25px;
	background:#35CBDF;
	bottom: -15px;
	border-radius: 10px;
}
.text-underline-rb-primary:before{
	content:"";
	position: absolute;
	width:100px;
	height: 4px;
	left:0;
	background:#35CBDF;
	bottom: -15px;
	border-radius: 10px;
}
.bg-overlay:before{
	content:"";
	background:rgba(0,0,0,0.7);
	position: absolute;
	height: 100%;
	width:100%;
	left:0;
	top:0;
	z-index: -1;
}
.bg-overlay-light:before{
	content:"";
	background:rgba(0,0,0,0.4);
	position: absolute;
	height: 100%;
	width:100%;
	left:0;
	top:0;
	z-index: -1;
}
.parallax{
	background-attachment: fixed!important;
}


/* ========== Loader ========== */

.loaders {
	width: 100%;
	box-sizing: border-box;
	display: flex;
	flex: 0 1 auto;
	flex-direction: row;
	flex-wrap: wrap;
}
.loaders .loader {
	box-sizing: border-box;
	display: flex;
	flex: 0 1 auto;
	flex-direction: column;
	flex-grow: 1;
	flex-shrink: 0;
	flex-basis: 25%;
	max-width: 25%;
	height: 200px;
	align-items: center;
	justify-content: center;
}
.loader {
	display: table;
	height: 100%;
	position: fixed;
	width: 100%;
	z-index: 1200;
}
.loader-bg {
	background: #35CBDF;
}
.loader-inner {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}

.loader .ball-clip-rotate-pulse {
    left: 50%;
    position: absolute;
    top: 50%;
}

/* ========== Top Navigation ========== */
.top-nav {
    border-bottom: 1px solid rgba(255, 255, 255, 0.2);
    height: 80px;
    transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
}
.top-nav .navbar-nav li .nav-link {
    color: #fff;
    font-size: 14px;
    padding:29px 15px;
    font-weight: 600;
    text-transform: uppercase;
    transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
}
.top-nav li a.nav-link:hover, .top-nav .nav-item.active a.nav-link{
    border-bottom: 3px solid #35cbdf;
    color: #35cbdf;
    transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
}
.top-nav .navbar-brand{
	font-size: 28px;
	color: #fff;
	font-family: 'Montserrat', sans-serif;
}
.top-nav.light-header{
	height: 60px;
	background: #fff;
	box-shadow: 0 0 10px rgba(0,0,0,0.23);
	transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
}
.top-nav.light-header .navbar-brand{
	color: #212121;
}
.top-nav.light-header .navbar-nav li .nav-link {
    color: #212121;
    padding: 19px 15px;
    transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
}

.top-nav.light-header li a.nav-link:hover, .top-nav.light-header .nav-item.active a.nav-link{
	border-bottom: 3px solid #35cbdf;
    color: #35cbdf;
    transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
}


/* ========== Intro Header ========== */
.intro{
	float: left;
	width:100%;
	display: flex;
	align-items:center;
	height:100%;
	position: relative;
	z-index: 1;
}
.intro.intro-small{
	height: 60%;
}
.intro-bg{
	background:url("../img/intro-bg-03.jpg");
	background-repeat:no-repeat;
	background-position: center center;
	background-size:cover;
}
.caption-container{
	width:50rem;
	margin:0 auto;
}
.caption-two-panel{
	display: flex;
	align-items:center;
}
.intro h1{
	font-weight: 700;
}
.intro-caption .btn i{
	float: left;
	margin-right:15px;
}
.intro .carousel-item{
	height: 100vh;
}
.intro .carousel-item::before{
	content:"";
	background:rgba(0,0,0,0.6);
	position: absolute;
	width:100%;
	height: 100vh;
}
.intro  .carousel-caption{
	top:25%;
}

/* ========== Who We Are ========== */

.info-section{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.info-section h2{
	font-weight: 700;
	font-size: 2.5rem;
}

.info-section .head-sec{
	float: left;
	width:100%;
}

.info-section h3{
	font-size: 1.4rem;
}
.info-section p {
    font-size: 1rem;
    line-height: 1.3rem;
}
.info-section .box h2{
    font-size:24px;
    margin-bottom:20px;
    margin-top:0;
}

.info-section .box i{
    font-size:20px;
}
.info-section .box{
    display:flex;
}
.info-section .text-box{
    flex:1 1 0;
    text-align:left;
}
.info-section .icon-box{
    line-height: 1.2;
    width:70px;
}
.info-section .service-block-overlay{
	transition: .5s;
	-webkit-transition: .5s;
	-moz-transition: .5s;
}
.info-section .service-block-overlay:hover{
	background: #fff none repeat scroll 0 0;
    border-radius: 5px;
    box-shadow: 0 0 90px rgba(0, 0, 0, 0.1);
    float: left;
    margin-top: -10px;
    position: relative;
    width: 100%;
	transition: .5s;
	-webkit-transition: .5s;
	-moz-transition: .5s;
}
.content-half{
    color:#fff;
}
.content-half ul{
    padding:0;
    list-style:none;
}
.content-half ul li{
    margin:15px 0;
    float:left;
    width:100%;
}
.content-half ul li i{
    float:left;
    font-size:30px;
    padding-top:10px;
    padding-bottom:10px;
}
.content-half ul li .list-content{
    float:left;
    margin-left:20px;
}
.content-half ul li strong{
    font-size:19px;
    font-weight:700;
}
.content-half .btn{
    margin-top:20px;
}
/*--- three Block Panel ---*/
.three-panel-block{
	float: left;
	width: 100%;
}
.three-panel-block i{
	font-size: 1.5rem;
	margin-bottom: 15px;
}
.three-panel-block i.box-round{
	border-color: inherit;
	border-width: 1px;
	border-style:solid;
	padding:16px;
	border-radius: 50%;
}

/*--- Two Block Panel ---*/
.two-panel-block{
	float: left;
	width: 100%;
}
.two-panel-block p{
	font-size:16px;
}


/*--- Two Block Panel ---*/
.four-panel-block{
	float: left;
	width:100%;
}

/* ========== Who We Are ========== */
.widget{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
}

/* ========== Copy Content Styles ========== */
.copy-content-sec{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.copy-container{
	display: flex;
	align-items: center;
}
.copy-content{
	float: left;
	width:100%;
}
.copy-content li i{
	float: left;
	width:30px;
	margin-top:5px;
	color: #5CB85C;
}

/* ========== Team Section ========== */

.team-section{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
	background-color:#fff;
}
.team-footer{
	float: left;
	width:100%;
	padding: 15px;
}
.team-footer h3{
	font-size: 1.5rem;
	text-transform: capitalize;
}
.member-box{
  width:100%;
  float:left;
  position:relative;
  overflow:hidden
}
.member-box:hover> img{
transform: scale(1.05);
transition:1s ease-in;  
}
.member-box img{
  transition:0.3s ease-in;  
}
.member-box.t-bottom .overlay-content{
	display:flex;
	flex-direction:column;
	justify-content:flex-end;
}
.member-box.t-center .overlay-content{
	display:flex;
	flex-direction:column;
	justify-content:center;
	align-items: center;
}
.member-box i.box-circle-solid{
	padding: 0;
	width:40px;
	height: 40px;
	text-align: center;
	line-height: 40px;
}
/* style 1 */
.member-box.anim-lf .overlay-content{
  position:absolute;
  background-color:rgba(0,0,0,0.6);
  left:-100%;
  bottom:0;
  width: 100%;
  height:100%;
  transition:0.4s ease-in;
}
.member-box.anim-lf:hover>.overlay-content{
  left:0;
  transition:0.4s ease-in;
}
/* style 1 */
.member-box.anim-bt .overlay-content{
  position:absolute;
  background-color:rgba(0,0,0,0.6);
  bottom:-100%;
  width: 100%;
  height:100%;
  transition:0.6s ease-in;
}

.member-box.anim-bt:hover>.overlay-content{
  bottom:0;
  transition:0.4s ease-in;
}

/* ========== Testimonial Section ========== */
.testimonial-section{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
}
.testimonial-section .block-style-03 img{
	width:100px;
}

/* ========== Footer Section ========== */
.footer-section{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
}
.footer-section .list-box img {
    width: 70px;
}
.footer-section .list-box a.title{
	font-size: 14px;
	line-height: 0;
}
.footer-section .copy-text{
	font-size: 12px;
	border-top: 1px solid #555;
}
.social-box a.icoRss:hover {
	background-color: #F56505;
}
.social-box a.fa-box:hover {
	background-color:#3B5998;
}
.social-box a.tw-box:hover {
	background-color:#33ccff;
}
.social-box a.go-box:hover {
	background-color:#BD3518;
}
.social-box a.ld-box:hover {
	background-color:#007bb7;
}
ul.social-box {
	list-style: none;
	display: inline;
	margin-left:0 !important;
	padding: 0;
}
ul.social-box li {
	display: inline;
	margin: 0 5px;
}
.social-box li a {
    background: #414344;
    border-radius: 50%;
    display: inline-block;
    font-size: 13px;
    height: 30px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 30px;
}

.social-box li i {
	margin:0;
	line-height:30px;
	text-align: center;
}

.social-box li a:hover i, .triggeredHover {
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-ms--transform: rotate(360deg);
	transform: rotate(360deg);
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-ms-transition: all 0.2s;
	transition: all 0.2s;
}
.social-box i {
	color: #fff;
	-webkit-transition: all 0.8s;
	-moz-transition: all 0.8s;
	-o-transition: all 0.8s;
	-ms-transition: all 0.8s;
	transition: all 0.8s;
}

/* ========== Copy Content Styles ========== */
.copy-content-sec{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.copy-container{
	display: flex;
	align-items: center;
}
.copy-content{
	float: left;
	width:100%;
}
.copy-content li i{
	float: left;
	width:30px;
	margin-top:5px;
	color: #5CB85C;
}
.faq-box .card{
	border-color: #35CBDF;	
	margin-top: 10px;
}
.faq-box .card-header{
	background-color: #35CBDF;
	color: #fff;
}


/* ========== Price Table Styles ========== */
.price-section{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.price-section h2 {
    font-size: 2.5rem;
    font-weight: 700;
}
.price-section .price-block{

}
.price-section .currency{
	font-size: 25px;
    vertical-align: super;
}
.price-section .price-count{
	font-size: 60px;
	line-height: 60px;
}
.price-section .price-block small{
	display: block;
	font-size: 15px;
}

/* ========== Contact Section ========== */
.contact-section{
	float: left;
	width: 100%;
	position: relative;
	z-index: 1;
}
.contact-section #map {
    display: block;
    width: 100%;
    height: 100%;
}

.contact-section #map {
    background: #fff;
    width:100%;
    height: 100%;
}
.contact-section .form-control{
	border-radius: 0;
}
.contact-section #map{
	height: 350px;
}

/* ========== Copy Footer Styles ========== */
.copy-footer{
	float: left;
	width:100%;
	font-size: 14px;
	background: #111;
}
.copy-footer a{
	color: #fff;
}
.copy-footer a:hover{
	text-decoration: underline;
}


/* ========== Responsive Stylings ========== */
@media (max-width: 991px){
	.container{
		width: 100%;
	}
	.intro .intro-box{
		padding-left: 0;
		margin-bottom: 0;
	}
	.intro .intro-box span{
		margin-right: 10px;
	}
	.intro .intro-box .list-item{
		width: 85%;
	}
	.content-half ul li i{
		font-size: 20px;
	}
	.content-half ul li .list-content{
		width:77%;
	}
	.content-half ul li strong{
		line-height: 0;
	}
	.testimonial-section .single-testimonial .carousel-item{
		width: 100%;
		margin-left: 0;
		margin-right: 0;
	}
	.widget h2 {
    	font-size: 1.5rem;
	}
	.widget .counter{
		line-height: 0;
		font-size: 1.7rem;
	}
	.widget .fa-3x{
		font-size: 2rem;
	}
	.widget .stat-content h4{
		font-size: 1.2rem;
	}
}

@media (max-width: 767px){
	.container{
		width:100%;
	}
	.intro .intro-form-small input[type="text"], .intro .intro-form-small input[type="password"]{
		width: 36%;
	}
	.intro .carousel-caption{
		top:10%;
	}
	.widget.widget-counter .container{
		width: 100%;
	}
	.contact-section #map {
    	height: 400px
	}
    .intro .display-4{
        font-size:2rem;
    }
    .intro p{
        display: none;
    }
    .intro img{
        height: 100%;
    }
    .intro .btn-primary{
        margin-top: 20px;
    }
    .top-nav .navbar-toggler i {
    color: #fff;
    margin-top: 6px;
    }
    .top-nav.light-header .navbar-toggler i {
    color: #00BED7;
    }
    .top-nav  .navbar-collapse.show {
    background-color: #fff;
    text-align: center;
    padding: 12px 0;
    }
    .top-nav .navbar-collapse.show a{
    color: #000;
    }
}
.btn-theme{background-color:#35CBDF; color:#fff;}
</style>
<style>
.login-container{
    margin-top: 5%;
    margin-bottom: 5%;
}
.login-form-1{
    padding: 5%;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-1 h3{
    text-align: center;
    color: #333;
}
.login-form-2{
    padding: 5%;
    background: #0062cc;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-2 h3{
    text-align: center;
    color: #fff;
}
.login-container form{
    padding: 10%;
}
.btnSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    border: none;
    cursor: pointer;
}
.login-form-1 .btnSubmit{
    font-weight: 600;
    color: #fff;
    background-color: #0062cc;
}
.login-form-2 .btnSubmit{
    font-weight: 600;
    color: #0062cc;
    background-color: #fff;
}
.login-form-2 .ForgetPwd{
    color: #fff;
    font-weight: 600;
    text-decoration: none;
}
.login-form-1 .ForgetPwd{
    color: #0062cc;
    font-weight: 600;
    text-decoration: none;
}
.avatar {
  vertical-align: middle;
  width: 400px;
  height: 400px;
  border-radius: 50%;
}
</style>
<style>
    .note
{
    text-align: center;
    height: 80px;
    background: -webkit-linear-gradient(left, #0072ff, #8811c5);
    color: #fff;
    font-weight: bold;
    line-height: 80px;
}
.form-content
{
    padding: 5%;
    border: 1px solid #ced4da;
    margin-bottom: 2%;
}
.form-control{
    border-radius:1.5rem;
}
.btnSubmit
{
    border:none;
    border-radius:1.5rem;
    padding: 1%;
    width: 20%;
    cursor: pointer;
    background: #0062cc;
    color: #fff;
}


body {
    font-family: 'Montserrat', sans-serif;

}

/* Category Ads */

#ads {
    margin: 30px 0 30px 0;
   
}

#ads .card-notify-badge {
        position: absolute;
        left: -10px;
        top: -20px;
        background: #f2d900;
        text-align: center;
        border-radius: 30px 30px 30px 30px; 
        color: #000;
        padding: 5px 10px;
        font-size: 14px;

    }

#ads .card-notify-year {
        position: absolute;
        right: -10px;
        top: -20px;
        background: #ff4444;
        border-radius: 50%;
        text-align: center;
        color: #fff;      
        font-size: 14px;      
        width: 50px;
        height: 50px;    
        padding: 15px 0 0 0;
}


#ads .card-detail-badge {      
        background: #f2d900;
        text-align: center;
        border-radius: 30px 30px 30px 30px;
        color: #000;
        padding: 5px 10px;
        font-size: 14px;        
    }

   

#ads .card:hover {
            background: #fff;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
            border-radius: 4px;
            transition: all 0.3s ease;
        }

#ads .card-image-overlay {
        font-size: 20px;
        
    }


#ads .card-image-overlay span {
            display: inline-block;              
        }


#ads .ad-btn {
        text-transform: uppercase;
        width: 150px;
        height: 40px;
        border-radius: 80px;
        font-size: 16px;
        line-height: 35px;
        text-align: center;
        border: 3px solid blue;
        display: block;
        text-decoration: none;
        margin: 20px auto 1px auto;
        color: #000;
        overflow: hidden;        
        position: relative;
    }

#ads .ad-btn:hover {
            background-color: white;
            color: #1e1717;
            border: 2px solid blue;
            background: transparent;
            transition: all 0.3s ease;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
        }

#ads .ad-title h5 {
        text-transform: uppercase;
        font-size: 18px;
    }

    </style>
    </body>
</html>
