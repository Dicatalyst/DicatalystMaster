<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

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
                                <br />

                                <img src="images/loginsideback.jpg" />
                            </div>
                            <div class="col-lg-5 login-box">
                                <div class="box">
                                    <div class="box-header bg-navy">
                                        <h3 class="box-title">Reset Password</h3>


                                        <!-- /.box-tools -->
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body">


                                        <p class="login-box-msg">
                                        </p>

                                        <asp:Panel ID="pnlEmail" runat="server" Visible="False">
                                            <div class="form-group has-feedback">
                                                <asp:DropDownList ID="ddlModule" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="-1">Select User Type</asp:ListItem>
                                                    <asp:ListItem Value="0">Dentist</asp:ListItem>
                                                    <%--                                                <asp:ListItem Value="1">Receptionist</asp:ListItem>--%>
                                                    <asp:ListItem Value="2">Patient</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="g1" ErrorMessage="Please select User Type" InitialValue="-1" ControlToValidate="ddlModule" class="error-message"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" ValidationGroup="email" runat="server"></asp:TextBox>
                                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="email" ErrorMessage="Enter Email" ControlToValidate="txtEmail" class="error-message"></asp:RequiredFieldValidator>

                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="email" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                                </div>

                                                <asp:TextBox ID="txtCode" Visible="False" ValidationGroup="chkSecurity" CssClass="form-control" Style="font-size: 20px; font-weight: bold" placeholder="Code" runat="server"></asp:TextBox>
                                            </div>

                                        </asp:Panel>

                                        <asp:Panel ID="pnlPassword" runat="server" Visible="False">
                                            <div class="form-group has-feedback">
                                                <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" ValidationGroup="pwd" runat="server" TextMode="Password"></asp:TextBox>
                                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="pwd" ErrorMessage="Enter Password" ControlToValidate="txtPassword" class="error-message"></asp:RequiredFieldValidator>

                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="pwd" runat="server" ErrorMessage="Enter Valid Password Which Contains Atleast 8 Characters, one Digit, one Special Character" ControlToValidate="txtPassword" class="error-message" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>

                                                </div>


                                            </div>


                                            <div class="form-group has-feedback">

                                                <asp:TextBox ID="txtRetypepassword" CssClass="form-control" placeholder="Retype password" ValidationGroup="pwd" runat="server" TextMode="Password"></asp:TextBox>

                                                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="pwd" ErrorMessage="Retype Password" ControlToValidate="txtRetypepassword" class="error-message"></asp:RequiredFieldValidator>

                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="pwd" ErrorMessage="Enter Same Password" ControlToValidate="txtRetypepassword" ControlToCompare="txtPassword" class="error-message" Type="String"></asp:CompareValidator>

                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationGroup="pwd" runat="server" ErrorMessage="Enter Valid Password Which Contains Atleast 8 Characters, one Digit, one Special Character" ControlToValidate="txtRetypepassword" class="error-message" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>

                                                </div>


                                            </div>

                                        </asp:Panel>


                                        <div class="row">
                                            <div class="col-xs-8">
                                                <%-- <div class="checkbox icheck" style="margin-left: 20px;">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                                    </div>--%>
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-xs-4">
                                                <asp:Button ID="btnCheckSecurity" OnClick="btnCheckSecurity_OnClick" Visible="False" CssClass="btn btn-primary btn-block btn-flat" ValidationGroup="chkSecurity" runat="server" Text="Submit" />
                                                <asp:Button ID="btnEmail" runat="server" CssClass="btn btn-primary btn-block btn-flat" ValidationGroup="email" Text="Submit" Visible="False" OnClick="btnEmail_Click" />
                                                <asp:Button ID="btnPassword" runat="server" CssClass="btn btn-primary btn-block btn-flat" ValidationGroup="pwd" Text="Submit" Visible="False" OnClick="btnPassword_Click" />

                                            </div>
                                            <!-- /.col -->
                                        </div>



                                        <asp:Panel ID="pnlFinalMsg" runat="server" Visible="False">
                                            Your password is changed successfully. Please <a href="Login.aspx">click here</a> to login.
                                        </asp:Panel>
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

