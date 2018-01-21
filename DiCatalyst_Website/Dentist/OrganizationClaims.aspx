<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="OrganizationClaims.aspx.cs" Inherits="Dentist_Organization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">


    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #ff2971">
                <div class="box-header with-border">
                    <h3 class="box-title"> Organization Claims</h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Bill No."></asp:Label>
                                <asp:TextBox ID="txtBillNo" runat="server" class="form-control"></asp:TextBox >

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Organization"></asp:Label>
                                <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">

                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem Text="-Select Organization- " Value="0"></asp:ListItem>
                                    <asp:ListItem Text=" DLCS Diagnostic Centre" Value="0"></asp:ListItem>
                                </asp:DropDownList>

                            </div>


                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">

                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem Text="Status 1" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Status 2" Value="0"></asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Field Value "></asp:Label>
                                <asp:TextBox ID="txtFieldValue" runat="server" class="form-control"></asp:TextBox >
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Total Amount"></asp:Label>

                                    <asp:TextBox ID="txtTotalAmount" runat="server" class="form-control"></asp:TextBox >
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" Text="No. of Patients"></asp:Label>
                                    <asp:TextBox ID="txtNoofPatients" runat="server" class="form-control"></asp:TextBox >
                                </div>

                            </div>

                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Paid Amount"></asp:Label>
                                    <asp:TextBox ID="txtPaidAmount" runat="server" class="form-control"></asp:TextBox >
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Post Discount"></asp:Label>
                                    <asp:TextBox ID="txtPostDiscount" runat="server" class="form-control"></asp:TextBox >
                                </div>


                            </div>

                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" Text="Balance"></asp:Label>
                                    <asp:TextBox ID="txtBalance" runat="server" class="form-control"></asp:TextBox >
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label10" runat="server" Text="Pay Mode"></asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem Text="CASH" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Card" Value="0"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>

                            </div>
                        </div>


                    </div>


                    <div class="box-body" style="display: block;">
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tbody>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Registration No.</th>
                                    <th>Registration Date</th>
                                    <th>Patient Name</th>
                                    <th>Age</th>
                                    <th>Address</th>
                                    <th> Category</th>
                                    <th> No. of Tests </th>
                                    <th>Due Amount</th>
                                    <th>Paid Amount</th>
                                    <th>Post Discount</th>
                                    <th>MBill No.</th>
                                    <th>Claimed</th>


                                    <th>Edit</th>
                                    <th>Delete</th>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>10076</td>
                                    <td>1-1-2013</td>
                                    <td>Sunita</td>
                                    <td>23</td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>65</td>
                                    <td>65</td>
                                    <td>0</td>
                                    <td>12467</td>
                                    <td>
                                        <input type="checkbox">
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


                </div>
            </div>
        </div>
    

</asp:Content>