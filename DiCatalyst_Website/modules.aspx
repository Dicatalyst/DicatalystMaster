<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="modules.aspx.cs" Inherits="modules" %>

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
                    <h3 class="box-title">Dicatalyst - Modules</h3>


                    <!-- /.box-tools -->
                </div>
                <!-- /.box-header -->
                <div class="box-body">


                    <p class="login-box-msg">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                        Please select your desired module to access further.

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
            <div class="box-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="description-block">
                            <p>
                                DiCatalyst - Doctor Management System helps you to manage your activities, appointments, billing efficiently with clear operational visibility.
                                Sign up and become visible to millions of patients on the web.
                            </p>

                            <span class="description-text">

                                <a href="Doctor_Freelisting.aspx" target="_blank">
                                    <button type="button" class="btn bg-aqua-active">Free-Listing</button>
                                </a>
                                <a href="Packages.aspx?modid=d">
                                    <button type="button" class="btn bg-aqua-active">Sign-Up</button>
                                </a>
                            </span>
                        </div>
                        <!-- /.description-block -->
                    </div>

                </div>
                <!-- /.row -->
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
            <div class="box-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="description-block">
                            <p>DiCatalyst - Clinic Management System helps you to manage your clinic right from first appointment to final billing efficiently with clear operational visibility to make it profitable.</p>

                            <span class="description-text">

                                <a href="Clinic_FreeListing.aspx" target="_blank">
                                    <button type="button" class="btn bg-teal-active">Free-Listing</button>
                                </a>

                                <a href="Packages.aspx?modid=c">
                                    <button type="button" class="btn bg-teal-active">Sign-Up</button>
                                </a>


                            </span>
                        </div>
                        <!-- /.description-block -->
                    </div>

                </div>
                <!-- /.row -->
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
            <div class="box-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="description-block">
                            <p>DiCatalyst - Hospital Management System helps you to manage your hospital right from first appointment to final billing efficiently with clear operational visibility to make it profitable.</p>
                            <span class="description-text">
                                <a href="Hospital_FreeListing.aspx" target="_blank">
                                    <button type="button" class="btn bg-green-active">Free-Listing</button>
                                </a>

                                <a href="Packages.aspx?modid=h">
                                    <button type="button" class="btn bg-green-active">Sign-Up</button>
                                </a>


                            </span>
                        </div>
                        <!-- /.description-block -->
                    </div>

                </div>
                <!-- /.row -->
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
            <div class="box-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="description-block">
                            <p>DiCatalyst - Patient Management System helps you to get the latest updates to your health records from your doctor — from lab results to prescriptions.</p>
                            <span class="description-text">


                                <a href="patient/Default.aspx">
                                    <asp:LinkButton ID="lnkPatient" class="btn btn-success" runat="server" OnClick="lnkPatient_Click">Sign Up</asp:LinkButton>
                                    
                                </a>
                            </span>
                        </div>
                        <!-- /.description-block -->
                    </div>

                </div>
                <!-- /.row -->
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
            <div class="box-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="description-block">
                            <p>DiCatalyst - Laboratory Management System helps you to manage your lab workflow right from billing to reporting efficiently and grow the business.</p>
                            <span class="description-text">
                                <a href="Lab_FreeListing.aspx" target="_blank">
                                    <button type="button" class="btn bg-purple-active">Free-Listing</button>
                                </a>

                                <a href="Packages.aspx?modid=l">
                                    <button type="button" class="btn bg-purple-active">Sign-Up</button>
                                </a>

                            </span>

                        </div>
                        <!-- /.description-block -->
                    </div>

                </div>
                <!-- /.row -->
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
            <div class="box-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="description-block">
                            <p>DiCatalyst - Pharmacy Management System helps you to manage your pharmacy efficiently with better turn around time and decreased pilferage.</p>
                            <span class="description-text">
                                <a href="Pharma_FreeListing.aspx" target="_blank">
                                    <button type="button" class="btn bg-maroon-active">Free-Listing</button>
                                </a>

                                <a href="Packages.aspx?modid=p">
                                    <button type="button" class="btn bg-maroon-active">Sign-Up</button>
                                </a>
                            </span>
                        </div>
                        <!-- /.description-block -->
                    </div>

                </div>
                <!-- /.row -->
            </div>
        </div>
        <!-- /.widget-user -->
    </div>
</div>
<%--<div class="row">
    <div class="col-md-4">
        <!-- Widget: user widget style 1 -->
        <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header" style="background-color: #0d84ff !important; color: #fff">
                <h3 class="widget-user-username text-center">DiCatalyst - Dentist</h3>
                <%--<h5 class="widget-user-desc">Founder &amp; CEO</h5>
            </div>
            <div class="widget-user-image">
                <span style="background-color: #fff; border: 3px solid # #0d84ff !important; border-radius: 50%; display: block; height: 100%; width: 100%;">


                    <i class="fa fa1 fa-user-md" style="color: #0d84ff !important; font-size: 40px; padding: 20px; vertical-align: middle;"></i>
                </span>
            </div>
            <div class="box-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="description-block">
                            <p>
                                DiCatalyst - Dentist Management System helps you to manage your activities, appointments, billing efficiently with clear operational visibility.
                                Sign up and become visible to millions of patients on the web.
                            </p>
                            <a href="dentist/Default.aspx" target="_blank">
                            <span class="description-text">
                                <a href="Dentist_FreeListing.aspx" target="_blank">
                                    <button type="button" class="btn" style="background-color: #0d84ff !important; color: #fff">Free-Listing</button>
                                </a>
                                <a href="Packages.aspx?modid=de">
                                    <button type="button" class="btn" style="background-color: #0d84ff !important; color: #fff">Sign-Up</button>
                                </a>

                            </span>
                        </div>
                        <!-- /.description-block -->
                    </div>

                </div>
                <!-- /.row -->
            </div>
        </div>
        <!-- /.widget-user -->
    </div>
</div>--%>
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