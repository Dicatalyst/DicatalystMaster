<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="MedicalHistory.aspx.cs" Inherits="patient_MedicalHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="col-lg-12 col-xs-12">

<div class="box box-primary" style="border-color: #3c8dbc">
<div class="box-header with-border">
    <h3 class="box-title"> Medical History </h3>


</div>

    
<div class="box-body">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="row" style="padding: 20px;">


                <div class="pull-right">
                    <asp:Button ID="btnMedical" runat="server" Text="Save" class="btn btn-success" OnClick="btnMedical_Click"  />
                    
                    <asp:Button ID="btnPrint" runat="server" Text="Preview & Print" class="btn btn-success" />
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
                <div class="row">
                    <div class="col-lg-6">
                        Are you under Physician's care now?
                        <br />
                        <asp:RadioButtonList ID="rdlQue1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue1_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">YES</asp:ListItem>
                            <asp:ListItem Value="1" >NO</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Panel ID="Panel1" runat="server">
                            <div class="form-group">
                                If Yes please Explain
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtQue1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </asp:Panel>
                        Have you ever been hospitalized or had a major operations?
                        <br />
                        <asp:RadioButtonList ID="rdlQue2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue2_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">YES</asp:ListItem>
                            <asp:ListItem Value="1" >NO</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Panel ID="Panel2" runat="server">
                            <div class="form-group">
                                If Yes please Explain
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtQue2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </asp:Panel>
                        Have you ever had a serious head or neck injury ?
                        <br />
                        <asp:RadioButtonList ID="rdlQue3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue3_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">YES</asp:ListItem>
                            <asp:ListItem Value="1"  >NO</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Panel ID="Panel3" runat="server">
                            <div class="form-group">
                                If Yes please Explain
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtQue3" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </asp:Panel>
                        Are you taking any medicines,pills, or drugs ?
                        <br />
                        <asp:RadioButtonList ID="rdlQue4" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue4_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">YES</asp:ListItem>
                            <asp:ListItem Value="1"  >NO</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Panel ID="Panel4" runat="server">
                            <div class="form-group">
                                If Yes please Explain
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtQue4" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>

                        </asp:Panel>
                    </div>
                    <div class="col-lg-6">


                        Do you take, or have you taken ,phen-Fen or Redux ?


                        <br />
                        <asp:RadioButtonList ID="rdlQue5" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue5_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">YES</asp:ListItem>
                            <asp:ListItem Value="1"  >NO</asp:ListItem>
                        </asp:RadioButtonList>


                        <asp:Panel ID="Panel5" runat="server">

                            <div class="form-group">
                                If Yes please Explain


                            </div>

                            <div class="form-group">

                                <asp:TextBox ID="txtQue5" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>

                        </asp:Panel>

                        Are you allergic to food or drugs ?


                        <br />
                        <asp:RadioButtonList ID="rdlQue6" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue6_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">YES</asp:ListItem>
                            <asp:ListItem Value="1" >NO</asp:ListItem>
                        </asp:RadioButtonList>


                        <asp:Panel ID="Panel6" runat="server">

                            <div class="form-group">
                                If Yes please Explain


                            </div>

                            <div class="form-group">

                                <asp:TextBox ID="txtQue6" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>

                        </asp:Panel>


                        Are you on a special diet ?


                        <div class="form-group">
                            <asp:RadioButtonList ID="rdlQue7" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">YES</asp:ListItem>
                                <asp:ListItem Value="1">NO</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>

                        Do you use tobacco ?


                        <div class="form-group">
                            <asp:RadioButtonList ID="rdlQue8" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdlQue8_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">YES</asp:ListItem>
                                <asp:ListItem Value="1" >NO</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                          <asp:Panel ID="Panel7" runat="server">

                            <div class="form-group">
                                If Yes please Explain


                            </div>

                            <div class="form-group">

                                <asp:TextBox ID="txtQue7" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>

                        </asp:Panel>
                        Do you use controlled substances ?
                        <div class="form-group">

                            <asp:RadioButtonList ID="rdlQue9" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">YES</asp:ListItem>
                                <asp:ListItem Value="1" >NO</asp:ListItem>
                            </asp:RadioButtonList>


                        </div>


                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            Comments:
                            <asp:TextBox ID="txtComments" runat="server" CssClass="form-control" />

                        </div>

                    </div>
                </div>

            </div>
       
  

</div>


</div>

</div>
</asp:Content>