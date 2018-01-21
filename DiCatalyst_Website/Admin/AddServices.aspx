<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddServices.aspx.cs" Inherits="Admin_AddServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <style>

        .Buttons td {
            padding: 3px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Services</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-12">

                            <div class="col-lg-6">

                                <div class="form-group">


                                    <b>Speciality</b>

                                    <asp:DropDownList ID="ddlspeciality" runat="server" CssClass="form-control"></asp:DropDownList>

                                </div>

                                <div class="form-group">

                                    <b>Service Name</b>

                                    <asp:TextBox ID="txtservicename" runat="server" CssClass="form-control"></asp:TextBox>


                                </div>

                                <asp:Button ID="btnSaveServices" runat="server" Text="Add" CssClass="btn btn-success pull-right" OnClick="btnSaveServices_Click"/>

                            </div>


                        </div>

                    </div>


                </div>
            </div>
        </div>
  
</asp:Content>