<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Dentist_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-9 col-xs-9">
        <%--<h1 style="margin-top: -5px;">
                <a href="../Feedback.aspx"><i class="fa fa-circle-o"></i> Feedback </a>
            </h1>--%>
        <h4>
            <b>Dashboard</b>
        </h4>
        <div class="row">
            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-aqua">
                    <span class="info-box-icon">
                        <i class="fa fa-user-plus"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Patients </span>
                        <span class="info-box-number">41,410</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 70%"></div>
                        </div>
                        <span class="progress-description">70% Increase in 30 Days
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-green">
                    <span class="info-box-icon">
                        <i class="fa fa-calendar-check-o"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Offline Appointments</span>
                        <span class="info-box-number">41,410</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 70%"></div>
                        </div>
                        <span class="progress-description">70% Increase in 30 Days
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-yellow">
                    <span class="info-box-icon">
                        <i class="fa fa-calendar-check-o"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Online Appointments</span>
                        <span class="info-box-number">41,410</span>
                        <div class="progress">
                            <div class="progress-bar" style="width: 70%"></div>
                        </div>
                        <span class="progress-description">70% Increase in 30 Days
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->

            <!-- /.col -->
        </div>


        <div class="row">

            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-red">
                    <span class="info-box-icon">
                        <i class="fa fa-users"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Reffered Patients</span>
                        <span class="info-box-number">41,410</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 70%"></div>
                        </div>
                        <span class="progress-description">70% Increase in 30 Days
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>


            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-teal">
                    <span class="info-box-icon">
                        <i class="fa fa-group"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Staff</span>
                        <span class="info-box-number">41,410</span>

                        <%-- <div class="progress">
                <div class="progress-bar" style="width: 70%"></div>
              </div>--%>
                        <span class="progress-description">Available
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>

            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-maroon-gradient">
                    <span class="info-box-icon">
                        <i class="fa fa-plus-circle"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Vaccination Management</span>
                        <span class="info-box-number">41,410</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 70%"></div>
                        </div>
                        <span class="progress-description">Automated Reminders & Alert for Vaccination pending Patients
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>


        </div>


        <div class="row">

            <!-- /.col -->

            <!-- /.col -->
            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-light-blue">
                    <span class="info-box-icon">
                        <i class="fa fa-line-chart"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Inventory</span>
                        <span class="info-box-number">41,410</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 70%"></div>
                        </div>
                        <span class="progress-description">Out of Stock
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>


            <!-- /.col -->
            <div class="col-md-4 col-sm-8 col-xs-12">
                <div class="info-box bg-orange">
                    <span class="info-box-icon">
                        <i class="fa fa-money"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Expenses</span>
                        <span class="info-box-number">41,410</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 70%"></div>
                        </div>
                        <span class="progress-description">Due
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->


        </div>


        <div class="row" style="display: none;">

            <div class="col-lg-12">

                <div class="col-lg-6">

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Out Of Stock Details</h3>

                            <div class="box-tools">
                                <ul class="pagination pagination-sm no-margin pull-right">
                                    <li>
                                        <a href="#">«</a>
                                    </li>
                                    <li>
                                        <a href="#">1</a>
                                    </li>
                                    <li>
                                        <a href="#">2</a>
                                    </li>
                                    <li>
                                        <a href="#">3</a>
                                    </li>
                                    <li>
                                        <a href="#">»</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body no-padding">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th style="width: 10px">Sno</th>
                                        <th>Stock </th>


                                    </tr>
                                    <tr>
                                        <td>1.</td>
                                        <td>Stock1</td>

                                    </tr>
                                    <tr>
                                        <td>2.</td>
                                        <td>Stock2</td>


                                    </tr>


                                </tbody>

                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>

                </div>
                <div class="col-lg-6">

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Due Expenses</h3>

                            <div class="box-tools">
                                <ul class="pagination pagination-sm no-margin pull-right">
                                    <li>
                                        <a href="#">«</a>
                                    </li>
                                    <li>
                                        <a href="#">1</a>
                                    </li>
                                    <li>
                                        <a href="#">2</a>
                                    </li>
                                    <li>
                                        <a href="#">3</a>
                                    </li>
                                    <li>
                                        <a href="#">»</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body no-padding">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th style="width: 10px">sno</th>
                                        <th>Due Name</th>
                                        <th>Due Amount</th>

                                    </tr>
                                    <tr>
                                        <td>1.</td>

                                        <td>Patient Due</td>
                                        <td>14003</td>

                                    </tr>
                                    <tr>
                                        <td>2.</td>
                                        <td>Inventory Due</td>
                                        <td>15000</td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>


                </div>


            </div>

        </div>


    </div>

    <div class="col-lg-3 col-xs-3">

        <div class="box box-primary" style="border-color: #00a7d0">
            <div class="box-header with-border">
                <h3 class="box-title">News & Events</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                        <i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove">
                        <i class="fa fa-times"></i>
                    </button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">




                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <ul class="products-list product-list-in-box">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li class="item">
                            <div class="product-img">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flPicture") %>' />

                            </div>
                            <div class="product-info">
                                <a href="javascript:void(0)" class="product-title"><%# Eval("title") %>
                                    <span class="product-description">
                                        <%# Eval("description") %>
                                    </span>
                            </div>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>












                <!-- /.item -->

            </div>
            <!-- /.box-body -->
            <div class="box-footer text-center">
                <asp:LinkButton ID="LinkButton1" PostBackUrl="~/NewsDetails.aspx" runat="server">View All News</asp:LinkButton>
            </div>
            <!-- /.box-footer -->
        </div>

    </div>

    <!-- .cd-schedule -->


    <!-- ./col -->


</asp:Content>
