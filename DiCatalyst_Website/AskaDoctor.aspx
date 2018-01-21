<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AskaDoctor.aspx.cs" Inherits="AskaDoctor" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->


            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="box box-default">
                        <div class="box box-header">
                            <h4>
                                <b>Ask a Doctor</b>
                            </h4>
                        </div>
                        <div class="box-body" style="height: 400px">

                            <div class="col-lg-12 border-right">

                                <div class="row">


                                    <div class="col-lg-3">

                                        <div class="form-group">

                                            <b>City</b>
                                            <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control"></asp:DropDownList>
                                            
                                        </div>

                                    </div>

                                    <div class="col-lg-3">

                                        <div class="form-group">

                                            <b>Locality</b>
                                            <asp:DropDownList ID="ddlLocality" runat="server" CssClass="form-control"></asp:DropDownList>

                                          
                                        </div>

                                    </div>
                                    
                                    
                                    <div class="col-lg-3">

                                        <div class="form-group">
                                            
                                            <b>Speciality</b>
                                            <asp:DropDownList ID="ddlSpeciality" runat="server" CssClass="form-control"></asp:DropDownList>

                                            </div>
                                        </div>
                                </div>

                               
                                

                                <div class="row">
                                    <div class="col-lg-9">
                                        
                                        <div class="form-group">
                                            
                                            <b>Doctor Name</b>
                                            <asp:TextBox ID="txtDoctorName" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>

                                        <div class="form-group">

                                            <b>Subject</b>

                                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        
                                        
                                    </div>
                                    
                                </div>

                                    <div class="row">
                                       
                                        <div class="col-lg-9">

                                        <div class="form-group">
                                            <b>Message</b>

                                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                            
                                            </div>

                                    </div>



                                

                                <div class="row">

                                    <div class="col-lg-9">



                                        <b>Disclaimer Notes: I accept the terms and conditions of DiCatalyst and I am bound to enter only relavant message which doesn't voilate the terms of use of DiCatalyst.</b><br />

                                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-info pull-right" />


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
