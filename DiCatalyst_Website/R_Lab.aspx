<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="R_Lab.aspx.cs" Inherits="laboratory_R_Lab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->


            <!-- Main content -->
            <section class="content">


                <div class="register-box">
                    <div class="register-logo">
                        <b>DiCatalyst</b>
                    </div>

                    <div class="register-box-body" style="background-color: white; margin-right: 200px; width: 450px;">
                        <p class="login-box-msg">Register a Lab</p>

                        <form action="#" method="post">
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Lab name" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Lab Founder" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Lab Founded in Year" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Lab *Speciality" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="Timings" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <%--<div class="form-group has-feedback">

        <input class="form-control" placeholder="Board Approval Staus" type="text" />
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>--%>
                            <%-- <div class="form-group has-feedback">

        <input class="form-control" placeholder="Std. ID Number" type="text" />
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>--%>
                            <%--<div class="form-group has-feedback">

        <input class="form-control" placeholder="Board Name" type="text" />
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
        <div class="form-group has-feedback">

        <input class="form-control" placeholder="Board Affiliation" type="text" />
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>--%>

                            <div class="form-group has-feedback">
                                <label>Address</label>
                                <textarea class="form-control" placeholder="Address" type="text" ></textarea>
                                <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>

                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="City" type="text"/>
                                <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="State" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="Country" type="text"/>
                                <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="ZipCode" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <label>Contact No.</label>
                                <input class="form-control" placeholder="Contact Number1" type="text"/>
                                <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="Contact Number2" type="text"/>
                                <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Email" type="email"/>
                                <%-- <span class="glyphicon glyphicon-envelope form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="Services" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>

                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="Tests/Packages List" type="text"/>
                                <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">

                                <input class="form-control" placeholder="Facilities Available" type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <label>Other Branches</label>
                                <input class="form-control" placeholder=" Branch1" type="text"/>
                                <input class="form-control" placeholder=" Branch2" type="text"/>
                                <input class="form-control" placeholder=" Branch3 " type="text"/>
                                <%--<span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Specialties & Research" type="text"/>
                                <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Email" type="email"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Password" type="password"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input class="form-control" placeholder="Retype password" type="password"/>
                                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                            </div>
                            <div class="row">
                                <div class="col-xs-8">
                                    <div class="checkbox icheck">
                                        <label>
                                            <div class="icheckbox_square-blue" style="position: relative;" aria-checked="false" aria-disabled="false">
                                                <input style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; display: block; height: 140%; left: -20%; margin: 0px; opacity: 0; padding: 0px; position: absolute; top: -20%; width: 140%;" type="checkbox"><ins class="iCheck-helper" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; display: block; height: 140%; left: -20%; margin: 0px; opacity: 0; padding: 0px; position: absolute; top: -20%; width: 140%;"></ins>
                                            </div> I agree to the <a href="#">terms</a>
                                        </label>
                                    </div>
                                </div>
                                <!-- /.col -->
                                <div class="col-xs-4">
                                    <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
                                </div>
                                <!-- /.col -->
                            </div>
                        </form>


                    </div>
                    <!-- /.form-box -->
                </div>

            </section>
        </div>
    </div>

</asp:Content>