<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Dentist_Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 50%;
        }
        
    </style>
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
                    <a href="Messages.aspx">
                        <i class="fa fa-inbox"></i>Inbox
                        <span class="label label-primary pull-right">12</span>
                    </a>
                </li>
                <li>

                                            
                    <a href="sent.aspx"><i class="fa fa-envelope-o"></i> Sent</a>
                </li>
                <li>
                    <a href="trash.aspx"><i class="fa fa-trash-o"></i>Trash</a>
                </li>
                                        
            </ul>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /. box -->
                            
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
                                            
                                            
                    <button type="button" class="btn btn-default btn-sm" onclick="open_container();">
                        <i class="fa fa-reply"></i>
                                                
                    </button>

                    <%-- <asp:LinkButton ID="lnkShare" runat="server" CssClass="btn btn-default btn-sm" OnClick="open_container1();"><i class="fa fa-share"></i></asp:LinkButton>--%>
                    <button type="button" class="btn btn-default btn-sm" onclick="open_container1();">
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

                                    <asp:Literal runat="server" Text='<%# Eval("subject")%>'></asp:Literal>
                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("message")%>'></asp:Literal>
                                </td>

                                <td class="mailbox-attachment">
                                    <i class="fa fa-paperclip"></i>
                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("fileAttachment")%>'></asp:Literal>
                                </td>
                                <td>
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("dateTime")%>'></asp:Literal>
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

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal-bodyku">
 
                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-12 col-xs-12">
                            <div class="box box-primary">


                                <div class="box-body" style="display: block;">

                                    <section class="content">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="Messages.aspx" class="btn btn-primary btn-block margin-bottom">Back to Inbox</a>

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
                                                            <li>
                                                                <a href="Messages.aspx">
                                                                    <i class="fa fa-inbox"></i> Inbox
                                                                    <span class="label label-primary pull-right">12</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="sent.aspx"><i class="fa fa-envelope-o"></i> Sent</a>
                                                            </li>
                                            
                                                            <li>
                                                                <a href="trash.aspx"><i class="fa fa-trash-o"></i> Trash</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.box-body -->
                                                </div>
                                                <!-- /. box -->
                                
                                                <!-- /.box -->
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-md-9">
                             
                                                <div class="box-body">
                                                    <div class="form-group">

                                                        <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" placeholder="To:"></asp:TextBox>
                                            
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject:"></asp:TextBox>
                                           
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Message"></asp:TextBox>
                                           

                 
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="btn btn-default btn-file">
                                                            <i class="fa fa-paperclip"></i> Attachment
                                                            <asp:FileUpload ID="fileAttachment" runat="server" />
                                               
                                                        </div>
                                                        <p class="help-block">Max. 32MB</p>
                                                    </div>

                                                    <%--  <asp:GridView ID="gdMessage" runat="server" CssClass=" table table-striped table-bordered table-hover" >

                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server"  ID="lblId" Text='<%#Eval("id") %>' ></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                   <%-- <asp:BoundField runat="server" DataField=" fromUserId" HeaderText="fromUserId" />--%>
                                                    <%--     <asp:BoundField runat="server" DataField="subject" HeaderText="subject" />
                     <asp:BoundField runat="server" DataField=" message" HeaderText="message" />
                    <asp:BoundField runat="server" DataField="fileAttachment" HeaderText="fileAttachment" />
                      <asp:BoundField runat="server" DataField=" dateTime" HeaderText="dateTime" />
                   
                </Columns>

          
               </asp:GridView>--%>
                                                </div>
                                                <!-- /.box-body -->
                                                <div class="box-footer">
                                                    <div class="pull-right">

                                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-default" data-tooltip="Draft"><i class="fa fa-pencil"></i></asp:LinkButton>
                                                        <asp:LinkButton ID="lnkSendReply" runat="server" CssClass="btn btn-primary" data-tooltip="Send" OnClick="lnkSendReply_Click" ><i class="fa fa-envelope-o"></i></asp:LinkButton>

                                                    </div>
                                                    <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
                                                </div>
                                                <!-- /.box-footer -->
                                            </div>
                                            <!-- /. box -->
                       
                                        </div>
                                        <!-- /.row -->
                                    </section>


                                </div>
                            </div>
                        </div>


                    </div>

                </div>

            </div>



        </div>

    </div>
    <!-- /. box -->
</div>




<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="H1"></h4>
            </div>
            <div class="modal-body" id="Div2">
 
                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-12 col-xs-12">
                            <div class="box box-primary">


                                <div class="box-body" style="display: block;">

                                    <section class="content">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="Messages.aspx" class="btn btn-primary btn-block margin-bottom">Back to Inbox</a>

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
                                                            <li>
                                                                <a href="Messages.aspx">
                                                                    <i class="fa fa-inbox"></i> Inbox
                                                                    <span class="label label-primary pull-right">12</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="sent.aspx"><i class="fa fa-envelope-o"></i> Sent</a>
                                                            </li>
                                            
                                                            <li>
                                                                <a href="trash.aspx"><i class="fa fa-trash-o"></i> Trash</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.box-body -->
                                                </div>
                                                <!-- /. box -->
                                
                                                <!-- /.box -->
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-md-9">
                             
                                                <div class="box-body">
                                                    <asp:DataList ID="DataList2" runat="server"><ItemTemplate >
                                                        <div class="form-group">
                                                            <%--  <asp:CheckBox ID="chkRows1" runat="server" />--%>
                                                            <asp:HiddenField ID="hdfId" value='<%#Eval("id") %>' runat="server" />
                                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="To:"></asp:TextBox>
                                            
                                                        </div>
                                                        <div class="form-group">

                                                            <asp:Literal ID="ltlSubject" runat="server" Text='<%#Eval("subject") %>'></asp:Literal>
                                            
                                            
                                           
                                                        </div>
                                                        <div class="form-group">
                                                            <asp:Literal ID="Literal6" runat="server" Text='<%#Eval("message") %>'></asp:Literal>
                                           
                                           

                 
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="btn btn-default btn-file">
                                                                <i class="fa fa-paperclip"></i> Attachment
                                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                               
                                                            </div>
                                                            <p class="help-block">Max. 32MB</p>
                                                        </div>
                                                    </ItemTemplate ></asp:DataList>
                                                    <%--  <asp:GridView ID="gdMessage" runat="server" CssClass=" table table-striped table-bordered table-hover" >

                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server"  ID="lblId" Text='<%#Eval("id") %>' ></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                   <%-- <asp:BoundField runat="server" DataField=" fromUserId" HeaderText="fromUserId" />--%>
                                                    <%--     <asp:BoundField runat="server" DataField="subject" HeaderText="subject" />
                     <asp:BoundField runat="server" DataField=" message" HeaderText="message" />
                    <asp:BoundField runat="server" DataField="fileAttachment" HeaderText="fileAttachment" />
                      <asp:BoundField runat="server" DataField=" dateTime" HeaderText="dateTime" />
                   
                </Columns>

          
               </asp:GridView>--%>
                                                </div>
                                                <!-- /.box-body -->
                                                <div class="box-footer">
                                                    <div class="pull-right">

                                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-default" data-tooltip="Draft"><i class="fa fa-pencil"></i></asp:LinkButton>
                                                        <asp:LinkButton ID="lnkForward" runat="server" CssClass="btn btn-primary" data-tooltip="Send"   ><i class="fa fa-envelope-o"></i></asp:LinkButton>

                                                    </div>
                                                    <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
                                                </div>
                                                <!-- /.box-footer -->
                                            </div>
                                            <!-- /. box -->
                       
                                        </div>
                                        <!-- /.row -->
                                    </section>


                                </div>
                            </div>
                        </div>


                    </div>

                </div>

            </div>



        </div>

    </div>
    <!-- /. box -->
</div>

<script language="javascript">
    function open_container() {

        $('#myModal').modal('show');

    }
    function open_container1() {

        $('#myModal1').modal('show');

    }
</script>



</asp:Content>