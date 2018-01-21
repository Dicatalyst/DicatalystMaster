<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="medicalhistory.aspx.cs" Inherits="Dentist_medicalhistory" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">

    <style type="text/css">
        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 300px;
            height: 140px;
        }

        label {
            font-weight: normal !important;
        }

        .lableFont {
            font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;
            font-size: 12px;
            color: #3e3e3e;
            margin: 0px auto;
        }

        input[type=text] {
            width: 300px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">
    <!-- /.box-header -->
    <div class="box-body lableFont" style="display: block;">
        <div class="row">
            <div class="col-lg-6" style="width: 40%!important">
                <img src="../images/Arrow.png" height="24" width="24" />
                Are you under Physician's care now?</b>
                        <br />
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:RadioButtonList ID="rdlQue1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue1_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">Yes</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Panel ID="Panel1" runat="server">
                                <div class="form-group">
                                    If Yes please Explain</b>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtQue1" runat="server" TextMode="MultiLine" Height="40" Width="300" CssClass="form-control"></asp:TextBox>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>

                <img src="../images/Arrow.png" height="24" width="24" />Have you ever been hospitalized or had a major operations?</b>
                        <br />
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:RadioButtonList ID="rdlQue2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue2_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">Yes</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Panel ID="Panel2" runat="server">
                                <div class="form-group">
                                    If Yes please Explain</b>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtQue2" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                <img src="../images/Arrow.png" height="24" width="24" />Have you ever had a serious head or neck injury ?</b>
                        <br />
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:RadioButtonList ID="rdlQue3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue3_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">Yes</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Panel ID="Panel3" runat="server">
                                <div class="form-group">
                                    If Yes please Explain</b>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtQue3" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                <img src="../images/Arrow.png" height="24" width="24" />Are you taking any medicines,pills, or drugs ?</b>
                        <br />
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:RadioButtonList ID="rdlQue4" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue4_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">Yes</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Panel ID="Panel4" runat="server">
                                <div class="form-group">
                                    If Yes please Explain</b>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtQue4" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>

                                </div>

                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-6" style="width: 40%!important">


                <img src="../images/Arrow.png" height="24" width="24" />Do you take, or have you taken ,phen-Fen or Redux ?</b>


                        <br />
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:RadioButtonList ID="rdlQue5" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue5_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">Yes</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                            </asp:RadioButtonList>


                            <asp:Panel ID="Panel5" runat="server">

                                <div class="form-group">
                                    If Yes please Explain</b>


                                </div>

                                <div class="form-group">

                                    <asp:TextBox ID="txtQue5" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>

                                </div>

                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                <img src="../images/Arrow.png" height="24" width="24" />Are you allergic to food or drugs ?</b>


                        <br />
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:RadioButtonList ID="rdlQue6" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue6_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">Yes</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                            </asp:RadioButtonList>


                            <asp:Panel ID="Panel6" runat="server">

                                <div class="form-group">
                                    If Yes please Explain</b>


                                </div>

                                <div class="form-group">

                                    <asp:TextBox ID="txtQue6" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>

                                </div>

                            </asp:Panel>
                        </td>
                    </tr>
                </table>

                <img src="../images/Arrow.png" height="24" width="24" />Are you on a special diet ?</b>


                        <div class="form-group">
                            <table style="width: 100%">
                                <tr>
                                    <td style="padding-left: 20px">
                                        <asp:RadioButtonList ID="rdlQue7" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0">Yes</asp:ListItem>
                                            <asp:ListItem Value="1">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                        </div>

                <img src="../images/Arrow.png" height="24" width="24" />Do you use tobacco ?</b>

                                    <table style="width: 100%">
                                        <tr>
                                            <td style="padding-left: 20px">
                                                <div class="form-group">
                                                    <asp:RadioButtonList ID="rdlQue8" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue8_SelectedIndexChanged" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">Yes</asp:ListItem>
                                                        <asp:ListItem Value="1">No</asp:ListItem>
                                                    </asp:RadioButtonList>

                                                </div>
                                                <asp:Panel ID="Panel7" runat="server">

                                                    <div class="form-group">
                                                        If Yes please Explain</b>


                                                    </div>

                                                    <div class="form-group">

                                                        <asp:TextBox ID="txtQue7" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>

                                                    </div>

                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                <img src="../images/Arrow.png" height="24" width="24" />Do you use controlled substances ?</b>
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="padding-left: 20px">
                                                <div class="form-group">

                                                    <asp:RadioButtonList ID="rdlQue9" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdlQue9_SelectedIndexChanged">
                                                        <asp:ListItem Value="0">Yes</asp:ListItem>
                                                        <asp:ListItem Value="1">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                    <asp:Panel ID="Panel8" runat="server">
                                                        <!--RAVI-->
                                                        <div class="form-group">
                                                            If Yes please Explain</b>
                                                        </div>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txtQue8" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </asp:Panel>

                                                </div>
                                            </td>
                                        </tr>
                                    </table>


            </div>
            <div class="col-lg-6" style="width: 20%!important">
                <div class="pull-right">
                    <asp:Button ID="btnMedical" runat="server" Text="Save" class="btn btn-success" OnClick="btnMedical_Click" />

                    <asp:Button ID="btnPrint" runat="server" Text="Preview & Print" class="btn btn-success" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    Comments:</b>
                            <asp:TextBox ID="txtComments" runat="server" Height="40" Width="300" TextMode="MultiLine" CssClass="form-control" />

                </div>

            </div>
        </div>

    </div>

    <asp:Button ID="btnShow" runat="server" Text="Show Modal Popup" Visible="false" />

    <!-- ModalPopupExtender -->
    <ajaxToolkit:ModalPopupExtender ID="mp1" runat="server" PopupControlID="PanelMedicalHistory" TargetControlID="btnShow"
        CancelControlID="btnClose" BackgroundCssClass="modalBackground">
    </ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="PanelMedicalHistory" runat="server" CssClass="modalPopup" Width="800px" align="center" Style="display: none; padding: 0px !important;">
        <div style="background-color: #fff; padding: 80px">


            <table style="width: 100%;">
                <tr>
                    <td style="width: 100px">
                        <asp:Image ID="Image1" runat="server" Width="100px" />
                    </td>
                    <td style="padding-left: 20px; text-align: center">
                        <b style="font-size: 30px;">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal></b>
                        <br />
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal><br />
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal><br />
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr />
                    </td>

                </tr>
                <tr>
                    <td colspan="2">dfsfa af adsf adfadsfasdfa af af
                    </td>

                </tr>
                <tr>
                    <td colspan="2">Footer
                    </td>

                </tr>
            </table>

            <asp:Button ID="btnClose" runat="server" Text="Close" />
        </div>
    </asp:Panel>
</asp:Content>
