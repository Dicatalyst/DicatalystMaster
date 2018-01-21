<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Admin.Admin_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Profile</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">


                    <div class="row">
                        <div class="col-lg-3">
                            <img src="../images/dummy.png" style="margin-left: 30px; width: 70%"/>
                        </div>

                        <div class="col-lg-9">

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>

                                        </div>
                                    </div>

                                    <div class="col-lg-8">
                                        <div class="form-group">

                                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>


                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="col-lg-4">
                                        <div class="form-group">

                                            <asp:Label ID="Label2" runat="server" Text="Designation :"></asp:Label>

                                        </div>
                                    </div>

                                    <div class="col-lg-8">
                                        <div class="form-group">

                                            <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    

</asp:Content>