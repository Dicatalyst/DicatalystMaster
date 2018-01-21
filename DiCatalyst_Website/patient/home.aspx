<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="patient_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-lg-12 col-xs-12">
<div class="small-box">
<div class="box box-primary" style="border-color: #00c0ef">
<div class="box-header with-border">
    <h3 class="box-title">Home</h3>


</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">
<div class="box-body table-responsive no-padding">


<div class="col-lg-9 col-xs-9">
    <!-- small box -->


    <div class="small-box">
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Reports to be Delivered Today </h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th style="width: 100px;">Patient Id</th>
                            <th>Patient Name</th>
                            <th style="width: 150px;">Sample Collected On</th>
                            <th>Tests</th>
                            <th style="width: 80px;">Status</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>183</td>
                            <td>John Doe</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-success">Ready</span>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>219</td>
                            <td>Alexander Pierce</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-warning">Pending</span>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>657</td>
                            <td>Bob Doe</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-success">Ready</span>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>175</td>
                            <td>Mike Doe</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-success">Ready</span>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>183</td>
                            <td>John Doe</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-success">Ready</span>
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>219</td>
                            <td>Alexander Pierce</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-warning">Pending</span>
                            </td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>657</td>
                            <td>Bob Doe</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-success">Ready</span>
                            </td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>175</td>
                            <td>Mike Doe</td>
                            <td>11-7-2017</td>

                            <td>CBP, Thyroid</td>
                            <td>
                                <span class="label label-success">Ready</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->


                <!-- /.box-body -->
            </div>
        </div>
        <!-- /.box -->
    </div>
</div>


<!-- ./col -->

<!-- ./col -->
<div class="col-lg-3 col-xs-3">

    <div class="box box-primary">
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
            <ul class="products-list product-list-in-box">
                <li class="item">
                    <div class="product-img">
                        <img src="../design/dist/img/avatar04.png" alt="Product Image"/>
                    </div>
                    <div class="product-info">
                        <a href="javascript:void(0)" class="product-title">Cancer - A Growing Health Concern

                        <span class="product-description">
                            On World Cancer Day 2017, Dr Ramesh Sarin, a senior Oncologist at the Indraprastha Apollo Hospitals discusses cancer as an emerging major health problem in developing countries. Its incidence in developing countries now for the first time in history, matches that in the industrialized countries and the incidence of cancer in general is growing worl...
                        </span>
                    </div>
                </li>
                <!-- /.item -->
                <li class="item">
                    <div class="product-img">
                        <img src="../design/dist/img/avatar3.png" alt="Product Image">
                    </div>
                    <div class="product-info">
                        <a href="javascript:void(0)" class="product-title">New simple method quickly reveals renal injuries

                        <span class="product-description">
                            New simple method quickly reveals renal injuries
                        </span>
                    </div>
                </li>
                <!-- /.item -->
                <li class="item">
                    <div class="product-img">
                        <img src="../design/dist/img/avatar5.png" alt="Product Image">
                    </div>
                    <div class="product-info">
                        <a href="javascript:void(0)" class="product-title">Physician Review</a>
                        <span class="product-description">
                            Medical professionals trust MDLinx to provide them with the latest news. In addition, we detail current developments in research, as well as clinical trials and professional development.
                        </span>
                    </div>
                </li>
                <!-- /.item -->
                <li class="item">
                    <div class="product-img">
                        <img src="../design/dist/img/user1-128x128.jpg" alt="Product Image">
                    </div>
                    <div class="product-info">
                        <a href="javascript:void(0)" class="product-title">HIV/AIDS.

                        <span class="product-description">
                            We here at MDLinx know that time is of the essence in the medical field. That's why we offer you the chance to receive email alerts when hospital administration news breaks.
                        </span>
                    </div>
                </li>


                <!-- /.item -->
            </ul>
        </div>
        <!-- /.box-body -->
        <div class="box-footer text-center">
            <a href="javascript:void(0)" class="uppercase">View All</a>
        </div>
        <!-- /.box-footer -->
    </div>

</div>


</div>
</div>
</div>
</div>
</div>

</asp:Content>