<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="laboratory_messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
<div class="col-lg-12 col-xs-12">
<div class="box box-primary">
<%--style="border-color: #3c8dbc"--%>

<div class="box-body" style="display: block;">

<section class="content-header">
    <h1>Mailbox
        <small>13 new messages</small>
    </h1>
    <ol class="breadcrumb">
        <li>
            <a href="#"><i class="fa fa-dashboard"></i>Home</a>
        </li>
        <li class="active">Mailbox</li>
    </ol>
</section>

<section class="content">
<div class="row">
<div class="col-md-3">
    <a href="Compose.aspx" class="btn btn-primary btn-block margin-bottom">Compose</a>

    <div class="box box-solid">
        <div class="box-header with-border">
            <h3 class="box-title">Folders</h3>

            <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <div class="box-body no-padding">
            <ul class="nav nav-pills nav-stacked">
                <li class="active">
                    <a href="#">
                        <i class="fa fa-inbox"></i>Inbox
                        <span class="label label-primary pull-right">12</span>
                    </a>
                </li>
                <li>

                    <asp:LinkButton ID="LinkButton1" runat="server"><i class="fa fa-envelope-o"></i>Sent</asp:LinkButton>
                    <%-- <a href="#s"><i class="fa fa-envelope-o"></i> Sent</a>--%>
                </li>
                <li>
                    <a href="#"><i class="fa fa-file-text-o"></i>Drafts</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-filter"></i>Junk <span class="label label-warning pull-right">65</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-trash-o"></i>Trash</a>
                </li>
            </ul>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /. box -->
    <div class="box box-solid">
        <div class="box-header with-border">
            <h3 class="box-title">Labels</h3>

            <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <div class="box-body no-padding">
            <ul class="nav nav-pills nav-stacked">
                <li>
                    <a href="#"><i class="fa fa-circle-o text-red"></i>Important</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-circle-o text-yellow"></i>Promotions</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-circle-o text-light-blue"></i>Social</a>
                </li>
            </ul>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->
</div>
<!-- /.col -->
<div class="col-md-9">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Inbox</h3>

            <div class="box-tools pull-right">
                <div class="has-feedback">
                    <input type="text" class="form-control input-sm" placeholder="Search Mail">
                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                </div>
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
        <div class="box-body no-padding">
            <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                    <i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">

                    <asp:LinkButton ID="lnkDelete" runat="server"  class="btn btn-default btn-sm" data-tooltip="Trash" OnClick="lnkDelete_Click"  ><i class="fa fa-trash-o"></i></asp:LinkButton>
                                            
                                            
                    <button type="button" class="btn btn-default btn-sm">
                        <i class="fa fa-reply"></i>
                    </button>
                    <button type="button" class="btn btn-default btn-sm">
                        <i class="fa fa-share"></i>
                    </button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm">
                    <i class="fa fa-refresh"></i>
                </button>
                <div class="pull-right">
                    1-50/200
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fa fa-chevron-left"></i>
                        </button>
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fa fa-chevron-right"></i>
                        </button>
                    </div>
                    <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
            </div>

            <asp:DataList ID="DataList1" runat="server"  >
   
                <ItemTemplate>
                    <div class="table-responsive mailbox-messages">
                        <table class="table table-hover table-striped">
                            <tbody>
                            <%--<tr>
                        <td>
                            <div class="icheckbox_flat-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                <input type="checkbox" style="opacity: 0; position: absolute;"><ins class="iCheck-helper" style="background: rgb(255, 255, 255); border: 0px; display: block; height: 100%; left: 0%; margin: 0px; opacity: 0; padding: 0px; position: absolute; top: 0%; width: 100%;"></ins>
                            </div>
                        </td>
                        <td class="mailbox-star">
                            <a href="#">
                                <i class="fa fa-star text-yellow"></i>
                            </a>
                        </td>
                        <td class="mailbox-name">
                            <a href="ReadMail.aspx">Alexander Pierce</a>
                        </td>
                        <td class="mailbox-subject">
                            <b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this problem...
                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("subject")%>'></asp:Literal>
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">5 mins ago</td>
                    </tr>--%>


                            <tr>
                                <td>
                                    <div>

                                        <asp:CheckBox ID="chkRows" runat="server"/>
                                        <asp:HiddenField ID="hdfId" value='<%#Eval("id") %>' runat="server" />

                                        <%--<ins class="iCheck-helper" style="background: rgb(255, 255, 255); border: 0px; display: block; height: 100%; left: 0%; margin: 0px; opacity: 0; padding: 0px; position: absolute; top: 0%; width: 100%;"></ins>--%>
                                    </div>
                                </td>
                                <td class="mailbox-star">
                                    <a href="#">
                                        <i class="fa fa-star text-yellow"></i>
                                    </a>
                                </td>
                                <td class="mailbox-name">
                                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("fullName")%>'></asp:Literal>

                                </td>
                                <td class="mailbox-subject">

                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("subject")%>'></asp:Literal>
                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("message")%>'></asp:Literal>
                                </td>

                                <td class="mailbox-attachment">
                                    <i class="fa fa-paperclip"></i>
                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("fileAttachment")%>'></asp:Literal>
                                </td>
                                <td>
                                    <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("dateTime")%>'></asp:Literal>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <!-- /.table -->
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <!-- /.mail-box-messages -->
        </div>
        <!-- /.box-body -->
        <div class="box-footer no-padding">
            <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                    <i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                    <asp:LinkButton ID="lnkTrash" runat="server"  class="btn btn-default btn-sm" data-tooltip="Trash" OnClick="lnkTrash_Click" ><i class="fa fa-trash-o"></i></asp:LinkButton>
                                            
                    <button type="button" class="btn btn-default btn-sm">
                        <i class="fa fa-reply"></i>
                    </button>
                    <button type="button" class="btn btn-default btn-sm">
                        <i class="fa fa-share"></i>
                    </button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm">
                    <i class="fa fa-refresh"></i>
                </button>
                <div class="pull-right">
                    1-50/200
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fa fa-chevron-left"></i>
                        </button>
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fa fa-chevron-right"></i>
                        </button>
                    </div>
                    <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
            </div>
        </div>
    </div>
    <!-- /. box -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</section>


</div>
</div>
</div>



</asp:Content>