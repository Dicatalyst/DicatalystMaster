<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="Admin_adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>adminLogin</title>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>


    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>


    <link rel="stylesheet" href="../design/bootstrap/css/bootstrap.min.css"/>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"/>
    <!-- Theme style -->
    <link rel="stylesheet" href="design/dist/css/AdminLTE.min.css"/>
    <link href="../design/dist/css/AdminLTE.css" rel="stylesheet"/>

    <!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../design/dist/css/skins/_all-skins.min.css"/>

    <link href="../css/main.css" rel="stylesheet"/>
    <link href="../css/footer.css" rel="stylesheet"/>
    <style>
        .skin-blue .main-header li.user-header { background-color: #0d84ff !important; }

        .bg-navy-active { background-color: #0d84ff !important; }
    </style>

</head>
<body>
<form id="form1" runat="server">


    <!-- Content Header (Page header) -->


    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="box box-default">
                <div class="box-body">


                    <div class=" login-box">
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
                                    <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>

                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" ControlToValidate="txtUsername" class="error-message"></asp:RequiredFieldValidator>

                                        

                                    </div>


                                </div>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>

                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" class="error-message"></asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Password Which Contains Atleast 8 Characters, one Digit, one Special Character" ControlToValidate="txtPassword" class="error-message" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>

                                    </div>


                                </div>


                                <div class="row">
                                    <div class="col-xs-8">
                                        <div class="checkbox icheck">
                                            <label class="">
                                                <div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                                    <input type="checkbox" style="background: rgb(255, 255, 255); border: 0px; display: block; height: 140%; left: -20%; margin: 0px; opacity: 0; padding: 0px; position: absolute; top: -20%; width: 140%;">
                                                    <ins class="iCheck-helper" style="background: rgb(255, 255, 255); border: 0px; display: block; height: 140%; left: -20%; margin: 0px; opacity: 0; padding: 0px; position: absolute; top: -20%; width: 140%;"></ins>
                                                </div>
                                                Remember Me
                                            </label>
                                        </div>
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-xs-4">

                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="Sign In" OnClick="AdminLoginClick"/>

                                    </div>
                                    <!-- /.col -->
                                </div>


                                <!-- /.social-auth-links -->

                                <a href="#">I forgot my password</a><br>
                                <a href="#" class="text-center">Register a new membership</a>

                            </div>

                            <!-- /.box-body -->
                            <!-- /.box-body -->
                            <!-- /.box-body -->
                            <!-- /.box-body -->
                            <!-- /.box-body -->


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <script src="../design/bootstrap/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="../design/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../design/plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../design/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../design/dist/js/demo.js"></script>
    <script src="../plugins/noty-master/js/noty/jquery-ui.js"></script>

    <%--        <script src="js/jquery-1.2.6.min.js"></script>--%>
    <script src="../js/jquery.fullscreenr.js"></script>


    <!-- For Validation -->


    <script src="../validation/js/scrupulous.js"></script>

    <script>
        $(function() {
            $('.validate-form').scrupulous();
            $('.callback-form').scrupulous({
                valid: function() {
                    alert('Valid Callback - Submit the Form');
                    return true;
                },
                invalid: function() {
                    alert('Invalid Callback -  Stop the Form');
                    return false;
                }
            });

            $('#toggle-disabled').on('change',
                function() {
                    if ($(this).is(':checked')) {
                        $('#disabled-input').removeAttr('disabled');
                    } else {
                        $('#disabled-input').attr('disabled', true);
                    }
                });

        });
    </script>


</form>
</body>
</html>