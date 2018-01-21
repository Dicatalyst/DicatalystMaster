<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="WebPage.aspx.cs" Inherits="Dentist_WebPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-lg-12 col-xs-12">
<!-- small box -->

<div class="box box-default" style="border-color: #009aff">
<div class="box-header with-border">
    <h3 class="box-title">Webpage </h3>
    <button type="submit" class="btn btn-info pull-right" style="background-color: #009aff; border-color: #009aff">Buy New Template</button>

</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;"">


<div class="row webpageimage">
    <div class="col-md-3">
        <!-- general form elements -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Template 1</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <img src="../images/web-template-4452-lrg.jpg"/>
            </div>
            <!-- /.box-body -->

            <div class="box-footer text-right">
                <asp:LinkButton ID="LinkButton1" class="btn btn-primary" PostBackUrl="~/websiteTemplate/Default.aspx" runat="server">Preview</asp:LinkButton>             
                <a href="WebPageSettings.aspx" class="btn btn-warning">Edit</a>
                <a href="#" class="btn btn-info">Publish</a>


            </div>

        </div>
        <!-- /.box -->

        <!-- /.box -->

    </div>

</div>



</div>
<!-- /.box-body -->
</div>
<!-- /.box -->
</div>

</asp:Content>