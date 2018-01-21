<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="websiteTemplate_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
    <meta charset="utf-8" />
   
   
   


    <!---Common css---->
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <!----Media queries css--->
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <link href="css/theme1024.css" rel="stylesheet" type="text/css" />
    <link href="css/theme990.css" rel="stylesheet" type="text/css" />
    <link href="css/theme768.css" rel="stylesheet" type="text/css" />
    <link href="css/theme480.css" rel="stylesheet" type="text/css" />
    <link href="css/theme320.css" rel="stylesheet" type="text/css" />
    <link href="css/theme319.css" rel="stylesheet" type="text/css" />
    <link href="css/quickweb.css" rel="stylesheet" type="text/css" />
    <link href="fonts/style.css" rel="stylesheet" type="text/css" />
    <link href="css/slider_css.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,700,900' rel='stylesheet' type='text/css' />


    <script src="js/jquery-ui.js"></script>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/slider.js"></script>
    <script src="js/plugin.js"></script>

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />

  <link rel='stylesheet prefetch' href='http://cdn.jsdelivr.net/jquery.slick/1.5.9/slick.css' />
<link rel='stylesheet prefetch' href='http://cdn.jsdelivr.net/jquery.slick/1.5.9/slick.css' />

      <link rel="stylesheet" href="../slider/css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main">
                <header class="header">
                    <div class="container">
                        <div class="col-12">
                            <div class="col-4 mb-11 logo-set">
                                <div class="logo">
                                    <asp:Image ID="Image1" runat="server" Width="50px" />

                                    <%-- <img src="image/blacklogo.png" />--%>
                                </div>

                            </div>

                            <nav class="mob-menu-icon mb-1">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </nav>


                            <nav class="col-8 menu mob-menu pull-right">

                                <nav class="mob-menu-icon" style="padding: 26px 26px; width: 100%; box-sizing: border-box; border-bottom: 2px solid #1565C0;">

                                    <span class="icon-bar slide-icon-menu-color"></span>
                                    <span class="icon-bar slide-icon-menu-color"></span>
                                    <span class="icon-bar slide-icon-menu-color"></span>

                                </nav>
                                <!-- <div class="menu-item-box center "><a href="#" class="menu_link">Home</a>

							<div class="sub_cata" style="height: 200px;position: absolute;z-index: 99999;background-color: #000;margin-top: 29px;">
								Test sub cata
							
							</div>

						</div>-->
                                <div class="menu-item-box center "><a href="#home" class="menu-link">Home</a></div>
                                <div class="menu-item-box center "><a href="#about" class="menu-link">About</a></div>
                                <%--<div class="menu-item-box center "><a href="#services" class="menu-link">Services</a></div>
						<div class="menu-item-box center "><a href="#services" class="menu-link">Team</a></div>
						<div class="menu-item-box center "><a href="#portfolio" class="menu-link">Portfolio</a></div>
						<div class="menu-item-box center "><a href="#testimonial" class="menu-link">Testimonial</a></div>--%>
                                <div class="menu-item-box center "><a href="#contact" class="menu-link">Contact</a></div>
                                <div class="menu-item-box center "><a href="http://www.dicatalyst.com" class="menu-link">Back to Portal</a></div>

                            </nav>





                        </div>
                    </div>
                </header>
  <div class="slider-wrapper">
  <div class="slider">
              <asp:Repeater ID="DataListPortfolio" runat="server" >
    <ItemTemplate>

            <div class="slider--item" style="background-image: url(<%# Eval("banner") %>)">
    </div>
      

    </ItemTemplate>
</asp:Repeater>
     </div>
</div>
        
              
  <%--  <div class="slider--item" style="background-image: url(http://deghq.com/yapp/front-labs/codepen-assets/slide-4.jpg)">
    </div>
    <div class="slider--item" style="background-image: url(http://deghq.com/yapp/front-labs/codepen-assets/slide-2.jpg)">
    </div>
    <div class="slider--item" style="background-image: url(http://deghq.com/yapp/front-labs/codepen-assets/slide-5.jpg)">
      
    </div>
    <div class="slider--item" style="background-image: url(http://deghq.com/yapp/front-labs/codepen-assets/slide-1.jpg)">
    </div>


--%>

                <section class="choose-theme section-padding color-white" id="about">
                    <div class="container">
                        <div class="main-title font-color-m-light">About</div>
                        <p class="main-content">
                           

                            </p>
                      
                        <div class="col-12 padding-lr" style="box-sizing: border-box;">
                            <div class="sub-title font-color-s-light">
                                <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
                               
                            </div>

                            <div class="content-box" style="">
                                 <asp:Literal ID="ltlAbout" runat="server"></asp:Literal>
                                
                            </div>
                           
                        </div>

                    </div>

                </section>






                <section class="map color-light-white" id="contact">
                     <asp:Repeater ID="Repeater1" runat="server" >
    <ItemTemplate>

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.8401123931!2d-74.25819618221217!3d40.70583163620996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2s!4v1452786491975" width="100%" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
        </ItemTemplate>
        </asp:Repeater>
                </section>

                <section class="contact-address section-padding color-light-white">
                    <div class="container">
                        <div class="col-12">
                            <div class="main-title font-color-m-light">Contact Us</div>
                            <div class="contact-box col-4">
                                <div class="col-12 contact-icon"><i class="quickweb-icon-direction"></i></div>
                                <div class="col-12 contact-title">
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal></div>

                            </div>
                            <div class="contact-box col-4">
                                <div class="col-12 contact-icon"><i class="quickweb-icon-phone"></i></div>
                                <div class="col-12 contact-title">
                                    <asp:Literal ID="Literal3" runat="server"></asp:Literal></div>

                            </div>
                            <div class="contact-box col-4">
                                <div class="col-12 contact-icon"><i class="quickweb-icon-mail-alt"></i></div>
                                <div class="col-12 contact-title">
                                    <asp:Literal ID="Literal4" runat="server"></asp:Literal></div>
                            </div>


                        </div>
                    </div>
                </section>

                <section class="footer">

                    <div class="bottom-footer">
                        <div class="container">
                            <div class="col-12">
                                <div class="col-6 mb-6" style="color: #606873">
                                    <%--<div class="footer-menu" style="vertical-align:middle;">
								<div class="col-3 footer-menu-box-link">Home</div>
								 <div class="col-3 footer-menu-box-link">About Us </div>
								<div class="col-3 footer-menu-box-link">Privacy policy</div>
								<div class="col-3 footer-menu-box-link">Sitemap</div>
							   
							 </div>--%>
                                </div>
                                <div class="col-6 mb-6 social right">
                                    <div class="col-3"><i class="quickweb-icon-facebook"></i></div>
                                    <div class="col-3"><i class="quickweb-icon-twitter"></i></div>
                                    <div class="col-3"><i class="quickweb-icon-youtube"></i></div>
                                    <div class="col-3"><i class="quickweb-icon-gplus-1"></i></div>
                                </div>
                            </div>
                            <div class="col-12 creator" style="padding-top: 25px;">
                                <div class="col-6 copyright">© 2017. All Rights Reserved</div>
                                <div class="col-6 design-by">
                                    <%--<div class="col-8" style="color: #E5E5E5;font-weight: 100;font-size: 15px;">Made With <i class="quickweb-icon-heart" style="color:rgb(216, 24, 24);font-size:20px;"></i>By</div>
					<div class="col-4 footer-logo" >    <img src="image/iislogo.png" style="" /></div> --%>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
          
        </div>
          <%--<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></%--script>--%>
          <script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>        
<script src='http://cdn.jsdelivr.net/jquery.slick/1.5.9/slick.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.2/TweenMax.min.js'></script>

    <script src="../slider/js/index.js"></script>
   
    </form>
</body>
</html>
