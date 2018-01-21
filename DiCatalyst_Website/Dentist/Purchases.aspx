<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="Purchases.aspx.cs" Inherits="Dentist_Purchases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">


    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    
    <style>
        
        .Buttons td {
            padding: 3px;

        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">

<div class="col-lg-12 col-xs-12">
    
        <div class="box box-default" style="border-color: #ef600c">
            <div class="box-header with-border">
                <h3 class="box-title">Purchases </h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">

                <div class="row">

                    <div class="col-lg-4">
                        <div class="form-group">
                          <b>Purchase Bill No.</b>
                            <asp:TextBox ID="txtPurchaseBillNo" runat="server" class="form-control"></asp:TextBox>
                            <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group32" runat="server" ErrorMessage="Enter Purchase Bill No" ControlToValidate="txtPurchaseBillNo" class="error-message"></asp:RequiredFieldValidator>

                            </div>


                        </div>
                        <div class="form-group">
                          <b>Invoice No.</b>
                            <asp:TextBox ID="txtInvoiceNo" runat="server" class="form-control"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group32" runat="server" ErrorMessage="Enter Invoice No" ControlToValidate="txtInvoiceNo" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>
                        <div class="form-group">
                        <b>Supplier</b>
                            <asp:TextBox ID="txtSupplier" runat="server" class="form-control"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group32" runat="server" ErrorMessage="Enter Supplier" ControlToValidate="txtSupplier" class="error-message"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                    </div>


                    <div class="col-lg-4">
                        <div class="form-group">
                           <b>Invoice Date</b>
                            <asp:TextBox ID="txtInvoiceDate" runat="server" class="form-control"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Group32" runat="server" ErrorMessage="Enter InvoiceDate" ControlToValidate="txtInvoiceDate" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>
                        <div class="form-group">
                         <b>Receiving Date </b>
                            <asp:TextBox ID="txtReceivingDate" runat="server" class="form-control"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Group32" runat="server" ErrorMessage="Enter Receiving Date" ControlToValidate="txtReceivingDate" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>
                        <div class="form-group">
                   <b>Department</b>
                            <asp:TextBox ID="txtDepartment" runat="server" class="form-control"></asp:TextBox>
                        </div>


                    </div>


                    <div class="col-lg-4">


                        <div class="form-group">
                            <b>Financial Year</b>
                            <asp:TextBox ID="txtFinancialYear" runat="server" class="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                        <b>Select:</b>

                            <asp:RadioButtonList ID="radSelectPurchases" runat="server" >
                                <asp:ListItem>Automatic</asp:ListItem>
                                <asp:ListItem>Inclusive Tax</asp:ListItem>
                                <asp:ListItem>Exclusive Tax</asp:ListItem>
                            </asp:RadioButtonList>
                           
                            <div class="form-group">
                            </div>
                        </div>
                        <div class="form-group">
                          <b>Due paid Bill no.</b>
                            <asp:TextBox ID="txtDuePaidBillNo" runat="server" class="form-control"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Group32" ErrorMessage="Enter Due paid Bill No" ControlToValidate="txtDuePaidBillNo" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>


                    </div>


                </div>

            </div>

            <div class="box-footer">
                <div class="pull-right">
                    <asp:Button ID="btnPurchases" runat="server" ValidationGroup="Group32" Text="Save" class="btn btn-info" OnClick="btnPurchases_Click"/>

                  
                </div>

                <div class="box-body" >

                    <div class="table-responsive ">
                        
                        
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Purchase BillNo </th>
                                <th>Invoice No</th>
                                <th>Suppiler </th>
                                <th>Invoice Date</th>
                                <th> Receving Date </th>
                                <th>Department</th>
                                <th>Financial Year</th>
                                <th>Select Purchases</th>
                                <th>Due Paid BillNo</th>
                                
                                
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                <ItemTemplate>
                                    <tr>
                                        <td id="purchaseBillNo" runat="server"><%#Eval("purchaseBillNo") %></td>
                                        <td id="invoiceNo" runat="server"><%#Eval("invoiceNo") %></td>
                                        <td id="suppiler" runat="server"><%#Eval("suppiler") %></td>
                                        <td id="invoiceDate" runat="server"><%#Eval("invoiceDate") %></td>
                                        <td id="recevingDate" runat="server"><%#Eval("recevingDate") %></td>
                                        <td id="department" runat="server"><%#Eval("department") %></td>
                                        <td id="financialYear" runat="server"><%#Eval("financialYear") %></td>
                                        <td id="selectPurchases" runat="server"><%#Eval("selectPurchases") %></td>
                                        <td id="duePaidBillNo" runat="server"><%#Eval("duePaidBillNo") %></td>

                                        <td id="DelID" runat="server" visible="false"><%#Eval("id") %></td>
                                
                                        <td><table class="Buttons">
                                            <tr>
                                       
                                                <td>
                                                    <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning" CommandName="update">
                                                        <i class="fa fa-edit"></i></asp:LinkButton></td>
                                                <td>
                                                    <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger" CommandName="delete">
                                                        <i class="fa fa-trash-o"></asp:LinkButton></td>
                                            </tr>
                                        </table></td>
                                    </tr>
                                </ItemTemplate>

                            </asp:Repeater>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>Purchase BillNo </th>
                                <th>Invoice No</th>
                                <th>Suppiler </th>
                                <th>Invoice Date</th>
                                <th> Receving Date </th>
                                <th>Department</th>
                                <th>Financial Year</th>
                                <th>Select Purchases</th>
                                <th>Due Paid BillNo</th>
                                
                                
                                <th>Controls</th>
                            </tr>
                            </tfoot>
                        </table>
                        
                        
                        
                        
                        
                        
                        


                       <%-- <asp:GridView ID="gdPurchases" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdPurchases_RowCommand">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                              

                                <asp:BoundField DataField="purchaseBillNo" HeaderText="Purchase Bill No."/>
                                <asp:BoundField DataField="invoiceNo" HeaderText="Invoice No."/>
                                <asp:BoundField DataField="suppiler" HeaderText="Suppiler"/>
                                <asp:BoundField DataField="invoiceDate" HeaderText="Invoice Date"/>
                                <asp:BoundField DataField="recevingDate" HeaderText="Receiving Date"/>
                                <asp:BoundField DataField="department" HeaderText="Department"/>
                                <asp:BoundField DataField="financialYear" HeaderText="Financial Year"/>
                                <asp:BoundField DataField="selectPurchases" HeaderText="Select Purchase"/>
                                <asp:BoundField DataField="duePaidBillNo" HeaderText="Due Paid Bill No."/>
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>--%>

                    </div>

                </div>
            </div>

        </div>
    </div>



<!-- For Validation -->


<script src="../validation/js/scrupulous.js"></script>

<script>
    $(function() {
        $('.validate-form').scrupulous();
        $('.callback-form').scrupulous({
            valid: function() {
                alert('Valid Callback - Submit the Form');
                return true;
            },
            invalid: function() {
                alert('Invalid Callback -  Stop the Form');
                return false;
            }
        });

        $('#toggle-disabled').on('change',
            function() {
                if ($(this).is(':checked')) {
                    $('#disabled-input').removeAttr('disabled');
                } else {
                    $('#disabled-input').attr('disabled', true);
                }
            });

    });
</script>
<script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
<link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
<link href="../validation/css/main.css" rel="stylesheet"/>
<link href="../validation/css/scrupulous.css" rel="stylesheet"/>
<link href="../design/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />


<script>

    $(function () {
        $("#example1").DataTable();
    });
</script>

</asp:Content>