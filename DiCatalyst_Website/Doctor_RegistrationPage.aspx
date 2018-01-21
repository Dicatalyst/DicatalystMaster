<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .login-box { margin-top: 20px !important; }

        .listmargin li {
            margin-bottom: 10px !important;
            padding: 2px !important;
        }

        .btn { padding: 5px !important; }
    </style>
    <link href="css/tooltip.css" rel="stylesheet"/>
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

                            <div class="col-lg-6 border-right">
                                <br/>


                                <div class="box box-widget widget-user">
                                    <!-- Add the bg color to the header using any of the bg-* classes -->
                                    <div class="widget-user-header ">
                                        <img src="images/freelisting.png" style="color: #555299; font-size: 40px; margin-left: 110px; margin-top: -50px; padding: 20px; vertical-align: middle;"/>

                                    </div>

                                    <div class="box-footer">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="description-block">
                                                    <br/><br/><br/>
                                                    <p>
                                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.
                                                    </p>

                                                    <br/><br/>
                                                    <a href="#" target="_blank">
                                                        <span class="description-text">

                                                            <a type="button" href="Doctor_Freelisting.aspx" class="btn" style="background-color: #00a7d0; color: white">Sign-Up For Free Listing </a>
                                                        </span>
                                                    </a>

                                                </div>
                                                <!-- /.description-block -->
                                            </div>

                                        </div>
                                        <!-- /.row -->
                                    </div>
                                </div>


                            </div>
                            <div class="col-lg-6 login-box" style="height: 400px; width: 500px">

                                <div class="box box-widget widget-user">
                                    <!-- Add the bg color to the header using any of the bg-* classes -->
                                    <div class="widget-user-header bg-aqua-active">
                                        <h3 class="widget-user-username text-center"> Doctor Management System</h3>

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
                                                    <br/><br/>
                                                    <p>
                                                        Doctor Management System helps you to manage your activities, appointments, billing efficiently with clear operational visibility.
                                                        Sign up and become visible to millions of patients on the web. They automates the tasks and contributes to the increased returns on investment of hospitals.
                                                    </p>
                                                    <br/><br/>
                                                    <a href="Doctors/Default.aspx" target="_blank">
                                                        <span class="description-text">
                                                            <button type="button" class="btn bg-aqua-active">Sign-Up</button>

                                                        </span>
                                                    </a>
                                                </div>
                                                <!-- /.description-block -->
                                            </div>

                                        </div>
                                        <!-- /.row -->
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

</asp:Content>