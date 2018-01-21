<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="activateUser.aspx.cs" Inherits="activateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .login-box { margin-top: 20px !important; }

        .listmargin li {
            margin-bottom: 10px !important;
            padding: 2px !important;
        }

        .btn { padding: 5px !important; }
    </style>


    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>


    <link href="validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="validation/css/main.css" rel="stylesheet"/>
    <link href="validation/css/scrupulous.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->


            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="box box-default">
                        <div class="box-body">


                            <div class="box">
                                <div class="box-header bg-navy">
                                    <h3 class="box-title">Successfully Activated Your Account</h3>


                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">


                                    <p class="login-box-msg">
                                        <asp:GridView ID="GridView1" runat="server">
                                        </asp:GridView>
                                        Congratulations! Your Account is successfully activated, Click here to Login.
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login.aspx" runat="server">Login</asp:HyperLink>
                                        <br/>
                                        Regards<br/>
                                        DiCatalyst Team
                                    </p>


                                    <!-- /.col -->
                                </div>

                                <!-- /.social-auth-links -->


                                <!-- /.box-body -->
                                <!-- /.box-body -->
                                <!-- /.box-body -->
                                <!-- /.box-body -->
                                <!-- /.box-body -->


                            </div>


                        </div>
                    </div>


                </div>

            </section>


            <!-- For Validation -->


            <script src="validation/js/vendor/jquery-1.10.2.min.js"></script>
            <script src="validation/js/scrupulous.js"></script>

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

            <!-- Social Networking Crap -->


        </div>
    </div>
</asp:Content>