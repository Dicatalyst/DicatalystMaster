<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    </style>
    <link href="css/tooltip.css" rel="stylesheet" />


    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />


    <link href="validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="validation/css/main.css" rel="stylesheet" />
    <link href="validation/css/scrupulous.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->


            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="box box-default">
            <div class="box-body">

                <div class="col-lg-8 border-right">
                    <br/>

                    <img src="images/loginsideback.jpg"/>
                </div>
                <div class="col-lg-5 login-box">
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
                                 <asp:DropDownList ID="ddlModule" CssClass="form-control" runat="server">
<asp:ListItem Value="-1">Select User Type</asp:ListItem>
                                     <asp:ListItem Value="0">Dentist</asp:ListItem>
                                      <asp:ListItem Value="1">Receptionist</asp:ListItem>
                                      <asp:ListItem Value="2">Patient</asp:ListItem>
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


                            <%--<div class="row">


                                            <div class="row" style="text-align: center">

                                                <ul class="list-inline listmargin">

                               
                                <li><a href="Doctor_RegistrationPage.aspx">

                                    <button type="button" data-tooltip="Doctor" class="btn btn-default " name="btn1">
                                        <span style="border-radius: 50%; width: 100%; height: 100%; border: 3px solid #00a7d0; display: block; background-color: #fff">


                                            <i class="fa fa1 fa-user-md" style="color: #00a7d0; vertical-align: middle; padding: 5px; font-size: 22px;"></i></span>
                                    </button>
                                </a></li>
                                <li><a href="Patient_RegistrationPage.aspx">
                                    <button type="button" data-tooltip="Patient" class="btn btn-default" name="btn2">
                                        <span style="border-radius: 50%; width: 100%; height: 100%; border: 3px solid #ff7701; display: block; background-color: #fff">


                                            <i class="fa fa1 fa-user-plus" style="color: #ff7701; vertical-align: middle; padding: 5px; font-size: 22px;"></i></span>
                                    </button>
                                </a></li>
                                <li><a href="Hospital_RegistrationPage.aspx">
                                    <button type="button" data-tooltip="Hospital" class="btn btn-default" name="btn3">
                                        <span style="border-radius: 50%; width: 100%; height: 100%; border: 3px solid #008d4c; display: block; background-color: #fff">


                                            <i class="fa fa1 fa-building-o" style="color: #008d4c; vertical-align: middle; padding: 5px; font-size: 22px;"></i></span>
                                    </button>
                                </a></li>
                                <li><a href="Clinic_RegistrationPage.aspx">
                                    <button type="button" data-tooltip="Clinic" class="btn btn-default" name="btn4">
                                        <span style="border-radius: 50%; width: 100%; height: 100%; border: 3px solid #30bbbb; display: block; background-color: #fff">


                                            <i class="fa fa1 fa-hospital-o" style="color: #30bbbb; vertical-align: middle; padding: 5px; font-size: 22px;"></i></span>
                                    </button>
                                </a></li>
                                <li><a href="Lab_RegistrationPage.aspx">
                                    <button type="button" data-tooltip="Laboratory" class="btn btn-default" name="btn5">
                                        <span style="border-radius: 50%; width: 100%; height: 100%; border: 3px solid #555299; display: block; background-color: #fff">


                                            <i class="fa fa1 fa-chain-broken" style="color: #555299; vertical-align: middle; padding: 5px; font-size: 22px;"></i></span>
                                    </button>
                                </a></li>
                                <li><a href="Pharma_RegistrationPage.aspx">
                                    <button type="button" data-tooltip="Pharmacy" class="btn btn-default">
                                        <span style="border-radius: 50%; width: 100%; height: 100%; border: 3px solid #ca195a; display: block; background-color: #fff">


                                            <i class="fa fa1  fa-plus-square" style="color: #ca195a; vertical-align: middle; padding: 5px; font-size: 22px;"></i></span>
                                    </button>
                                </a></li>


                                <li><a href="Dentist_RegistrationPage.aspx">
                                    <button type="button" data-tooltip="Dentist" class="btn btn-default">
                                        <span style="border-radius: 50%; width: 100%; height: 100%; border: 3px solid #0d84ff; display: block; background-color: #fff">


                                            <i class="fa fa1  fa-user-md" style="color: #0d84ff; vertical-align: middle; padding: 5px; font-size: 22px;"></i></span>
                                    </button>
                                </a></li>

                            </ul>









                                            </div>

                                        </div>--%>

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
                            <a href="Register.aspx" class="text-center">Register a new membership</a>

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


            <!-- For Validation -->


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
    </div>
</asp:Content>
