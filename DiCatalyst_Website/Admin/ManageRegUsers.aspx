<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ManageRegUsers.aspx.cs" Inherits="Admin.Admin_ManageRegUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12 col-xs-12">
     
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Manage Registered Users</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>S.No.</th>
                                <th>User Name</th>
                                <th>Description</th>


                                <th>Edit</th>
                                <th>Delete</th>

                            </tr>
                            <tr>
                                <td>1</td>
                                <td>User1</td>
                                <td>Description1</td>


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
            </div>
       
    </div>
</asp:Content>