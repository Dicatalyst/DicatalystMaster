<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" EnableEventValidation="false" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DiCatalyst</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Delish Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="mainportal/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="mainportal/css/font-awesome.css" rel="stylesheet" />
    <link href="mainportal/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet" />
    <!--//web-fonts-->
    <style>
        .contact-bnr-w3-agile ul li i {
            color: #fff !important;
        }
    </style>

    <script src="design/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="plugins/noty-master/js/noty/jquery.noty.js"></script>
    <script src="plugins/noty-master/js/noty/layouts/top.js"></script>
    <script src="plugins/noty-master/js/noty/layouts/topRight.js"></script>
    <script src="plugins/noty-master/js/noty/themes/default.js"></script>


    <script type="text/javascript">
        function Employees_Populated(sender, e) {
            var employees = sender.get_completionList().childNodes;
            for (var i = 0; i < employees.length; i++) {
                var div = document.createElement("DIV");
                div.innerHTML = "<img style = 'height:50px;width:50px' src = 'photos/" +
                    employees[i]._value +
                    ".jpg' /><br />";
                employees[i].appendChild(div);
            }
        }

        function OnEmployeeSelected(source, eventArgs) {
            var idx = source._selectIndex;
            var employees = source.get_completionList().childNodes;
            var value = employees[idx]._value;
            var text = employees[idx].firstChild.nodeValue;
            source.get_element().value = text;
        }
    </script>
    <%-- modules--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="design/dist/css/AdminLTE.min.css" />
    <style>
        .login-box {
            margin-top: 20px !important;
        }

        .listmargin li {
            margin-bottom: 10px !important;
            padding: 2px !important;
        }

        .btn {
            padding: 5px !important;
        }

        .modulecolor {
            /*color: black !important;*/
            padding-top: 20px;
        }

        .blacktext li {
            color: #000000 !important;
        }

        .widget-user .box-footer {
            padding-top: 30px;
            text-align: center;
        }

        .boxHeight {
            height: 150px;
        }
        .liFeatures {
            
            list-style-type: none;
            text-align: left;
            
        }
        .liFeatures li i {
            margin-right: 10px;

        }
    </style>


    <%--  <script type="text/javascript">
		 $(document).ready(function () {
			 SearchText();
		 });
		 function SearchText() {
			 $("#txtSpeciality").autocomplete({
				 source: function (request, response) {
					 $.ajax({
						 type: "POST",
						 contentType: "application/json; charset=utf-8",
						 url: "Default.aspx/getspeciality",
						 data: "{'name':'" + document.getElementById('txtSpeciality').value + "'}",
						 dataType: "json",
						 success: function (data) {
							 response(data.d);
						 },
						 error: function (result) {
							 alert("No Match");
						 }
					 });
				 }
			 });
		 }
	</script>  --%>


    <script type="text/javascript">
        function ClientItemSelected(sender, e) {
            $get("<%= hfCustomerId.ClientID %>").value = e.get_value();
        }
    </script>

    <script type="text/javascript">
        function generate(txt, type) {
            var n = noty({
                text: txt,
                type: type,
                dismissQueue: true,
                layout: 'top',
                theme: 'defaultTheme'
            });
            //console.log('html: ' + n.options.id);
            setTimeout(function () {
                $.noty.close(n.options.id);
            },
                5000);
        }

        function generate_topRight(txt, type) {
            var n = noty({
                text: txt,
                type: type,
                dismissQueue: true,
                layout: 'topRight',
                theme: 'defaultTheme'
            });
            console.log('html: ' + n.options.id);
        }

        function generateAll() {
            generate('alert');
            generate('information');
            generate('error');
            generate('warning');
            generate('notification');
            generate('success');
        }
        //$(document).ready(function () {
        //    generate_topRight("information here", 'information');
        //});
    </script>


    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />


    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />
    <style>
        .contact {
            background-color: rgb(32, 32, 32);
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <!-- banner -->
            <div class="banner" id="home">
                <!-- header -->
                <div class="banner-top">
                    <div class="social-bnr-agileits">
                        <ul>
                            <li>
                                <a href="https://www.facebook.com/dicatalyst1/">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://twitter.com/info_dicatalyst">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-google-plus" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.linkedin.com/company/dicatalyst">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="contact-bnr-w3-agile">
                        <ul>
                            <li>
                                <i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@dicatalyst.com">INFO@DICATALYST.COM</a>
                            </li>
                            <li><i class="fa fa-phone" aria-hidden="true"></i>+91 (40)2303-8899</li>
                            <li class="user user-menu open">
                                <!-- Menu Toggle Button -->
                                <style>
                                    .user-image {
                                        float: left;
                                        width: 25px;
                                        height: 25px;
                                        border-radius: 50%;
                                        margin-right: 10px;
                                        margin-top: -2px;
                                    }
                                    li.user-header {
                                        height: 175px;
                                        padding: 10px;
                                        text-align: center;
                                    }
                                   
                                    
                                </style>
                            
                                    <!-- The user image in the navbar-->
                                    <%--<img src="design/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">--%>
                                <asp:Panel ID="Panel1" visible="False" runat="server">
                                <i class="fa fa-user"></i>
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span class="hidden-xs">
                                        <asp:Literal ID="ltlUsername" runat="server"></asp:Literal></span>
                                    </asp:Panel>
                               
                                
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkSignOut" runat="server" ToolTip="Sign Out" OnClick="lnkSignOut_Click">&nbsp;<i class="fa fa-power-off"></i></asp:LinkButton>
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
                                <div class="navbar-header navbar-left" style="">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <div class="w3_navigation_pos">
                                        <h1>
                                            <a href="Default.aspx">
                                                <img src="images/new-di-logo1.png" style="" />
                                            </a>
                                        </h1>
                                    </div>
                                </div>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                                    <nav class="menu menu--miranda">
                                        <ul class="nav navbar-nav menu__list">
                                            <li class="menu__item menu__item--current">
                                                <a href="Aboutus.aspx" class="menu__link">About Us</a>
                                            </li>
                                            <li class="menu__item">
                                                <a href="Demo.aspx" class=" menu__link">Demo</a>
                                            </li>
                                            <li class="menu__item">
                                                <a href="Pricing.aspx" class=" menu__link">Pricing</a>
                                            </li>
                                            <li class="menu__item">
                                                <a href="Register.aspx" class=" menu__link">Signup</a>
                                            </li>
                                            <li class="menu__item">
                                                <a href="Login.aspx" class=" menu__link">Login</a>
                                            </li>
                                            <!-- added Feedback  todo ravi
                                              <li class="menu__item">
                                                <a href="Feedback.aspx" class=" menu__link">FeedBack</a>
                                            </li>-->
                                            <li class="menu__item">
                                                <a href="AskaDoctor.aspx" class=" menu__link">Ask a Doctor</a>
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


                        <div class="col-md-3 form-left-agileits-w3layouts " style="color: white; text-align: left;">
                            <i class="fa fa-neuter" aria-hidden="true"></i>&nbsp;&nbsp;
			<asp:Label ID="Label1" runat="server" Text=" Select City"></asp:Label>

                            <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">

                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="0" runat="server" ErrorMessage="Please Enter City" ControlToValidate="ddlCity" class="error-message" ValidationGroup="g1"></asp:RequiredFieldValidator>

                            </div>


                        </div>
                        <div class="col-md-3 form-time-w3layouts" style="color: white; text-align: left;">
                            <i class="fa fa-map-pin" aria-hidden="true"></i>&nbsp;&nbsp;
			<asp:Label ID="Label2" runat="server" Text=" Locality"></asp:Label>
                            <asp:TextBox  CssClass="form-control error-message" runat="server" ID="txtLocality"></asp:TextBox>
                            <asp:DropDownList ID="ddlLocality" runat="server" Visible="false" CssClass="form-control error-message">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Locality" ControlToValidate="txtLocality" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>
                        <div class="col-md-3 form-date-w3-agileits" style="color: white; text-align: left;">
                            <i class="fa fa-plus-square" aria-hidden="true"></i>&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text=" Speciality"></asp:Label>

                            <asp:TextBox ID="txtSpeciality" runat="server" CssClass="form-control autosuggest" type="text"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Speciality" ControlToValidate="txtSpeciality" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                            </div>
                            <ajaxToolkit:AutoCompleteExtender
                                ServiceMethod="SearchCustomers" MinimumPrefixLength="1" 
                                CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" FirstRowSelected="false" OnClientItemSelected="ClientItemSelected"
                                ID="txtSpeciality_AutoCompleteExtender"
                                runat="server" DelimiterCharacters="" Enabled="True" 
                                TargetControlID="txtSpeciality">
                            </ajaxToolkit:AutoCompleteExtender>
                            <asp:HiddenField ID="hfCustomerId" runat="server" />


                        </div>

                        <div class="col-md-3 form-left-agileits-submit">
                            <asp:LinkButton ID="lnkSearch" CssClass="form-control btn-warning" Style="margin-top: 23px;" runat="server" OnClick="lnkSearch_Click" ValidationGroup="g1">SEARCH</asp:LinkButton>

                        </div>

                    </div>
                </div>
                <!-- gallery -->
                <%--<div class="gallery-ban" id="gallery">
					<div class="container">
						<ul id="flexiselDemo1">
							<li>
								<div class="wthree_testimonials_grid_main">

									<img src="mainportal/images/p1.jpg" alt=" " class="img-responsive" />
								</div>
							</li>
							<li>
								<div class="wthree_testimonials_grid_main">

									<img src="mainportal/images/p2.jpg" alt=" " class="img-responsive" />
								</div>
							</li>
							<li>
								<div class="wthree_testimonials_grid_main">

									<img src="mainportal/images/p3.jpg" alt=" " class="img-responsive" />
								</div>
							</li>
							<li>
								<div class="wthree_testimonials_grid_main">

									<img src="mainportal/images/p6.jpg" alt=" " class="img-responsive" />
								</div>
							</li>
							<li>
								<div class="wthree_testimonials_grid_main">

									<img src="mainportal/images/p4.jpg" alt=" " class="img-responsive" />
								</div>
							</li>
							<li>
								<div class="wthree_testimonials_grid_main">

									<img src="mainportal/images/p5.jpg" alt=" " class="img-responsive" />
								</div>
							</li>
						</ul>

					</div>
				</div>--%>
                <!-- //gallery -->
            </div>
            <!-- //banner -->
            <%--<div class="ab-w3l-about">
	<div class="container">
		<h3 class="tittle-w3"><span>Welcome to </span>Dicatalyst
		</h3>
		<p class="para-w3l">
			Good medical practice relies on trust between doctors and their patients. It is important that doctors are able to effectively communicate with the patients to help them best. Communication is important in the delivery of high quality health as it improves the outcome for the patient and doctor both.
		</p>
	</div>
</div>--%>
            <%--<div class="about" id="about">
	<div class="col-md-6 ab-w3-agile-info">
		<div class="ab-w3-agile-info-text">
			<h3 class="tittle-w3">About<span> Us</span>
			</h3>
			<p class="para-w3l">Dicatalyst is a platform that works as a bridge between a doctor and a patient. Our company Dicatalyst private limited is a new company located in India. It is specifically made to help people find better health facilities and good doctors in their area. Our aim is to make medical facilities accessible for everyone.</p>
			<div class="about-read">
				<a href="#">Learn More</a>
			</div>
		</div>
		<div class="ab-w3-agile-inner">
			<div class="col-md-6 ab-w3-agile-part">
				<h4>FOR DOCTORS</h4>

				<ul>
					<li>On-online appointments for your patients.Doctors as well as patient will get SMS and email confirmation and</li>
					<li>Easily customizable website with domain name and hosting,Practice management software for your clinic/Hospital.</li>
					<li>Our cloud computing software easy to use and accessible any where in the world on your smart phone, tab and on the computer.</li>
					<li>You can share, discuss your clinical cases with other professional colleagues on the Dicatalyst website.</li>
					<li>Thousands of patient are uploading their queries on our site you can give your opinion or your valuable suggestions.</li>
					<li>online marketing tools for your clinic/Hospital.</li>
					<li>increase number of patient will increase your clinic revenue</li>


				</ul>


			</div>
			<div class="col-md-6 ab-w3-agile-part two">
				<h4> WHAT WE DO</h4>

				<ul>
					<li>Our aim is to make medical facilities accessible for everyone.</li>
					<li>We provide a platform that works as bridge between doctors and patients.</li>
					<li>We provide doctors’ big data of entire country.</li>
					<li>Patient can find the doctors information according to their requirement on our website.</li>
					<li>Free website, practice management software and on-line marketing tools for the doctors.</li>
				    <li>We provide doctors’ big data of entire country.</li>
				</ul>


			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="col-md-6 ab-w3-agile-img">
	</div>

	<div class="clearfix"></div>
</div>--%>
            <!--blogs-->
            <div class="agile-blogs" id="blogss">
                <div class="container">
                    <h3 class="tittle-w3"><span>Welcome to </span>Dicatalyst
                    </h3>
                    <p class="para-w3l">Good medical practice relies on trust between doctors and their patients. It is important that doctors are able to effectively communicate with the patients to help them best. Communication is important in the delivery of high quality health as it improves the outcome for the patient and doctor both. Dicatalyst is a platform that works as a bridge between a doctor and a patient. Our company Dicatalyst private limited is a new company located in India. It is specifically made to help people find better health facilities and good doctors in their area.</p>
                    <p class="para-w3l">
                        Our aim is to make medical facilities accessible for everyone.
                    </p>
                    <div class="g1 agile-blog1">
                        <a href="#">
                            <img src="mainportal/images/hos.png" alt="blog1" />
                        </a>
                        <div class="text-w3">
                            <%--<h3 class="tittle-w3 sub-head">
					<span>Useful For </span>
				</h3>--%>

                            <ul class="usefulfor">

                                <li>All types of Hospitals</li>
                                <li>All types of Clinics</li>
                                <li>All types of Laboratories</li>
                                <li>All types of Pharmacies</li>
                                <li>Specialty Clinics & Physicians</li>
                                <li>All types of Practitioners</li>
                                <li>All types of Doctors like Obstetricians & Gynaecologists, Ophthalmologists, Cardiologists, Paediatricians</li>


                            </ul>


                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <%--<div class="g2 agile-blog2">
			<a href="#">
				<img src="mainportal/images/pharma.png" alt="blog1"/>
			</a>
			<div class="text-w3l">
				<h3 class="tittle-w3 sub-head" style="margin-right: 250px;">
					<span>Main Modules</span>
				</h3>

				<ul class="mainmodule">
					<li>Patients Management</li>
					<li>Allergy warning Management</li>
					<li>Vaccination pending reminders & Alerts</li>
					<li>Drugs Management – Expiring drug Alerts</li>
					<li>Appointments & Scheduling Management</li>
					<li>Prescription Management</li>
					<li>Inventory Management</li>
					<li>Email Management – Reminders for Appointment</li>
					<li>SMS Management – Reminders for Appointment</li>
				</ul>


			</div>
			<div class="clearfix"></div>
		</div>--%>
                </div>
            </div>
            <!--//blogs-->

            <!--count-->
            <div class="count-agileits">
                <div id="particles-js"></div>

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
            <%--<div class="services-w3layouts" id="services">
	<!-- //Stats -->
	<div class="col-md-12 agitsworkw3ls-grid ">--%>

            <div class="agile-blogs" id="blogs">
                <div class="container">
                    <h3 class="tittle-w3"><span>Connecting</span> The <span>Gamut </span>of <span>Healthcare</span>
                    </h3>
                    <p class="para-w3l">
                        Good medical practice relies on trust between doctors and their patients.It is important that doctors are able to effectively communicate with the patients to help them best.Communication is important in the delivery of high quality health as it improves the outcome for the patient and doctor both.

                    </p>
                    <%--<div class="col-md-12 agitsworkw3ls-grid">
			<h3 class="tittle-w3 sub-head">
				<span>Features </span>
			</h3>
			<p class="para-w3l">Useful for General Practitioners, Surgeons, Gynecologist, Small to big hospital, Nursing homes, and all Physicians.</p>
			<ul>
				<li><i class="fa fa-check" aria-hidden="true"></i>Generate Prescriptions in less than 60 seconds.</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Easy to use patient visit details (OPD/IPD) modules.</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Prescription in simple formats.</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Family wise patient records management</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Various Predefined Certificate.</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Billing and account manager for your accounting needs.</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Detailed demographical and clinical data analysis.</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Built in backup and restore facilities</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Multi-user compatible</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>Email Facility</li>
				<li><i class="fa fa-check" aria-hidden="true"></i>SMS Facility</li>
			</ul>
		</div>--%>



                    <div class="row">
                        <div class="col-md-4">
                            <!-- Widget: user widget style 1 -->
                            <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-aqua-active">
                                    <h3 class="widget-user-username text-center">DiCatalyst - Doctor</h3>
                                    <%--<h5 class="widget-user-desc">Founder &amp; CEO</h5>--%>
                                </div>
                                <div class="widget-user-image">
                                    <span style="background-color: #fff; border: 3px solid #00a7d0; border-radius: 50%; display: block; height: 100%; width: 100%;">


                                        <i class="fa fa1 fa-user-md" style="color: #00a7d0; font-size: 40px; padding: 20px; vertical-align: middle;"></i>
                                    </span>
                                </div>
                                <div class="box-body boxHeight">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="description-block">
                                                <p class="modulecolor">
                                                    DiCatalyst - Doctor Management System helps you to manage your activities, appointments, billing efficiently with clear operational visibility.
	                                Sign up and become visible to millions of patients on the web.
                                                </p>

                                            </div>
                                            <!-- /.description-block -->
                                        </div>

                                    </div>
                                    <!-- /.row -->
                                </div>

                                <div class="box-footer">

                                    <span class="description-text">

                                        <a href="Doctor_Freelisting.aspx" target="_blank">
                                            <button type="button" class="btn bg-aqua-active">Free-Listing</button>
                                        </a>
                                        <a href="Packages.aspx?modid=d">
                                            <button type="button" class="btn bg-aqua-active">Sign-Up</button>
                                        </a>
                                    </span>
                                    <div>
                                        <br />
                                        <b>Features</b>
                                        <ul class="liFeatures">
                                            <li><i class="fa fa-check"></i>Suspendisse sodales nisi ut pretium egestas.</li>
                                            <li><i class="fa fa-check"></i>Morbi finibus urna nec ligula molestie aliquam.</li>
                                            <li><i class="fa fa-check"></i>Integer vitae nunc sed ante vulputate imperdiet ac vitae augue.</li>
                                            
                                        </ul>
                                    </div>

                                </div>
                            </div>
                            <!-- /.widget-user -->
                        </div>
                        <div class="col-md-4">
                            <!-- Widget: user widget style 1 -->
                            <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-teal-active">
                                    <h3 class="widget-user-username text-center">DiCatalyst - Clinic</h3>
                                    <%--<h5 class="widget-user-desc">Founder &amp; CEO</h5>--%>
                                </div>
                                <div class="widget-user-image">
                                    <span style="background-color: #fff; border: 3px solid #30bbbb; border-radius: 50%; display: block; height: 100%; width: 100%;">


                                        <i class="fa fa1 fa-hospital-o" style="color: #30bbbb; font-size: 40px; padding: 20px; vertical-align: middle;"></i>
                                    </span>
                                </div>
                                <div class="box-body boxHeight">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="description-block">
                                                <p class="modulecolor">DiCatalyst - Clinic Management System helps you to manage your clinic right from first appointment to final billing efficiently with clear operational visibility to make it profitable.</p>

                                            </div>
                                            <!-- /.description-block -->
                                        </div>

                                    </div>
                                    <!-- /.row -->
                                </div>

                                <div class="box-footer">
                                    <span class="description-text">

                                        <a href="Clinic_FreeListing.aspx" target="_blank">
                                            <button type="button" class="btn bg-teal-active">Free-Listing</button>
                                        </a>

                                        <a href="Packages.aspx?modid=c">
                                            <button type="button" class="btn bg-teal-active">Sign-Up</button>
                                        </a>
                                    </span>
                                    
                                    <div>
                                        <br />
                                        <b>Features</b>
                                        <ul class="liFeatures">
                                            <li><i class="fa fa-check"></i>Suspendisse sodales nisi ut pretium egestas.</li>
                                            <li><i class="fa fa-check"></i>Morbi finibus urna nec ligula molestie aliquam.</li>
                                            <li><i class="fa fa-check"></i>Integer vitae nunc sed ante vulputate imperdiet ac vitae augue.</li>
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /.widget-user -->
                        </div>
                        <div class="col-md-4">
                            <!-- Widget: user widget style 1 -->
                            <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-green-active">
                                    <h3 class="widget-user-username text-center">DiCatalyst Hospital</h3>
                                    <%--<h5 class="widget-user-desc">Founder &amp; CEO</h5>--%>
                                </div>
                                <div class="widget-user-image">
                                    <span style="background-color: #fff; border: 3px solid #008d4c; border-radius: 50%; display: block; height: 100%; width: 100%;">


                                        <i class="fa fa1 fa-building-o" style="color: #008d4c; font-size: 40px; padding: 20px; vertical-align: middle;"></i>
                                    </span>
                                </div>
                                <div class="box-body boxHeight">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="description-block">
                                                <p class="modulecolor">DiCatalyst - Hospital Management System helps you to manage your hospital right from first appointment to final billing efficiently with clear operational visibility to make it profitable.</p>

                                            </div>
                                            <!-- /.description-block -->
                                        </div>

                                    </div>
                                    <!-- /.row -->
                                </div>

                                <div class="box-footer">

                                    <span class="description-text">
                                        <a href="Hospital_FreeListing.aspx" target="_blank">
                                            <button type="button" class="btn bg-green-active">Free-Listing</button>
                                        </a>

                                        <a href="Packages.aspx?modid=h">
                                            <button type="button" class="btn bg-green-active">Sign-Up</button>
                                        </a>


                                    </span>
                                    
                                    <div>
                                        <br />
                                        <b>Features</b>
                                        <ul class="liFeatures">
                                            <li><i class="fa fa-check"></i>Suspendisse sodales nisi ut pretium egestas.</li>
                                            <li><i class="fa fa-check"></i>Morbi finibus urna nec ligula molestie aliquam.</li>
                                            <li><i class="fa fa-check"></i>Integer vitae nunc sed ante vulputate imperdiet ac vitae augue.</li>
                                            
                                        </ul>
                                    </div>

                                </div>

                            </div>
                            <!-- /.widget-user -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <!-- Widget: user widget style 1 -->
                            <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-orange-active">
                                    <h3 class="widget-user-username text-center">DiCatalyst - Patient</h3>
                                    <%--<h5 class="widget-user-desc">Founder &amp; CEO</h5>--%>
                                </div>
                                <div class="widget-user-image">
                                    <span style="background-color: #fff; border: 3px solid #ff7701; border-radius: 50%; display: block; height: 100%; width: 100%;">


                                        <i class="fa fa1 fa-user-plus" style="color: #ff7701; font-size: 40px; padding: 20px; vertical-align: middle;"></i>
                                    </span>
                                </div>
                                <div class="box-body boxHeight">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="description-block">
                                                <p class="modulecolor">DiCatalyst - Patient Management System helps you to get the latest updates to your health records from your doctor — from lab results to prescriptions.</p>

                                            </div>
                                            <!-- /.description-block -->
                                        </div>

                                    </div>
                                    <!-- /.row -->
                                </div>

                                <div class="box-footer">

                                    <span class="description-text">


                                        <a href="patient/Default.aspx">
                                            <button type="button" class="btn bg-orange-active">Sign-Up</button>
                                        </a>
                                    </span>
                                    <div>
                                        <br />
                                        <b>Features</b>
                                        <ul class="liFeatures">
                                            <li><i class="fa fa-check"></i>Suspendisse sodales nisi ut pretium egestas.</li>
                                            <li><i class="fa fa-check"></i>Morbi finibus urna nec ligula molestie aliquam.</li>
                                            <li><i class="fa fa-check"></i>Integer vitae nunc sed ante vulputate imperdiet ac vitae augue.</li>
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /.widget-user -->
                        </div>
                        <div class="col-md-4">
                            <!-- Widget: user widget style 1 -->
                            <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-purple-active">
                                    <h3 class="widget-user-username text-center">DiCatalyst - Laboratory</h3>
                                    <%--<h5 class="widget-user-desc">Founder &amp; CEO</h5>--%>
                                </div>
                                <div class="widget-user-image">
                                    <span style="background-color: #fff; border: 3px solid #555299; border-radius: 50%; display: block; height: 100%; width: 100%;">


                                        <i class="fa fa1 fa-chain-broken" style="color: #555299; font-size: 40px; padding: 20px; vertical-align: middle;"></i>
                                    </span>
                                </div>
                                <div class="box-body boxHeight">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="description-block">
                                                <p class="modulecolor">DiCatalyst - Laboratory Management System helps you to manage your lab workflow right from billing to reporting efficiently and grow the business.</p>

                                            </div>
                                            <!-- /.description-block -->
                                        </div>

                                    </div>
                                    <!-- /.row -->
                                </div>

                                <div class="box-footer">

                                    <span class="description-text">
                                        <a href="Lab_FreeListing.aspx" target="_blank">
                                            <button type="button" class="btn bg-purple-active">Free-Listing</button>
                                        </a>

                                        <a href="Packages.aspx?modid=l">
                                            <button type="button" class="btn bg-purple-active">Sign-Up</button>
                                        </a>

                                    </span>
                                    
                                    <div>
                                        <br />
                                        <b>Features</b>
                                        <ul class="liFeatures">
                                            <li><i class="fa fa-check"></i>Suspendisse sodales nisi ut pretium egestas.</li>
                                            <li><i class="fa fa-check"></i>Morbi finibus urna nec ligula molestie aliquam.</li>
                                            <li><i class="fa fa-check"></i>Integer vitae nunc sed ante vulputate imperdiet ac vitae augue.</li>
                                            
                                        </ul>
                                    </div>

                                </div>

                            </div>
                            <!-- /.widget-user -->
                        </div>
                        <div class="col-md-4">
                            <!-- Widget: user widget style 1 -->
                            <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-maroon-active">
                                    <h3 class="widget-user-username text-center">DiCatalyst - Pharmacy</h3>
                                    <%--<h5 class="widget-user-desc">Founder &amp; CEO</h5>--%>
                                </div>
                                <div class="widget-user-image">
                                    <span style="background-color: #fff; border: 3px solid #ca195a; border-radius: 50%; display: block; height: 100%; width: 100%;">


                                        <i class="fa fa1  fa-plus-square" style="color: #ca195a; font-size: 40px; padding: 20px; vertical-align: middle;"></i>
                                    </span>
                                </div>
                                <div class="box-body boxHeight">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="description-block">
                                                <p class="modulecolor">DiCatalyst - Pharmacy Management System helps you to manage your pharmacy efficiently with better turn around time and decreased pilferage.</p>

                                                <%--  <b>Features</b>

                                <ul class="blacktext">
                                    <li>Etiam sed elit id arcu laoreet mollis.</li>
                                    <li>Aliquam pharetra orci non metus fermentum pretium.</li>
                                    <li>Cras porta odio vel orci posuere, vel pretium augue egestas.</li>

                                </ul>
                                                --%>
                                            </div>
                                            <!-- /.description-block -->
                                        </div>

                                    </div>
                                    <!-- /.row -->
                                </div>


                                <div class="box-footer">

                                    <span class="description-text">
                                        <a href="Pharma_FreeListing.aspx" target="_blank">
                                            <button type="button" class="btn bg-maroon-active">Free-Listing</button>
                                        </a>

                                        <a href="Packages.aspx?modid=p">
                                            <button type="button" class="btn bg-maroon-active">Sign-Up</button>
                                        </a>
                                    </span>
                                    
                                    <div>
                                        <br />
                                        <b >Features</b>
                                        <ul class="liFeatures">
                                            <li><i class="fa fa-check"></i>Suspendisse sodales nisi ut pretium egestas.</li>
                                            <li><i class="fa fa-check"></i>Morbi finibus urna nec ligula molestie aliquam.</li>
                                            <li><i class="fa fa-check"></i>Integer vitae nunc sed ante vulputate imperdiet ac vitae augue.</li>
                                            
                                        </ul>
                                    </div>

                                </div>

                            </div>
                            <!-- /.widget-user -->
                        </div>
                    </div>


                </div>

                <%--<div class="col-md-6 agitsworkw3ls-grid-2">
		<div class="info-imgs">
			<ul>
				<li>
					<div class="gallery-grid1">
						<a href="#">

							<img src="mainportal/images/s1.jpg" alt=" " class="img-responsive">
						</a>
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
						<a href="#">

							<img src="mainportal/images/s5.jpg" alt=" " class="img-responsive"/>
						</a>
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
						<a href="#">
							<img src="mainportal/images/s6.jpg" alt=" " class="img-responsive">
						</a>


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
						<a href="#">
							
							<img src="mainportal/images/s2.jpg" alt=" " class="img-responsive">
						</a>
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
						<a href="#">
							<img src="mainportal/images/s3.jpg" alt=" " class="img-responsive">
						</a>
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
						<a href="#">
							<img src="mainportal/images/s4.jpg" alt=" " class="img-responsive">
						</a>
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

	</div>--%>
                <div class="clearfix"></div>
                <!-- //Stats -->
                <div class="clearfix"></div>
            </div>
            <!--//services-section-->

            <!-- mail -->
            <div class="mail">

                <%-- <div class="mail-grid1">
		<div class="container">
			<h3 class="tittle-w3">Contact <span>Info</span>
			</h3>
			<div class="col-md-4 mail-agileits-w3layouts">
				<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
				<div class="contact-right">
					<p>Phone</p>
					<span>+1 (100)222-23-33</span>
				</div>
			</div>
			<div class="col-md-4 mail-agileits-w3layouts">
				<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
				<div class="contact-right">
					<p>Email</p>
					<a href="mailto:info@example.com">info@example.com</a>
				</div>
			</div>
			<div class="col-md-4 mail-agileits-w3layouts">
				<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
				<div class="contact-right">
					<p>Address</p>
					<span>Lorem is dummy text.</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="col-md-7 map ">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26359195.17562375!2d-113.7156245614499!3d36.2473834534249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1452332634941"></iframe>
	</div>
	
                --%>


                <div class="row contact">

                    <div class="col-lg-offset-4 col-md-4 mail-grid1-form col-lg-offset-4">
                        <h3 class="tittle-w3"><span>Send a </span>Message
                        </h3>

                        <asp:TextBox ID="txtname" runat="server" type="text" placeholder="Name" CssClass="form-control"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="a" ErrorMessage="Enter Name" ControlToValidate="txtname" class="error-message"></asp:RequiredFieldValidator>

                        </div>

                        <asp:TextBox ID="txtemail" runat="server" type="email" placeholder="Email" CssClass="form-control"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ValidationGroup="a" ControlToValidate="txtemail" class="error-message"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="a" ErrorMessage="Enter Valid Email" ControlToValidate="txtemail" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                        </div>


                        <asp:TextBox ID="txttext" runat="server" placeholder="Type Your Text Here...." TextMode="MultiLine" Rows="2" CssClass="form-control"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="a" ErrorMessage="Enter Text" ControlToValidate="txttext" class="error-message"></asp:RequiredFieldValidator>

                        </div>


                        <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="a" type="submit" />


                    </div>

                </div>

                <div class="clearfix"></div>
            </div>
            <!-- //mail -->
            <style>
                .terms {
                    text-align: center;
                }

                .terms li {
                    display: inline-block;
                }
            </style>
            <div class="copyright-wthree">
                <p>&copy; 2017 Dicatalyst . All Rights Reserved | Design by <a href="http://Dicatalyst.com/" target="_blank">Dicatalyst </a></p>
                <br />
                <ul class="terms">
                    <%--  <li><a href="PrivacyCookieStatement.aspx">Privacy Cookie Statement</a> | </li>--%>
                    <li><a href="PrivacyPolicy.aspx" target="blank">Privacy Policy</a> | </li>
                    <li>
                        <a href="TermsOfServices.aspx" target="blank">Terms of Service</a>
                    </li>
                    <li>
                        <a href="TermsOfUse.aspx" target="blank">Terms of Use</a>
                    </li>
                </ul>
            </div>
            <!-- //Footer -->

            <a href="#home" class="scroll" id="toTop" style="display: block;">
                <span id="toTopHover" style="opacity: 1;"></span>
            </a>
            <!-- //smooth scrolling -->
            <%--   <script type="text/javascript" src="mainportal/js/jquery-2.1.4.min.js"></script>--%>
            <script type="text/javascript" src="mainportal/js/numscroller-1.0.js"></script>
            <script src="mainportal/js/particles.js"></script>
            <script src="mainportal/js/app.js"></script>
            <!--gallery-->
            <script type="text/javascript">
                $(window).load(function () {
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
            <script type="text/javascript" src="mainportal/js/jquery.flexisel.js"></script>
            <!--gallery-->
            <!-- Dropdown-Menu-JavaScript -->
            <script>
                $(document).ready(function () {
                    $(".dropdown").hover(
                        function () {
                            $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                            $(this).toggleClass('open');
                        },
                        function () {
                            $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                            $(this).toggleClass('open');
                        }
                    );
                });
            </script>
            <!-- //Dropdown-Menu-JavaScript -->
            <!-- Calendar -->
            <link rel="stylesheet" href="mainportal/css/jquery-ui.css" />
            <script src="plugins/noty-master/js/noty/jquery-ui.js"></script>
            <script src="mainportal/js/jquery-ui.js"></script>
            <script>
                $(function () {
                    $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
                });
            </script>
            <!-- //Calendar -->
            <!-- start-smoth-scrolling -->
            <script type="text/javascript" src="mainportal/js/move-top.js"></script>
            <script type="text/javascript" src="mainportal/js/easing.js"></script>
            <script type="text/javascript">
                jQuery(document).ready(function ($) {
                    $(".scroll").click(function (event) {
                        event.preventDefault();
                        $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                    });
                });
            </script>
            <!-- start-smoth-scrolling -->
            <!-- here stars scrolling icon -->
            <script type="text/javascript">
                $(document).ready(function () {
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
            <!--js for bootstrap working-->
            <script src="mainportal/js/bootstrap.js"></script>
            <!-- //for bootstrap working -->
            <!-- script-for-menu -->
            <script>
                $("span.menu").click(function () {
                    $(".top-nav ul").slideToggle("slow",
                        function () {
                        });
                });
            </script>
            <!-- script-for-menu -->


            <!-- For Validation -->


            <%--   <script src="validation/js/vendor/jquery-1.10.2.min.js"></script>--%>
            <script src="validation/js/scrupulous.js"></script>

            <script>
                $(function () {
                    $('.validate-form').scrupulous();
                    $('.callback-form').scrupulous({
                        valid: function () {
                            alert('Valid Callback - Submit the Form');
                            return true;
                        },
                        invalid: function () {
                            alert('Invalid Callback -  Stop the Form');
                            return false;
                        }
                    });

                    $('#toggle-disabled').on('change',
                        function () {
                            if ($(this).is(':checked')) {
                                $('#disabled-input').removeAttr('disabled');
                            } else {
                                $('#disabled-input').attr('disabled', true);
                            }
                        });

                });
            </script>


        </div>

    </form>
</body>
</html>
