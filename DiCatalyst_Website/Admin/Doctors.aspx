<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Doctors.aspx.cs" Inherits="Admin.Admin_Doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="col-lg-12 col-xs-12">
    
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Doctors</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row ">
                        <div class="col-lg-12">
                            <asp:Label ID="Label1" runat="server" Text="Upload File"></asp:Label>

                            <asp:FileUpload ID="FileUpload1" accept=".gif, .png, .jpg,.jpeg,.doc,.pdf,image/*,audio/*,video/*" runat="server"/>
                        </div>

                    </div>
                </div>
            </div>
        </div>
  
</asp:Content>  