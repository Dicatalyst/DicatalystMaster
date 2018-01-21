<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="adminDashboard.aspx.cs" Inherits="Admin_adminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="col-lg-12 col-xs-12">

<div class="box box-primary" style="border-color: #1e282c">
<div class="box-header with-border">
    <h3 class="box-title">Statistics </h3>

</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

<div class="row">
<div class="col-lg-12">

<div class="col-lg-4">
    <div class="box box-widget widget-user-2">
        <!-- Add the bg color to the header using any of the bg-* classes -->
        <div class="widget-user-header bg-yellow">


            <h3 class="widget-user-username">Registered Users</h3>

        </div>


        <div class="col-md-12">
            <div class="box box-solid">

                <!-- /.box-header -->
                <div class="box-body">
                    <div class="box-group" id="accordion">
                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                        <div class="panel box box-primary">
                            <div class="box-header with-border">
                                <h4 class="box-title" style="width: 100%">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="collapsed">
                                        Doctors
                                    </a><span class="pull-right badge bg-blue">890</span>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                <div class="box-body">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a href="#">Today <span class="pull-right badge bg-blue">31</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Week <span class="pull-right badge bg-aqua">5</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Month <span class="pull-right badge bg-green">12</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel box box-danger">
                            <div class="box-header with-border">
                                <h4 class="box-title" style="width: 100%">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">
                                        Clinic
                                    </a><span class="pull-right badge bg-red">895</span>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                <div class="box-body">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a href="#">Today <span class="pull-right badge bg-blue">31</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Week <span class="pull-right badge bg-aqua">10</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Month <span class="pull-right badge bg-green">12</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel box box-success">
                            <div class="box-header with-border">
                                <h4 class="box-title" style="width: 100%">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="false">
                                        Hospital
                                    </a><span class="pull-right badge bg-green">900</span>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                <div class="box-body">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a href="#">Today <span class="pull-right badge bg-blue">31</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Week <span class="pull-right badge bg-aqua">15</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Month <span class="pull-right badge bg-green">12</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="panel box box-primary">
                            <div class="box-header with-border">
                                <h4 class="box-title" style="width: 100%">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="collapsed">
                                        Pharmacy
                                    </a><span class="pull-right badge bg-blue">940</span>
                                </h4>
                            </div>
                            <div id="collapseOne1" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                <div class="box-body">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a href="#">Today <span class="pull-right badge bg-blue">31</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Week <span class="pull-right badge bg-aqua">50</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Month <span class="pull-right badge bg-green">12</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel box box-danger">
                            <div class="box-header with-border">
                                <h4 class="box-title" style="width: 100%">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">
                                        Patient
                                    </a><span class="pull-right badge bg-red">998</span>
                                </h4>
                            </div>
                            <div id="collapseTwo2" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                <div class="box-body">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a href="#">Today <span class="pull-right badge bg-blue">31</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Week <span class="pull-right badge bg-aqua">5</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Month <span class="pull-right badge bg-green">120</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel box box-success">
                            <div class="box-header with-border">
                                <h4 class="box-title" style="width: 100%">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="false">
                                        Lab
                                    </a><span class="pull-right badge bg-green">1169</span>
                                </h4>
                            </div>
                            <div id="collapseThree3" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                <div class="box-body">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a href="#">Today <span class="pull-right badge bg-blue">310</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Week <span class="pull-right badge bg-aqua">5</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Month <span class="pull-right badge bg-green">12</span></a>
                                        </li>
                                        <li>
                                            <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>


    </div>

</div>


<div class="col-lg-4">
    <div class="box box-widget widget-user-2">
        <!-- Add the bg color to the header using any of the bg-* classes -->
        <div class="widget-user-header bg-yellow">


            <h3 class="widget-user-username">Searches</h3>

        </div>
        <div class="box-footer no-padding">
            <ul class="nav nav-stacked">
                <li>
                    <a href="#">Today <span class="pull-right badge bg-blue">31</span></a>
                </li>
                <li>
                    <a href="#">This Week <span class="pull-right badge bg-aqua">5</span></a>
                </li>
                <li>
                    <a href="#">This Month <span class="pull-right badge bg-green">12</span></a>
                </li>
                <li>
                    <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                </li>
            </ul>
        </div>
    </div>
</div>


<div class="col-lg-4">
    <div class="box box-widget widget-user-2">
        <!-- Add the bg color to the header using any of the bg-* classes -->
        <div class="widget-user-header bg-yellow">


            <h3 class="widget-user-username" style="margin-left: 10px">Mostly Searched Keywords</h3>

        </div>
        <div class="box-footer no-padding">
            <ul class="nav nav-stacked">
                <li>
                    <a href="#">Doctors <span class="pull-right badge bg-blue">31</span></a>
                </li>
                <li>
                    <a href="#">Dentist <span class="pull-right badge bg-aqua">5</span></a>
                </li>
                <li>
                    <a href="#">Hospitals <span class="pull-right badge bg-green">12</span></a>
                </li>
                <li>
                    <a href="#">Labs <span class="pull-right badge bg-red">842</span></a>
                </li>

            </ul>
        </div>
    </div>
</div>


</div>

</div>

<div class="row">
    <div class="col-lg-12">

        <div class="col-lg-4">
            <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-yellow">


                    <h6 class="widget-user-username" style="margin-left: 2px">Patient Appointments from Dicatalyst Portal</h6>

                </div>
                <div class="box-footer no-padding">
                    <ul class="nav nav-stacked">
                        <li>
                            <a href="#">Today <span class="pull-right badge bg-blue">31</span></a>
                        </li>
                        <li>
                            <a href="#">This Week <span class="pull-right badge bg-aqua">5</span></a>
                        </li>
                        <li>
                            <a href="#">This Month <span class="pull-right badge bg-green">12</span></a>
                        </li>
                        <li>
                            <a href="#">This Year <span class="pull-right badge bg-red">842</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-yellow">


                    <h6 class="widget-user-username" style="margin-bottom: 15px; margin-top: 20px;">
                        User - Webpage
                        <br/>
                    </h6>

                </div>
                <div class="box-footer no-padding">
                    <ul class="nav nav-stacked">
                        <li>
                            <a href="#">Doctors <span class="pull-right badge bg-blue">31</span></a>
                        </li>
                        <li>
                            <a href="#">Hospitals <span class="pull-right badge bg-aqua">5</span></a>
                        </li>
                        <li>
                            <a href="#">Clinics <span class="pull-right badge bg-green">12</span></a>
                        </li>
                        <li>
                            <a href="#">Labs <span class="pull-right badge bg-red">842</span></a>
                        </li>
                        <li>
                            <a href="#">Parmacy <span class="pull-right badge bg-red">842</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="col-lg-4">
            <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-yellow">


                    <h6 class="widget-user-username" style="margin-left: 0px">Search Doctor/ Hospitals/ Labs/ Pharmacy/ Clinics </h6>

                </div>
                <div class="box-footer no-padding">
                    <br/>
                    <ul class="nav nav-stacked">
                        <li>
                            <div class="form-group">

                                <div class="input-group input-group-sm">
                                    <input class="form-control">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-info btn-flat" style="background-color: #3ae3f5; border-color: #3ae3f5">Find</button>
                                    </span>
                                </div>
                            </div>
                        </li>

                        <li>
                            <a href="#">No. of people enquired <span class="pull-right badge bg-blue">&nbsp&nbsp&nbsp </span></a>
                        </li>
                        <li>
                            <a href="#">No. of people visited his/her Page <span class="pull-right badge bg-aqua">&nbsp&nbsp&nbsp </span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>


    </div>

</div>


</div>
</div>
</div>


</asp:Content>