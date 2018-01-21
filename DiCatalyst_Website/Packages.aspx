<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .login-box { margin-top: 20px !important; }

        .listmargin li {
            margin-bottom: 10px !important;
            padding: 2px !important;
        }

        .btn { padding: 5px !important; }


        .panel { text-align: center; }

        .panel:hover { box-shadow: 0 1px 5px rgba(0, 0, 0, 0.4), 0 1px 5px rgba(130, 130, 130, 0.35); }

        .panel-body {
            padding: 0px;
            text-align: center;
        }

        .the-price {
            background-color: rgba(220, 220, 220, .17);
            box-shadow: 0 1px 0 #dcdcdc, inset 0 1px 0 #fff;
            margin: 0;
            padding: 20px;
        }

        .the-price h1 {
            line-height: 1em;
            margin: 0;
            padding: 0;
        }

        .subscript { font-size: 25px; }

        /* CSS-only ribbon styles    */

        .cnrflash {
            border-radius: 3px 5px 3px 0;
            height: 100px;
            overflow: hidden; /*Set size and add subtle rounding  		to soften edges*/
            /*Position correctly within container*/
            position: absolute;
            right: 4px;
            top: -9px;
            width: 100px;
            z-index: 1; /*Set overflow to hidden, to mask inner square*/
        }

        .cnrflash-inner {
            -moz-transform: rotate(45deg); /* Firefox */
            -moz-transform-origin: 100% 100%; /* Firefox */
            -ms-transform: rotate(45deg); /* IE 9 */
            -ms-transform-origin: 100% 100%; /* IE 9 */
            -o-transform: rotate(45deg); /* Opera */
            -o-transform-origin: 100% 100%; /* Opera */
            -webkit-transform: rotate(45deg); /* Safari and Chrome */
            -webkit-transform-origin: 100% 100%; /*Purely decorative effects to add texture and stuff*//* Safari and Chrome */
            background-color: #aa0101;
            background-image: linear-gradient(90deg, transparent 50%, rgba(255, 255, 255, .1) 50%), linear-gradient(0deg, transparent 0%, rgba(1, 1, 1, .2) 50%);
            background-size: 4px, auto, auto, auto;
            bottom: 0;
            box-shadow: 0 3px 3px 0 rgba(1, 1, 1, .5), 0 1px 0 0 rgba(1, 1, 1, .5), inset 0 -1px 8px 0 rgba(255, 255, 255, .3), inset 0 -1px 0 0 rgba(255, 255, 255, .2);
            height: 145px;
            /*Set position, make larger then 			container and rotate 45 degrees*/
            position: absolute;
            right: 0;
            width: 145px;
        }

        .cnrflash-inner:before, .cnrflash-inner:after {
            border: 8px solid #800000;
            bottom: -16px;
            /*Use the border triangle trick to make  				it look like the ribbon wraps round it's 				container*/
            content: " ";
            display: block;
            height: 0;
            position: absolute;
            width: 0;
        }

        .cnrflash-inner:before {
            border-bottom-color: transparent;
            border-right-color: transparent;
            left: 1px;
        }

        .cnrflash-inner:after {
            border-bottom-color: transparent;
            border-left-color: transparent;
            right: 0;
        }

        .cnrflash-label {
            bottom: 0;
            color: #fff;
            display: block;
            font-size: 0.95em;
            font-weight: bold;
            left: 0;
            padding-bottom: 5px;
            /*Make the label look nice*/
            position: absolute;
            text-align: center;
            text-shadow: 0 1px 1px rgba(1, 1, 1, .8);
            width: 100%;
        }

    </style>


    <%-- For Validation--%>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-wrapper">
<div class="container">
<!-- Content Header (Page header) -->


<!-- Main content -->
<section class="content">
<div class="row">
<div class="box box-default">
<div class="box-body">
<div class="box">
<div class="box-header bg-navy">
    <h3 class="box-title">Packages</h3>
    <!-- /.box-tools -->
</div>
<!-- /.box-header -->
<div class="box-body">
<p class="login-box-msg">
    Choose your package and proceed with the payment
</p>

<%--    <asp:Panel ID="pnlDoctor" runat="server" Visible="False">
      

    <h3>
        <b>Doctor Packages </b>
    </h3>
    <div class="row">
    <div class="col-lg-10" style="margin-bottom: 20px;">
        <b>Please select the specialization</b>
    <asp:DropDownList ID="ddlSpecialities" CssClass="form-control" runat="server"></asp:DropDownList>
    </div>
       
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Bronze
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $10<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton1" class="btn btn-success" runat="server" OnClick="doctorPackage">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success">
                <div class="cnrflash">
                    <div class="cnrflash-inner">
                        <span class="cnrflash-label">
                            MOST
                            <br/>
                            POPULAR
                        </span>
                    </div>
                </div>
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Silver
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $20<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton3" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Gold
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $35<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton8" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>


    </asp:Panel>
    <asp:Panel ID="pnlClinic" runat="server" Visible="False">
<div class="container">
    <h3>
        <b>Clinic Packages</b>
    </h3>
    <div class="row">
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Bronze
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $10<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton2" class="btn btn-success" runat="server" OnClick="clinicPackage">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-success">
                <div class="cnrflash">
                    <div class="cnrflash-inner">
                        <span class="cnrflash-label">
                            MOST
                            <br/>
                            POPULR
                        </span>
                    </div>
                </div>
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Silver
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $20<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton9" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Gold
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $35<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton10" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</div>
    </asp:Panel>

<asp:Panel ID="pnlHospital" runat="server" Visible="False">
<div class="container">
    <h3>
        <b>Hospital Packages</b>
    </h3>
    <div class="row">
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Bronze
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $10<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton4" class="btn btn-success" runat="server" OnClick="hospitalPackage">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-success">
                <div class="cnrflash">
                    <div class="cnrflash-inner">
                        <span class="cnrflash-label">
                            MOST
                            <br/>
                            POPULR
                        </span>
                    </div>
                </div>
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Silver
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $20<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton11" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Gold
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $35<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton12" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Panel>

<asp:Panel ID="pnlLab" runat="server" Visible="False">
<div class="container">
    <h3>
        <b>Lab Packages</b>
    </h3>
    <div class="row">
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Bronze
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $10<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton5" class="btn btn-success" runat="server" OnClick="labPackage">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-success">
                <div class="cnrflash">
                    <div class="cnrflash-inner">
                        <span class="cnrflash-label">
                            MOST
                            <br/>
                            POPULR
                        </span>
                    </div>
                </div>
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Silver
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $20<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton13" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Gold
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $35<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton14" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Panel>

<asp:Panel ID="pnlPharma" runat="server" Visible="False">
<div class="container">
    <h3>
        <b>Pharma Packages</b>
    </h3>
    <div class="row">
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Bronze
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $10<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton6" class="btn btn-success" runat="server" OnClick="pharmaPackage">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-success">
                <div class="cnrflash">
                    <div class="cnrflash-inner">
                        <span class="cnrflash-label">
                            MOST
                            <br/>
                            POPULR
                        </span>
                    </div>
                </div>
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Silver
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $20<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton15" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Gold
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                            $35<span class="subscript">/mo</span>
                        </h1>
                        <small>1 month FREE trial</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                Lorem Ipsum is a dummy text.
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton16" class="btn btn-success" runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Panel>--%>

<asp:Panel ID="pnlDentist" runat="server">
<div class="container">
    <h3>
        <b>Dentist Packages</b>
    </h3><div class="row">    
    <asp:DataList ID="dlPackages" RepeatLayout="Flow" runat="server">
        <ItemTemplate>
             
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <%#Eval("packageName") %>
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="the-price">
                        <h1>
                         <%#Eval("packageCost") %> <span class="subscript"></span>
                        </h1>
                        <small> <%#Eval("DurationInMonths") %> Months</small>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                <%#Eval("Description") %>
                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr class="active">
                            <td>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-footer">
                    <asp:LinkButton ID="LinkButton18" class="btn btn-success" PostBackUrl='<%# string.Format("~/payment.aspx?id={0}", Eval("id")) %>' runat="server">Sign Up</asp:LinkButton>
                </div>
            </div>
        </div>
    
        </ItemTemplate>
    </asp:DataList></div>
</div>
</asp:Panel>
</div>
</div>
</div>
</div>
</div>

</section>


<!-- For Validation -->


<!-- Social Networking Crap -->


</div>
</div>
</asp:Content>