<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="StatReport.aspx.cs" Inherits="Dentist_TestReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 800px;
        }

        .table-hover a {
            color: #2a00ff;
            text-decoration: underline;
        }

        .btnpatientid {
            background-color: #00d5d5;
            color: #fff
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-lg-12 col-xs-12">
        <!-- small box -->


        
            <div class="box box-default" style="border-color: #00d5d5">
                <div class="box-header with-border">


                    <h3 class="box-title">Statistics & Reports</h3>


                </div>


                <div class="box-body" style="display: block;">


                    <div class="row">
                        <div class="col-lg-12">


                            <div class="col-lg-6">
                                <div class="box box-widget widget-user-2">
                                    <!-- Add the bg color to the header using any of the bg-* classes -->
                                    <div class="widget-user-header bg-yellow">


                                        <h4 class="widget-user-username"> Patients treated</h4>

                                    </div>
                                    <div class="box-footer no-padding">
                                        <ul class="nav nav-stacked">
                                            <li>
                                                <a href="#">Last Week <span class="pull-right badge bg-blue">31</span></a>
                                            </li>
                                            <li>
                                                <a href="#">In 15days <span class="pull-right badge bg-aqua">5</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Monthly <span class="pull-right badge bg-green">12</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Yearly <span class="pull-right badge bg-red">842</span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-6">
                                <div class="box box-widget widget-user-2">
                                    <!-- Add the bg color to the header using any of the bg-* classes -->
                                    <div class="widget-user-header bg-yellow">


                                        <h3 class="widget-user-username">Treatments done</h3>

                                    </div>
                                    <div class="box-footer no-padding">
                                        <ul class="nav nav-stacked">
                                            <li>
                                                <a href="#">Treatment Name1 <span style="margin: 150px; text-align: center;">Highest</span><span class="pull-right badge bg-blue">31</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Treatment Name2 <span style="margin: 150px; text-align: center;">Least</span><span class="pull-right badge bg-aqua">5</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Treatment Name3 <span style="margin: 150px; text-align: center;">Average</span><span class="pull-right badge bg-green">12</span></a>
                                            </li>


                                        </ul>
                                    </div>
                                </div>
                            </div>


                            <%--<div class="col-lg-4">
                        <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-yellow">
             
             
              <h5 class="widget-user-username" style="margin-left:10px">Patient Taken Appointments from Dicatalyst Portal</h5>
            
            </div>
            <div class="box-footer no-padding">
              <ul class="nav nav-stacked">
                <li><a href="#">Today <span class="pull-right badge bg-blue">31</span></a></li>
                <li><a href="#">Week <span class="pull-right badge bg-aqua">5</span></a></li>
                <li><a href="#">Month <span class="pull-right badge bg-green">12</span></a></li>
                <li><a href="#">Year <span class="pull-right badge bg-red">842</span></a></li>
              </ul>
            </div>
          </div>
                    </div>--%>

                        </div>

                    </div>

                    <br/>
                    <div class="row">
                        <div class="col-lg-12">



                            <%--<div class="col-lg-6">
                        <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-yellow">
             
             
              <h4 class="widget-user-username">How many patients referred from?</h4>
            
            </div>
            <div class="box-footer no-padding">
              <ul class="nav nav-stacked">
                <li><a href="#">Orally <span class="pull-right badge bg-blue">31</span></a></li>
                <li><a href="#">Other Doctors <span class="pull-right badge bg-aqua">5</span></a></li>
                <li><a href="#">Other Hospitals  <span class="pull-right badge bg-green">12</span></a></li>
                <li><a href="#">Dicatalyst WebPortal <span class="pull-right badge bg-red">84</span></a></li>
                  <li><a href="#">Phone <span class="pull-right badge bg-red">42</span></a></li>
              </ul>
            </div>
          </div>
                    </div>--%>


                            <div class="col-lg-6">
                                <div class="box box-widget widget-user-2">
                                    <!-- Add the bg color to the header using any of the bg-* classes -->
                                    <div class="widget-user-header bg-yellow">


                                        <h3 class="widget-user-username">Appointments</h3>

                                    </div>
                                    <div class="box-footer no-padding">
                                        <ul class="nav nav-stacked">
                                            <li>
                                                <a href="#">Offline <span class="pull-right badge bg-blue">31</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Online <span class="pull-right badge bg-aqua">5</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Referred <span class="pull-right badge bg-green">12</span></a>
                                            </li>


                                        </ul>
                                    </div>
                                </div>

                            </div>


                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="col-lg-6">

                                        <h4>
                                            Patients referred : <span>
                                                <asp:Label ID="Label1" runat="server" Text="42"></asp:Label>


                                            </span>
                                        </h4>


                                    </div>
                                </div>


                            </div>


                        </div>

                    </div>


                </div>
            </div>
        </div>
    
</asp:Content>