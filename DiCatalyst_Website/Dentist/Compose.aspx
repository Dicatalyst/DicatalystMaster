<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="Dentist_Compose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-12 col-xs-12">
        <div class="box box-primary">


            <div class="box-body" style="display: block;">


                <section class="content-header">
                    <h1>
                        Mailbox
                        <small>13 new messages</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#"><i class="fa fa-dashboard"></i> Home</a>
                        </li>
                        <li class="active">Mailbox</li>
                    </ol>
                </section>


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
                                            <a href="#"><i class="fa fa-envelope-o"></i> Sent</a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-file-text-o"></i> Drafts</a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-filter"></i> Junk <span class="label label-warning pull-right">65</span></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-trash-o"></i> Trash</a>
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
                                <!-- /.box-header -->
                                <div class="box-body no-padding">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li>
                                            <a href="#"><i class="fa fa-circle-o text-red"></i> Important</a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-circle-o text-yellow"></i> Promotions</a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-circle-o text-light-blue"></i> Social</a>
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
                                    <h3 class="box-title">Compose New Message</h3>
                                </div>
                                <!-- /.box-header -->
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
                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary" data-tooltip="Send" OnClick="lnkSend_Click"><i class="fa fa-envelope-o"></i></asp:LinkButton>

                                    </div>
                                    <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
                                </div>
                                <!-- /.box-footer -->
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