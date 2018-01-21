<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

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
            width: 100px;
            padding: 5px !important;
        }

        label {
            width: 100%;
            font-family: "Segoe UI";
            font-size: 14px;
            font-weight: 500;
        }

        hr {
            border-top: 1px solid lightgrey;
        }

        h2 {
            text-transform: uppercase;
            text-align: center;
            margin: 10px;
            font-size: 25px;
            font-weight: 600;
        }

        h3 {
            margin: 10px 0 20px 0;
            text-transform: capitalize;
            font-size: 20px;
            font-weight: 600;
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
                            <h2>Please help us to improve our services, Drop your valueble Feedback....!
                            </h2>
                        </div>
                        <div class="box-body" style="height: 400px">
                            <div class="row col-lg-12">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="Name Required" ForeColor="#FF3300"
                                            ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ErrorMessage="Subject Required" ForeColor="#FF3300"
                                            ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                            ErrorMessage="Email Required" ForeColor="#FF3300"
                                            ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ErrorMessage="Not a vailed email" ControlToValidate="txtEmail"
                                            ForeColor="#FF3300"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Mobile</label>
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ErrorMessage="Mobile Required" ForeColor="#FF3300"
                                            ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row col-lg-12">

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>Comments</label>
                                        <asp:TextBox ID="txtInquiry" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>
                                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>

                            </div>
                            <div class="col-xs-4" style="margin-top:40px;">
                                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="btnSubmit_Click1" />
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>
</asp:Content>
