<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <title>Dicatalyst</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Dicatalyst Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="mainportal/css/bootstrap.css" rel="stylesheet"/>

    <link href="mainportal/css/font-awesome.css" rel="stylesheet"/>
    <link href="mainportal/css/style.css" rel="stylesheet"/>

    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet">
    <!--//web-fonts-->
</head>
<body>
<!-- banner -->
<div class="banner" id="home">
    <!-- header -->
    <div class="banner-top">
        <div class="social-bnr-agileits">
            <ul>
                <li>
                    <a href="#">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-google-plus" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </div>
        <div class="contact-bnr-w3-agile">
            <ul>
                <li>
                    <i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">INFO@EXAMPLE.COM</a>
                </li>
                <li><i class="fa fa-phone" aria-hidden="true"></i>+1 (100)222-23-33</li>
                <li>
                    <div class="search">
                        <input class="search_box" type="checkbox" id="search_box">
                        <label class="icon-search" for="search_box">
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                        </label>
                        <div class="search_form">
                            <form action="#" method="post">
                                <input type="search" name="Search" placeholder="Search..." required=""/>
                                <input type="submit" value="Send"/>
                            </form>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <header>
        <div class="container">

            <!-- navigation -->
            <div class="w3_navigation">
                <nav class="navbar navbar-default">
                    <div class="navbar-header navbar-left" style="wid">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="w3_navigation_pos">
                            <h1>
                                <a href="index.html">
                                    <img src="images/new-di-logo1.png" style="width: 100%"/>
                                </a>
                            </h1>
                        </div>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                        <nav class="menu menu--miranda">
                            <ul class="nav navbar-nav menu__list">
                                <li class="menu__item menu__item--current">
                                    <a href="index.html" class="menu__link">About us</a>
                                </li>
                                <li class="menu__item">
                                    <a href="#" class=" menu__link">Schedule a Demo</a>
                                </li>
                                <li class="menu__item">
                                    <a href="#" class=" menu__link">Pricing</a>
                                </li>
                                <li class="menu__item">
                                    <a href="#" class=" menu__link">Sign up</a>
                                </li>


                                <li class="menu__item">
                                    <a href="#" class=" menu__link">Login</a>
                                </li>
                                <li class="menu__item">
                                    <a href="#" class=" menu__link">Ask a Doctor</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </nav>
            </div>
            <div class="clearfix"></div>
            <!-- //navigation -->
        </div>
    </header>
    <!-- //header -->
    <!-- banner-text -->
    <div class="banner-text">
        <h2>Find Doctors and Hospitals in Your City.</h2>
        <div class="book-form">
            <p>Contact info of more than 2,00,000 Doctors in India.</p>
            <form action="#" method="post">
                <div class="col-md-3 form-left-agileits-w3layouts ">
                    <label><i class="fa fa-neuter" aria-hidden="true"></i> Select City</label>
                    <select class="form-control">
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                    </select>
                </div>
                <div class="col-md-3 form-time-w3layouts">
                    <label><i class="fa fa-map-pin" aria-hidden="true"></i> Locality</label>
                    <input type="text">
                </div>
                <div class="col-md-3 form-date-w3-agileits">
                    <label><i class="fa fa-plus-square" aria-hidden="true"></i> Speciality </label>


                    <input type="text"/>
                </div>

                <div class="col-md-3 form-left-agileits-submit">
                    <input type="submit" value="SEARCH">
                </div>
            </form>
        </div>
    </div>
    <!-- gallery -->

    <%--<div class="gallery-ban" id="gallery">
	<div class="container">
				<ul id="flexiselDemo1">			
					<li>
						<div class="wthree_testimonials_grid_main">
                            <img src="mainportal/images/images%20(2).jpg" alt=" " class="img-responsive" />
									</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
															
                            <img src="mainportal/images/download.jpg" alt=" " class="img-responsive" />

						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">

                            <img src="mainportal/images/download%20(5).jpg" alt=" " class="img-responsive" />			
								
                         </div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
                            						
                                    <img src="mainportal/images/images%20(5).jpg" alt=" " class="img-responsive"/>
									
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">

                            <img src="mainportal/images/download%20(4).jpg" alt=" " class="img-responsive" />
									
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">

                            <img src="mainportal/images/5076_Patient-and-senior-doctor_iStock_000017801131Large.jpeg" alt=" " class="img-responsive"/>
								
						</div>
					</li>
				</ul>
				
	</div>
	</div>--%>

    <!-- //gallery -->
</div>
<!-- //banner -->
<div class="ab-w3l-about">
    <div class="container">
        <h3 class="tittle-w3"><span>Welcome to Our</span> Dicatalyst
        </h3>
        <p class="para-w3l">Lorem Ipsum is simply dummy text of the printing and typesetting industry. ever since the 1500s.Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores hasellusMaecenas ac hendrerit purus. Lorem ipsum dolor sit amet.Lorem Ipsum is simply dummy text of the printing and typesetting industry
        <p>
            <a class="read" href="single.html">Read More</a>
        </p>
    </div>
</div>
<div class="about" id="about">
    <div class="col-md-6 ab-w3-agile-info">
        <div class="ab-w3-agile-info-text">
            <h3 class="tittle-w3">About<span> Us</span>
            </h3>
            <p class="para-w3l">Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit.Lorem ipsum dolor sit amet.when an unknown printer took a galley of type and scrambled it to make a type specimen book.Proin ultricies vestibulum velit.Lorem ipsum dolor sit amet.when an unknown printer took Proin ultricies vestibulum velit.Lorem ipsum dolor sit amet</p>
            <div class="about-read">
                <a href="single.html">Learn More</a>
            </div>
        </div>
        <div class="ab-w3-agile-inner">
            <div class="col-md-6 ab-w3-agile-part">
                <h4>Consectetur adipisc</h4>
                <p class="para-w3l">Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit,Lorem ipsum dolor sit amet, consectetur adipisc elit. a galley of type and scrambled it to make a type specimen book. Proin ultricies vestibulum velit.</p>
            </div>
            <div class="col-md-6 ab-w3-agile-part ">
                <h4>Lorem ipsum dolors</h4>
                <p class="para-w3l">Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit., lorem ipsum dolor sit amet, consectetur adipisc elita galley of type and scrambled it to make a type specimen book. Proin ultricies vestibulum velit.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="col-md-6 ab-w3-agile-img">

    </div>

    <div class="clearfix"></div>
</div>
<!--blogs-->
<div class="agile-blogs" id="blogs">
    <div class="container">
        <h3 class="tittle-w3"><span>Popular </span>Lorem
        </h3>
        <div class="g1 agile-blog1">
            <a href="#">
                <img src="mainportal/images/5076_Patient-and-senior-doctor_iStock_000017801131Large.jpeg" alt="blog1" style="height: 350px">
            </a>


            <div class="text-w3">
                <h3 class="tittle-w3 sub-head">
                    <span> Lorem Ipsum </span>
                </h3>
                <p class="para-w3l">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Ut enim ad minim veniam.</p>

                <a class="read b1" href="single.html">Read More</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="g2 agile-blog2">
            <a href="#">
                <img src="mainportal/images/tabs.jpg" alt="blog1" style="height: 350px">
            </a>
            <div class="text-w3l">
                <h3 class="tittle-w3 sub-head">
                    <span>Fritto Misto</span>
                </h3>
                <p class="para-w3l">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Ut enim ad minim veniam.</p>
                <a class="read b2" href="single.html">Read More</a>

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//blogs-->

<!--count-->
<div class="count-agileits">
    <div id="particles-js">
        <canvas class="particles-js-canvas-el" width="1759" height="540" style="height: 100%; width: 100%;"></canvas>
    </div>

    <div class="count-grids">
        <%--	<h3 class="tittle-w3">Handling <span>your needs</span> with care</h3>--%>
        <div class="count-bgcolor-w3ls">
            <div class="col-md-4 count-grid">
                <i class="fa fa-user-plus fa-1x " aria-hidden="true" style="font-size: 50px;"></i>
                <div class="count hvr-bounce-to-bottom">
                    <div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="376009" data-delay=".5" data-increment="100">376009</div>

                    <h5>Patient Records</h5>
                </div>
            </div>
            <div class="col-md-4 count-grid">
                <i class="fa fa-user fa-1x " aria-hidden="true" style="font-size: 50px;"></i>
                <div class="count hvr-bounce-to-bottom">
                    <div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="37290" data-delay=".5" data-increment="100">37290</div>

                    <h5>Doctors</h5>
                </div>
            </div>
            <div class="col-md-4 count-grid">
                <i class="fa fa-hospital-o fa-1x " aria-hidden="true" style="font-size: 50px;"></i>
                <div class="count hvr-bounce-to-bottom">
                    <div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="105209" data-delay=".5" data-increment="100">105209</div>

                    <h5>Clinics</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="count-bgcolor-w3ls">
            <div class="col-md-4 count-grid">
                <i class="fa fa-building-o fa-1x " aria-hidden="true" style="font-size: 50px;"></i>
                <div class="count hvr-bounce-to-bottom">
                    <div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="105205" data-delay=".5" data-increment="100">105205</div>

                    <h5>Hospitals</h5>
                </div>
            </div>
            <div class="col-md-4 count-grid">
                <i class="fa fa-chain-broken fa-1x " aria-hidden="true" style="font-size: 50px;"></i>
                <div class="count hvr-bounce-to-bottom">
                    <div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="1052" data-delay=".5" data-increment="100">1052</div>

                    <h5>Laboratories</h5>
                </div>
            </div>
            <div class="col-md-4 count-grid">
                <i class="fa fa-plus-square fa-1x " aria-hidden="true" style="font-size: 50px;"></i>
                <div class="count hvr-bounce-to-bottom">
                    <div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="105209" data-delay=".5" data-increment="100">105209</div>

                    <h5>Pharamcies</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>


</div>
<!--count-->


<!--services-section-->
<div class="services-w3layouts" id="services">
    <!-- //Stats -->
    <div class="col-md-6 agitsworkw3ls-grid ">
        <h3 class="tittle-w3">
            <span> KEY</span> <span>FEATURES</span>
        </h3>
        <p class="para-w3l">Lorem Ipsum is simply dummy text of the printing and typesetting industry. ever since the 1500s.Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores hasellusMaecenas ac hendrerit purus. Lorem ipsum dolor sit amet.Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
        <div class="services-left-w3-agile">

            <ul>
                <li><i class="fa fa-calendar fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Appointment Management</li>
                <li><i class="fa fa-wheelchair fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Out-patient Management</li>
                <li><i class="fa fa-bed fa-3x" aria-hidden="true" style="font-size: 15px;"></i>In-patient Management</li>
                <li><i class="fa fa-medkit fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Pharmacy Management </li>
                <li><i class="fa fa-line-chart fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Detailed MIS Reports </li>
                <li><i class="fa fa-area-chart fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Admin Dashboard </li>
            </ul>
        </div>
        <div class="services-right-w3-agile">

            <ul>
                <li><i class="fa fa-facebook fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Facebook Widget </li>
                <li><i class="fa fa-code fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Website Widget </li>
                <li><i class="fa fa-envelope fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Email & SMS Reminders </li>
                <li><i class="fa fa-h-square fa-3x" aria-hidden="true" style="font-size: 15px;"></i>OT Management </li>
                <li><i class="fa fa-file-text fa-3x" aria-hidden="true" style="font-size: 15px;"></i>Electronic Medical Records</li>
                <li><i class="fa fa-flask fa-3x" aria-hidden="true"></i>Laboratory Management </li>
            </ul>
        </div>
    </div>

    <div class="col-md-6 agitsworkw3ls-grid-2">
        <div class="info-imgs">


            <ul >
                <li>
                    <div class="gallery-grid1">
                        <div style="height: 300px; width: 200px">


                            <span style="background-color: #fff; border: 3px solid #00a7d0; border-radius: 150%; display: block; height: 50%; margin: 20px 150px; width: 60%;">

                                <i class="fa fa-user fa-5x" aria-hidden="true"style="color: #00a7d0; font-size: 90px; padding: 20px; vertical-align: middle;"></i>
                            </span>
                        </div>

                        <div class="p-mask">
                            <h4>
                                <span>Doctor</span>
                            </h4>
                            <p>
                                DiCatalyst - Doctor Management System helps you to manage your activities, appointments, billing efficiently with clear operational visibility.
                            </p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <div style="height: 300px; width: 200px;">

                            <span style="background-color: #fff; border: 3px solid #30bbbb; border-radius: 150%; display: block; height: 50%; margin: 20px 150px; width: 60%;">

                                <i class="fa fa1 fa-hospital-o fa-5x" style="color: #30bbbb; font-size: 90px; padding: 20px; vertical-align: middle;"></i>
                            </span>
                        </div>


                        <div class="p-mask">
                            <h4>
                                <span>Clinic</span>
                            </h4>
                            <p>DiCatalyst - Clinic Management System helps you to manage your clinic right from first appointment to final billing efficiently with clear operational visibility to make it profitable.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <div style="height: 300px; width: 200px">

                            <span style="background-color: #fff; border: 3px solid #008d4c; border-radius: 150%; display: block; height: 50%; margin: 20px 150px; width: 60%;">
                                <i class="fa fa1 fa-building-o" style="color: #008d4c; font-size: 90px; padding: 20px; vertical-align: middle;"></i>
                            </span>
                        </div>


                        <div class="p-mask">
                            <h4>
                                <span>Hospital</span>
                            </h4>
                            <p>DiCatalyst - Hospital Management System helps you to manage your hospital right from first appointment to final billing efficiently with clear operational visibility to make it profitable.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <div style="height: 300px; width: 200px">


                            <span style="background-color: #fff; border: 3px solid #ff7701; border-radius: 150%; display: block; height: 50%; margin: 20px 150px; width: 60%;">
                                <i class="fa fa-user-plus fa-5x" aria-hidden="true"style="color: #ff7701; font-size: 80px; padding: 20px; vertical-align: middle;"></i>
                            </span>
                        </div>

                        <div class="p-mask">
                            <h4>
                                <span>Patient</span>
                            </h4>
                            <p>DiCatalyst - Patient Management System helps you to get the latest updates to your health records from your doctor — from lab results to prescriptions.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <div style="height: 300px; width: 200px">


                            <span style="background-color: #fff; border: 3px solid #555299; border-radius: 150%; display: block; height: 50%; margin: 20px 150px; width: 60%;">
                                <i class="fa fa-chain-broken fa-5x" aria-hidden="true"style="color: #555299; font-size: 90px; padding: 20px; vertical-align: middle;"></i>
                            </span>
                        </div>

                        <div class="p-mask">
                            <h4>
                                <span>Laboratory</span>
                            </h4>
                            <p>DiCatalyst - Laboratory Management System helps you to manage your lab workflow right from billing to reporting efficiently and grow the business.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <div style="height: 300px; width: 200px;">

                            <span style="background-color: #fff; border: 3px solid #ca195a; border-radius: 150%; display: block; height: 50%; margin: 20px 150px; width: 60%;">

                                <i class="fa fa-plus-square fa-5x" aria-hidden="true" style="color: #ca195a; font-size: 90px; padding: 20px; vertical-align: middle;"></i>
                            </span>
                        </div>

                        <div class="p-mask">
                            <h4>
                                <span>Pharmacy</span>
                            </h4>
                            <p>DiCatalyst - Pharmacy Management System helps you to manage your pharmacy efficiently with better turn around time and decreased pilferage.</p>
                        </div>
                    </div>
                </li>

            </ul>
        </div>

    </div>

    <div class="clearfix"></div>
    <!-- //Stats -->
    <div class="clearfix"></div>
</div>
<!--//services-section-->

<!-- mail -->
<div class="mail">
    <div class="mail-grid1">
        <div class="container">
            <h3 class="tittle-w3">Contact <span>Info</span>
            </h3>
            <div class="col-md-4 mail-agileits-w3layouts">
                <i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
                <div class="contact-right">
                    <p>Phone</p><span>+1 (100)222-23-33</span>
                </div>
            </div>
            <div class="col-md-4 mail-agileits-w3layouts">
                <i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
                <div class="contact-right">
                    <p>Email</p><a href="mailto:info@example.com">info@example.com</a>
                </div>
            </div>
            <div class="col-md-4 mail-agileits-w3layouts">
                <i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
                <div class="contact-right">
                    <p>Address</p><span> Lorem is dummy text.</span>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="col-md-7 map ">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26359195.17562375!2d-113.7156245614499!3d36.2473834534249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1452332634941"></iframe>
    </div>
    <div class="col-md-5 mail-grid1-form ">
        <h3 class="tittle-w3"><span>Send a </span>Message
        </h3>
        <form action="#" method="post">
            <input type="text" name="Name" placeholder="Name" required=""/>
            <input type="email" name="Email" placeholder="Email" required=""/>
            <textarea name="Message" placeholder="Type Your Text Here...." required=""></textarea>
            <input type="submit" value="Submit">
        </form>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //mail -->

<div class="copyright-wthree">
    <p>&copy; 2017 Dicatalyst . All Rights Reserved | Design by <a href="http://Dicatalyst.com/"> Dicatalyst </a>
    </p>
</div>
<!-- //Footer -->

<a href="#home" class="scroll" id="toTop" style="display: block;">
    <span id="toTopHover" style="opacity: 1;"> </span>
</a>
<!-- //smooth scrolling -->

<script src="mainportal/js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="mainportal/js/numscroller-1.0.js" type="text/javascript"></script>

<script src="mainportal/js/particles.js"></script>
<script src="mainportal/js/app.js"></script>

<!--gallery-->
<script type="text/javascript">
    $(window).load(function() {
        $("#flexiselDemo1").flexisel({
            visibleItems: 4,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 3
                }
            }
        });

    });
</script>

<script src="mainportal/js/jquery.flexisel.js" type="text/javascript"></script>
<!--gallery-->
<!-- Dropdown-Menu-JavaScript -->
<script>
    $(document).ready(function() {
        $(".dropdown").hover(
            function() {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function() {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //Dropdown-Menu-JavaScript -->
<!-- Calendar -->

<script src="mainportal/js/jquery-ui.js"></script>
<link href="mainportal/css/jquery-ui.css" rel="stylesheet"/>

<script>
    $(function() {
        $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
    });
</script>
<script src="mainportal/js/move-top.js" type="text/javascript"></script>
<!-- //Calendar -->
<script src="mainportal/js/easing.js" type="text/javascript"></script>
<!-- start-smoth-scrolling -->

<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear' 
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
<script src="mainportal/js/bootstrap.js"></script>
<!--js for bootstrap working-->

<!-- //for bootstrap working -->
<!-- script-for-menu -->
<script>
    $("span.menu").click(function() {
        $(".top-nav ul").slideToggle("slow",
            function() {
            });
    });
</script>
<!-- script-for-menu -->
</body>
</html>