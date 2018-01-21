<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="patient_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="content-header">
        <h1>
            &nbsp &nbsp&nbsp&nbsp&nbsp Patient Profile
        </h1>
        <%--<ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">User profile</li>
      </ol>--%>
    </section>


    <section class="content">

        <div class="row">
            <div class="col-md-3">

                <!-- Profile Image -->
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="../design/dist/img/user7-128x128.jpg" alt="User profile picture"/>


                        <h3 class="profile-username text-center">DLCS DIAGNOSTIC CENTRE</h3>

                        <p class="text-muted text-center">Patient</p>


                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->

                <!-- About Me Box -->

                <!-- /.box -->
            </div>
            <!-- /.col -->

            <div class="col-md-9" style="background-color: #ffffff">
                <div class="nav-tabs-custom">
                    <h3> Profile </h3>
                    <div class="tab-content">


                    </div>

                </div>

            </div>


        </div>


    </section>

</asp:Content>