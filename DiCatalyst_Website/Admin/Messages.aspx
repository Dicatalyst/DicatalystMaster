<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Admin.Admin_Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<section class="content">
<div class="row">
<div class="col-md-3">
    <button type="button" class="btn btn-primary btn-block" style="background-color: #ff6d6d; border: 1px solid #ff6d6d;" onclick="open_container();">Compose</button>
    <div class="box box-solid">

        <div class="box-body no-padding">
            <ul class="nav nav-pills nav-stacked">
                <li class="active">
                    <a href="#">
                        <i class="fa fa-inbox"></i>Inbox
                        <span class="label label-primary pull-right">12</span>
                    </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-envelope-o"></i>Sent</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-trash-o"></i>Trash</a>
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
<div class="box box-primary" style="border-color: #ff6d6d;">
<div class="box-header with-border">
    <h3 class="box-title">Inbox</h3>

    <div class="box-tools pull-right">
        <div class="has-feedback">
            <asp:TextBox ID="TextBox1" runat="server" class="form-control " placeholder="Search Mail" CssClass="search">


            </asp:TextBox>
            <%--<input type="text" class="form-control input-sm" placeholder="Search Mail">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>--%>
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
            <button type="button" class="btn btn-default btn-sm">
                <i class="fa fa-trash-o"></i>
            </button>
        </div>
        <!-- /.btn-group -->

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
    <div class="table-responsive mailbox-messages">
        <table class="table table-hover table-striped">
            <tbody>
            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td class="mailbox-star">
                    <a href="#">
                        <i class="fa fa-star text-yellow"></i>
                    </a>
                </td>
                <td class="mailbox-name">
                    <button type="button" class="" onclick="open_container1();">Alexander Pierce</button>
                </td>
                <td class="mailbox-subject">
                    <b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this problem...
                </td>
                <td class="mailbox-attachment"></td>
                <td class="mailbox-date">5 mins ago</td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td class="mailbox-star">
                    <a href="#">
                        <i class="fa fa-star-o text-yellow"></i>
                    </a>
                </td>
                <td class="mailbox-name">
                    <button type="button" class="" onclick="open_container1();">Alexander Pierce</button>
                </td>
                <td class="mailbox-subject">
                    <b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this problem...
                </td>
                <td class="mailbox-attachment">
                    <i class="fa fa-paperclip"></i>
                </td>
                <td class="mailbox-date">28 mins ago</td>
            </tr>
            </tbody>
        </table>
        <!-- /.table -->
    </div>
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
            <button type="button" class="btn btn-default btn-sm">
                <i class="fa fa-trash-o"></i>
            </button>

        </div>
        <!-- /.btn-group -->

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

<!-- Modal form-->
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


                <div class="col-md-12">
                    <div class="box box-primary" style="border-color: #ff6d6d;">
                        <div class="box-header with-border">
                            <h3 class="box-title">Compose New Message</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="To:"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Subject:"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Message"></asp:Label>
                                <asp:TextBox ID="txtMessage" runat="server" class="form-control" Style="height: 150px"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <div class="btn btn-default btn-file">
                                    <i class="fa fa-paperclip"></i>Attachment
                                    <asp:FileUpload ID="FileUpload1" runat="server"/>
                                    <%--  <input type="file" name="attachment">--%>
                                </div>
                                <p class="help-block">Max. 32MB</p>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <div class="pull-right">
                                <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" Style="background-color: #ff6d6d; border: 1px solid #ff6d6d;"><i class="fa fa-envelope-o"></i>Send</asp:LinkButton>
                                <%-- <button type="submit" class="btn btn-primary" style="background-color: #ff6d6d; border: 1px solid #ff6d6d;">
                                                        <i class="fa fa-envelope-o"></i>Send</button>--%>
                            </div>
                            <asp:LinkButton ID="LinkButton2" runat="server" type="reset" class="btn btn-default">
                                <b>
                                    <i class="fa fa-times"></i>
                                </b>Cancel
                            </asp:LinkButton>
                            <%-- <button type="reset" class="btn btn-default"><i class="fa fa-times"></i>Cancel</button>--%>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /. box -->
                </div>
                <!-- /.col -->

            </div>
            <div class="modal-footer" id="modal-footerq">
            </div>
        </div>
    </div>
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
            <div class="modal-body" id="Div1">


                <div class="col-md-12">


                    <!-- /.box-header -->
                    <div class="box-body no-padding">
                        <div class="mailbox-read-info">
                            <h3>Message Subject Is Placed Here</h3>
                            <h5>
                                From: help@example.com
                                <span class="mailbox-read-time pull-right">15 Feb. 2016 11:03 PM</span>
                            </h5>
                        </div>
                        <!-- /.mailbox-read-info -->
                        <div class="mailbox-controls with-border text-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default"><i class="fa fa-trash-o"></i>Delete</button>
                                <button type="button" class="btn btn-default"><i class="fa fa-reply"></i>Reply</button>
                                <button type="button" class="btn btn-default"><i class="fa fa-share"></i>Forward</button>
                                <button type="button" class="btn btn-default"><i class="fa fa-print"></i>Print</button>


                            </div>
                            <!-- /.mailbox-controls -->
                            <div class="mailbox-read-message">
                                <p>Hello John,</p>

                                <p>
                                    Keffiyeh blog actually fashion axe vegan, irony biodiesel. Cold-pressed hoodie chillwave put a bird
                                    on it aesthetic, bitters brunch meggings vegan iPhone. Dreamcatcher vegan scenester mlkshk. Ethical
                                    master cleanse Bushwick, occupy Thundercats banjo cliche ennui farm-to-table mlkshk fanny pack
                                    gluten-free. Marfa butcher vegan quinoa, bicycle rights disrupt tofu scenester chillwave 3 wolf moon
                                    asymmetrical taxidermy pour-over. Quinoa tote bag fashion axe, Godard disrupt migas church-key tofu
                                    blog locavore. Thundercats cronut polaroid Neutra tousled, meh food truck selfies narwhal American
                                    Apparel.
                                </p>


                                <p>
                                    Thanks,<br>
                                    Jane
                                </p>
                            </div>
                            <!-- /.mailbox-read-message -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <ul class="mailbox-attachments clearfix">
                                <li>
                                    <div class="mailbox-attachment-info">
                                        <a href="#" class="mailbox-attachment-name"><i class="fa fa-camera"></i>photo1.png</a>
                                        <span class="mailbox-attachment-size">
                                            2.67 MB
                                            <a href="#" class="btn btn-default btn-xs pull-right">
                                                <i class="fa fa-cloud-download"></i>
                                            </a>
                                        </span>
                                    </div>
                                </li>
                                <li>


                                    <div class="mailbox-attachment-info">
                                        <a href="#" class="mailbox-attachment-name"><i class="fa fa-camera"></i>photo2.png</a>
                                        <span class="mailbox-attachment-size">
                                            1.9 MB
                                            <a href="#" class="btn btn-default btn-xs pull-right">
                                                <i class="fa fa-cloud-download"></i>
                                            </a>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /.box-footer -->
                        <div class="box-footer">
                            <div class="pull-right">
                                <button type="button" class="btn btn-default"><i class="fa fa-reply"></i>Reply</button>
                                <button type="button" class="btn btn-default"><i class="fa fa-share"></i>Forward</button>
                            </div>
                            <button type="button" class="btn btn-default"><i class="fa fa-trash-o"></i>Delete</button>
                            <button type="button" class="btn btn-default"><i class="fa fa-print"></i>Print</button>
                        </div>
                        <!-- /.box-footer -->

                        <!-- /. box -->
                    </div>
                    <!-- /.col -->

                </div>
                <div class="modal-footer" id="Div2">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /. box -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</section>
<!-- /.content -->
<script language="javascript">
    function open_container() {

        $('#myModal').modal('show');

    }

    function open_container1() {

        $('#myModal1').modal('show');
    }
</script>
</asp:Content>