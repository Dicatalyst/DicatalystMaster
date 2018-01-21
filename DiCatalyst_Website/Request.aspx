<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New event</title>
    <link href="media/modal.css" type="text/css" rel="stylesheet"/>

    <script src="js/jquery-1.9.1.min.js"></script>
    <link rel="stylesheet" href="design/bootstrap/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
    <!-- Ionicons -->
  

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="design/dist/css/AdminLTE.min.css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="design/dist/css/skins/_all-skins.min.css" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


    <![endif]-->

    <%-- <script src="plugins/noty-master/demo/jquery-1.7.2.min.js"></script>--%>
    <script src="design/plugins/jQuery/jquery-2.2.3.min.js"></script>

    <script src="plugins/noty-master/js/noty/jquery.noty.js"></script>
    <script src="plugins/noty-master/js/noty/layouts/top.js"></script>
    <script src="plugins/noty-master/js/noty/layouts/topRight.js"></script>
    <script src="plugins/noty-master/js/noty/themes/default.js"></script>
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

    <style>
        .skin-blue .main-header li.user-header {
            background-color: #0d84ff !important;
        }

        .bg-navy-active {
            background-color: #0d84ff !important;
        }
    </style>
  
</head>
<body>
<form id="form1" runat="server">
    <div>
        <asp:Panel ID="PanelPopupCreate" runat="server" CssClass="modalPopup" Width="500px">
					
			
							<div class="nav-tabs-custom">
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#newPatient" data-toggle="tab" aria-expanded="true">New Patient</a>
								</li>
							

							</ul>

							<div class="tab-content">
							<div class="active tab-pane" id="newPatient">

								<!-- /.box-header -->
								<div class="box-body">
								  
								 <%--   <asp:LinkButton ID="LinkButtonDelete" runat="server" OnClick="LinkButtonDelete_Click">Delete</asp:LinkButton>--%>
							
									<table class="table">
                                        <tr>
                                            <td colspan="2">
                                                Your Id: <asp:Literal ID="ltlPatientId" runat="server"></asp:Literal>
                                            </td>
                                        </tr>
										<tr>
											<td>Time:</td>
											<td><b>From: <asp:Literal ID="TextBoxCreateStart" runat="server"></asp:Literal> To: 
												<asp:Literal ID="TextBoxCreateEnd" runat="server"></asp:Literal></b>
										</td>
										</tr>
										<tr>
											<td>Doctor:</td>
											<td>
												<asp:Literal ID="ltlDoctorName" runat="server"></asp:Literal></td>
										</tr>
										<%--<tr>
											<td>Status:</td>
											<td>
												<asp:DropDownList ID="DropDownListStatus" runat="server" CssClass="form-control">
													<asp:ListItem Value="waiting">Waiting</asp:ListItem>
													<asp:ListItem Value="confirmed">Confirmed</asp:ListItem>
												</asp:DropDownList></td>
										</tr>--%>
										<tr>
											<td>Your Name</td>
											<td>
												<div class="input-group">
													<div class="input-group-btn">
														<<asp:DropDownList ID="ddlsalutation" Width="80px" runat="server" CssClass="form-control">
															<asp:ListItem>Mr</asp:ListItem>
															<asp:ListItem>Mrs</asp:ListItem>
															<asp:ListItem>Ms</asp:ListItem>
															<asp:ListItem>Baby</asp:ListItem>
															<asp:ListItem>Master</asp:ListItem>
													

														</asp:DropDownList>
													</div>
													<!-- /btn-group -->
													<asp:TextBox ID="TextBoxCreateName" placeholder="Your Name" CssClass="form-control" runat="server"  Enabled="false"></asp:TextBox>

												</div>
											</td>
										</tr>
										<tr>
											<td>Age:</td>
											<td>
												<asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
											  

											        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Age" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

											        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Age (Not more than 2 Digits)" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>

											   

											</td>
										</tr>
										<tr>
											<td>Marital Status</td>
											<td>
												<asp:RadioButtonList ID="radmar" runat="server" RepeatDirection="Horizontal">

													<asp:ListItem>Single</asp:ListItem>
													<asp:ListItem>Married</asp:ListItem>
												</asp:RadioButtonList></td>
										</tr>
										<tr>
											<td>Gender</td>
											<td>
												<asp:RadioButtonList ID="radgen" runat="server" RepeatDirection="Horizontal">
													<asp:ListItem>Male</asp:ListItem>
													<asp:ListItem>Female</asp:ListItem>
												</asp:RadioButtonList></td>
										</tr>
										<tr>
											<td>Mobile No.:</td>
											<td>
												<asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
                                                
											   
											        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile No." ControlToValidate="txtMobileNo" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
											        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationGroup="g1" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>

											  

											</td>
										</tr>
										<tr>
											<td>Email:</td>
											<td>
												<asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
                                                
                                                
											  

											        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmailId" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

											        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmailId" class="error-message" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

											  
                                       

											</td>
										</tr>
										<tr>
											<td>Address</td>
											<td>
												<asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox></td>
										</tr>

										<tr>
											<td>Occupation</td>
											<td>
												<asp:TextBox ID="txtOccupation" runat="server" CssClass="form-control"></asp:TextBox></td>
										</tr>
										<tr>
											<td>Cheif Complaint</td>
											<td>
												<asp:TextBox ID="txtChiefComplaint" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
                                                
                                                
											

											        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Chief Complaint (Maximum 200 characters)" ControlToValidate="txtChiefComplaint" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                            
											   

											</td>
										</tr>
										<tr>
										<%--	<td>Consultation Fee</td>
											<td>
												<asp:TextBox ID="txtConsultationFee" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
										</tr>
										<tr>
											<td></td>--%>
											<td>
                                                <table>
                                                    <tr>
                                                        <td> <asp:Button ID="ButtonOK" runat="server" OnClick="ButtonOK_Click" Text="Save" ValidationGroup="g1"/></td><td>
                                                               <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click"/>   
                                                                 </td>
                                                    </tr>
                                                </table>
												
                                             
                                                                                             
												<%--<asp:LinkButton id="ButtonCreateCancel" runat="server" Text="Cancel" OnClick="ButtonCreateCancel_Click" />--%>
											  <%--  <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" ValidationGroup="patient" OnClick="Button2_Click" />
												<asp:Button ID="ButtonOK" runat="server" OnClick="ButtonOK_Click" Text="  OK  " CssClass="btn btn-info" />
												<asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CssClass="btn btn-info" />--%>
											</td>
										</tr>
									</table>

								</div>
							</div>


							<!-- /.tab-pane -->

							 

							</div>

							<!-- /.tab-pane -->
							</div>
								
						
					</asp:Panel>
       

    </div>
</form>
     
        <script src="design/bootstrap/js/bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="design/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="design/plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="design/dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="design/dist/js/demo.js"></script>
        <script src="plugins/noty-master/js/noty/jquery-ui.js"></script>

        <%--        <script src="js/jquery-1.2.6.min.js"></script>--%>
        <script src="js/jquery.fullscreenr.js"></script>

<script>
    $(document).ready(function() {
        $("#TextBoxName").keyup(function() {
            var text = $(this).val();
            $("#CheckBoxScheduled").prop("checked", !!text);
        });
    });
</script>
</body>
</html>