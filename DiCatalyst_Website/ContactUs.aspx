<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->


            <!-- Main content -->
            <section class="content">
            <div class="row">
    <div class="box box-default">
    <div class="box box-header">
        <h4>
            <b>Contact Us</b>
        </h4>
    </div>
    <div class="box-body" style="height: 400px">
        
        <div class="row">
         
            <div class="col-lg-6">
                
               <b>Email us at :  info@dicatalyst.com </b><br/><br/>

                <div class="form-group">
                    <b>Your Email :</b>

                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                
                <div class="form-group">
                    <b>Subject :</b>

                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                
                <div class="form-group">
                    <b>Message :</b>

                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                </div>

                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-info pull-right"/>

            </div>
               
         </div>
        
        

        </div>
        </div>
        </div>
                </section>

       </div>
        </div>
</asp:Content>

