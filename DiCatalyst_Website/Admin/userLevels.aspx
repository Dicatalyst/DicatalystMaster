<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="userLevels.aspx.cs" Inherits="Admin_userLevels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="col-lg-12 col-xs-12">

        <div class="box box-default" style="border-color: #1e282c;">
            <div class="box-header with-border">
                <h3 class="box-title">Admin Users</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <div class="display_colors">
                        <p class="rooms_selection">
                            Enter Below Details
                        </p>
                        <style>
                            .checkbox, .radio {
                                position: relative;
                                display: block;
                                margin-top: 10px;
                                margin-bottom: 10px;
                                margin-left: 20px !important
                              
                            }
                            .checkbox label, .radio label {
                                min-height: 20px;
                                padding-left: 0px;
                                margin-bottom: 0;
                                font-weight: bold;
                                cursor: pointer;
                            }
                            .checkbox1, .radio {
                                position: relative;
                                display: block;
                            
                                
                              
                            }
                            .checkbox1 label, .radio label {
                                
                                padding-left: 10px;
                                margin-bottom: 0;
                                font-weight: normal;
                                cursor: pointer;
                            }
                        </style>
                        <table width="100%" cellspacing="0" cellpadding="5" border="0" class="tbl_colors">
                            <tr>
                                <td>Title*</td>
                                <td>
                                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Work Areas</td>
                                <td>
                                    <table>
                                        <tr>
                                           
                                            <td style="vertical-align: top">
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" runat="server">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Page">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAllPages" runat="server" Text="Page/Feature" OnCheckedChanged="chkAllPages_CheckedChanged" AutoPostBack="True" CssClass="checkbox"/> 
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:HiddenField Value='<%# Eval("id") %>' ID="hfdid" runat="server"></asp:HiddenField>
                                                                <asp:CheckBox ID="chkSelect" runat="server"  Text='<%#Eval("pageName") %>' CssClass="checkbox1"/>
                                                              
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Read Only">
                                                            <HeaderTemplate>
                                                                
                                                                <asp:CheckBox ID="chkAllRead" runat="server" Text="Read" OnCheckedChanged="chkAllRead_CheckedChanged" AutoPostBack="True" CssClass="checkbox"/> 
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkRead"  runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Write">
                                                            <HeaderTemplate>
                                                                
                                                                <asp:CheckBox ID="chkAllWrite" runat="server" Text="Write" OnCheckedChanged="chkAllWrite_CheckedChanged" AutoPostBack="True" CssClass="checkbox"/> 
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkWrite" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Edit">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAllEdit" runat="server" Text="Edit" OnCheckedChanged="chkAllEdit_CheckedChanged" AutoPostBack="True" CssClass="checkbox"/> 
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkEdit" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Delete">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAllDelete" runat="server" Text="Delete" OnCheckedChanged="chkAllDelete_CheckedChanged" AutoPostBack="True" CssClass="checkbox"/> 
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkDelete" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                                    </ContentTemplate>
                                           </asp:UpdatePanel>
                                            </td>
                                            <td style="vertical-align: top">&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Note:Fields marked with an * are compulsory</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="btnSave" runat="server" CssClass="disp_button" Text="Save Changes" OnClick="btnSave_Click" />
                                    &nbsp;<asp:Button ID="btnUpdate" runat="server" CssClass="disp_button" Text="Update" OnClick="btnUpdate_Click" Visible="False" />
                                    &nbsp;<asp:Button ID="btnCancel" runat="server" CssClass="disp_button" Text="Cancel" OnClick="btnCancel_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />

                    <asp:GridView ID="gdvUsers" runat="server" CssClass="table table-striped table-bordered table-hover" Style="font-size: 13px;" AutoGenerateColumns="False" OnRowDeleting="gdvUsers_RowDeleting" OnRowCommand="gdvUsers_RowCommand" OnRowDataBound="gdvUsers_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="S.No" HeaderStyle-ForeColor="#000000">
                                <ItemTemplate>
                                    <asp:Label ID="lblSno" runat="server"
                                        Text='<%# (gdvUsers.PageSize * gdvUsers.PageIndex) + Container.DisplayIndex + 1 %>' Width="20">
                                    </asp:Label>
                                    <asp:HiddenField Value='<%# Eval("id") %>' ID="hfdid" runat="server"></asp:HiddenField>
                                </ItemTemplate>

                                <HeaderStyle ForeColor="Black"></HeaderStyle>

                                <ItemStyle Width="20px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="userTypeName" HeaderText="User Type Name" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" CommandName="editRow" CommandArgument='<%#Container.DataItemIndex %>' runat="server">Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="../../images/editdelete/delete.png" />
                        </Columns>
                        <EmptyDataTemplate>
                            <b style="color: #444">Users Not Added Yet</b>
                        </EmptyDataTemplate>
                        <EmptyDataRowStyle BackColor="#EEEEEE" ForeColor="White" BorderColor="Window" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>

