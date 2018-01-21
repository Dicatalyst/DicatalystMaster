<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="DuesCollection.aspx.cs" Inherits="Dentist_DuesCollection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">


    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #ff2971">
                <div class="box-header with-border">
                    <h3 class="box-title">Dues Collection</h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Bill No."></asp:Label>

                                <asp:TextBox ID="txtBillNo" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Finanacial Year "></asp:Label>
                                <asp:TextBox ID="txtFinanacialYear" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Registration No."></asp:Label>
                                <asp:TextBox ID="txtRegistrationNo" runat="server" class="form-control"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Branch"></asp:Label>
                                <asp:TextBox ID="txtBranch" runat="server" class="form-control"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-lg-6">

                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="Patient Name "></asp:Label>
                                <asp:TextBox ID="txtPatientName" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Registration Date"></asp:Label>
                                <asp:TextBox ID="txtRegistrationDate" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="Due Amount "></asp:Label>
                                <asp:TextBox ID="txtDueAmount" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="Towards"></asp:Label>
                                <asp:TextBox ID="txtTowards" runat="server" class="form-control"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-lg-6">

                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server" Text="Paid Amount"></asp:Label>
                                <asp:TextBox ID="txtPaidAmount" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server" Text="Pay Mode"></asp:Label>
                                <asp:TextBox ID="txtPayMode" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label11" runat="server" Text="Cheque No."></asp:Label>
                                <asp:TextBox ID="txtChequeNo" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label12" runat="server" Text="Cheque Details"></asp:Label>
                                <asp:TextBox ID="txtChequeDetails" runat="server" class="form-control"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label13" runat="server" Text="Customer Paid "></asp:Label>
                                <asp:TextBox ID="txtCustomerPaid" runat="server" class="form-control"></asp:TextBox>

                            </div>
                        </div>


                        <div class="col-lg-6">

                            <div class="form-group">
                                <asp:Label ID="Label14" runat="server" Text=" Returns to customer"></asp:Label>
                                <asp:TextBox ID="txtReturnstocustomer" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label15" runat="server" Text="Remarks"></asp:Label>
                                <asp:TextBox ID="txtRemarks" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label16" runat="server" Text=" Paid By"></asp:Label>
                                <asp:TextBox ID="txtPaidBy" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label17" runat="server" Text="Discount"></asp:Label>
                                <asp:TextBox ID="txtDiscount" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label18" runat="server" Text="Current Due Amount"></asp:Label>
                                <asp:TextBox ID="txtCurrentDueAmount" runat="server" class="form-control"></asp:TextBox>


                            </div>
                        </div>


                    </div>


                </div>

                <div class="box-footer">
                    <div class="pull-right">
                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-info"/>
                        <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-default"/>


                    </div>

                </div>
            </div>
        </div>
    


</asp:Content>