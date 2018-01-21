<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ImportData.aspx.cs" Inherits="Admin.Admin_ImportData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12 col-xs-12">
     
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Import Data</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row ">
                        <div class="col-lg-2">

                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">

                                <asp:ListItem>Doctor</asp:ListItem>
                                <asp:ListItem>Clinic</asp:ListItem>
                                <asp:ListItem>Hospital</asp:ListItem>
                                <asp:ListItem>Lab</asp:ListItem>
                                <asp:ListItem>Pharmacy</asp:ListItem>

                            </asp:DropDownList>


                        </div>
                        <div class="col-lg-2">

                            <asp:Label ID="Label2" runat="server" Text="Upload File"></asp:Label>

                        </div>
                        <div class="col-lg-1">
                            <input type="file" name="pic" accept=".gif, .png, .jpg,.jpeg,.doc,.pdf,image/*,audio/*,video/*"/>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    

</asp:Content>