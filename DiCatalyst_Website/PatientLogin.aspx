<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientLogin.aspx.cs" Inherits="PatientLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div class="box-body">
                <div class="col-lg-4 login-box">
                    <div class="box">
                        <div class="box-header bg-navy">
                            <h3 class="box-title">Login</h3>


                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">


                            <p class="login-box-msg">
                                <%--   <img src="images/new-di-logo.jpg" />--%>
                            </p>
                             <div class="form-group has-feedback">
                                 <asp:DropDownList ID="ddlModule" CssClass="form-control" runat="server" Visible="false">
<asp:ListItem Value="-1">Select User Type</asp:ListItem>
                                     <asp:ListItem Value="0">Dentist</asp:ListItem>
                                      <asp:ListItem Value="1">Receptionist</asp:ListItem>
                                      <asp:ListItem Value="2" Selected="True">Patient</asp:ListItem>
                                 </asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="g1"  ErrorMessage="Please select User Type" InitialValue="-1" ControlToValidate="ddlModule" class="error-message"></asp:RequiredFieldValidator>

                                 </div>

                            <div class="form-group has-feedback">
                                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ValidationGroup="g1"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" class="error-message"></asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ValidationGroup="g1"  ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                </div>


                            </div>
                            <div class="form-group has-feedback">
                                <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ValidationGroup="g1"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" class="error-message"></asp:RequiredFieldValidator>

                                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Password Which Contains Atleast 8 Characters, one Digit, one Special Character" ControlToValidate="txtPassword" class="error-message" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>--%>

                                </div>


                            </div>


                            

                            <div class="row">
                                <div class="col-xs-8">
                                   <%-- <div class="checkbox icheck" style="margin-left: 20px;">
                                        <asp:CheckBox ID="CheckBox1" ValidationGroup="g1"  runat="server" Text="Remember Me" />
                                    </div>--%>
                                </div>
                                <!-- /.col -->
                                <div class="col-xs-4">
                                    <asp:Button ID="Button1" runat="server" ValidationGroup="g1"  CssClass="btn btn-primary btn-block btn-flat" Text="Sign In" OnClick="Button1_Click"/>

                                </div>
                                <!-- /.col -->
                            </div>


                            <!-- /.social-auth-links -->

                            <a href="ResetPassword.aspx">I forgot my password</a><br>
                            <a href="#" class="text-center">Register a new membership</a>

                </div>



                    </div>
                </div>
            </div>
    </div>
    </form>
</body>
</html>
