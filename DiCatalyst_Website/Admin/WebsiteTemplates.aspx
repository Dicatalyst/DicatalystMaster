<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="WebsiteTemplates.aspx.cs" Inherits="Admin.Admin_WebsiteTemplates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .modal-dialog { width: 50%; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12 col-xs-12">
       
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Website Templates</h3>
                    <button type="button" class="btn btn-info pull-right " onclick="open_container1();">Add </button>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">

                                <asp:Label ID="Label1" runat="server" Text="Select Module"></asp:Label>

                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">

                                    <asp:ListItem>-Select-</asp:ListItem>
                                    <asp:ListItem>Doctor</asp:ListItem>
                                    <asp:ListItem>Hospital</asp:ListItem>
                                    <asp:ListItem>Lab</asp:ListItem>
                                    <asp:ListItem>Pharma</asp:ListItem>

                                </asp:DropDownList>

                            </div>
                        </div>
                    </div>
                    <div class="box-body table-responsive no-padding">

                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>S.No.</th>
                                <th>Name</th>

                                <th>Thumbnail</th>


                                <th>Edit</th>
                                <th>Delete</th>

                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Hospital1</td>

                                <td>
                                    <img src="../images/dummy.png" alt="" style="width: 50px">
                                </td>


                                <td>
                                    <button type="button" class="btn btnedit btn-warning">
                                        <i class="fa fa-edit"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btnedit btn-danger">
                                        <i class="fa fa-trash-o"></i>
                                    </button>
                                </td>
                            </tr>


                            </tbody>
                        </table>
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


                                <div class="col-md-12">
                                    <div class="box box-primary" style="border-color: #1e282c;">
                                        <div class="box-header with-border">
                                            <h3 class="box-title">Add Web Site template </h3>

                                        </div>
                                        <div class="box-body" style="display: block;">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="col-lg-6">
                                                        <div class="form-group">

                                                            <asp:Label ID="Label2" runat="server" Text="Thumbnail"></asp:Label>

                                                            <br/>
                                                            <a href="#">
                                                                <img src="../images/dummy.png" alt="" style="width: 150px">
                                                            </a>
                                                            <input type="file"/>
                                                        </div>
                                                        <div class="form-group">

                                                            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>

                                                            <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>

                                                    <div class="col-lg-6">
                                                        <div class="form-group">

                                                            <asp:Label ID="Label4" runat="server" Text="Upload File"></asp:Label>

                                                            <br/>


                                                            <img src="../images/dummy.png" alt="" style="width: 150px">
                                                            <input type="file"/>
                                                        </div>

                                                        <div class="form-group">

                                                            <asp:Label ID="Label5" runat="server" Text="For"></asp:Label>

                                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">

                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Doctor</asp:ListItem>
                                                                <asp:ListItem>Hospital</asp:ListItem>
                                                                <asp:ListItem>Lab</asp:ListItem>
                                                                <asp:ListItem>Pharma</asp:ListItem>

                                                            </asp:DropDownList>

                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="box-footer">
                                            <div class="pull-right">

                                                <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Save"/>

                                            </div>


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
            </div>
      
    </div>


    <script>
        function open_container1() {

            $('#myModal').modal('show');

        }
    </script>
</asp:Content>