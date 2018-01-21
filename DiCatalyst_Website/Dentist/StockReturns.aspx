<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="StockReturns.aspx.cs" Inherits="Dentist_StockReturns" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">
    
    
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
                    <h3 class="box-title">Stock Returns </h3>
                    <%--      <button type="button" class="btn btn-info pull-right">Dummy</button>--%>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">
                    <div class="row">

                        <div class="col-lg-4">
                            <div class="form-group">
                              <b>Financial Year</b>

                               <asp:TextBox ID="txtFinancialYear" runat="server" class="form-control"></asp:TextBox>
                                <div class="form-group has-error">
                                    <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Financial Year" ControlToValidate="txtFinancialYear" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            <div class="form-group">
                               <b>Department</b>
                                <asp:TextBox ID="txtDepartment" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Department" ControlToValidate="txtDepartment" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>


                            <div class="form-group">
                                <b>Return Type</b>
                                <asp:TextBox ID="txtReturnType" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                              <b>Purchase Bill No.</b>
                                <asp:TextBox ID="txtPurchaseBillNo" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Purchase Bill No" ControlToValidate="txtPurchaseBillNo" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>


                        </div>

                        <div class="col-lg-4">
                            <div class="form-group">
                               <b>Adjusted Purchase Bill No.</b>
                                <asp:TextBox ID="txtAdjustedPurchaseBillNo" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                               <b> Total Amount</b>
                                <asp:TextBox ID="txtTotalAmount" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Total Amount" ControlToValidate="txtTotalAmount" class="error-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="form-group">
                               <b>Discount Return %</b>
                                <asp:TextBox ID="txtDiscountReturn" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                              <b>Discount Return Amount</b>
                                <asp:TextBox ID="txtDiscountReturnAmount" runat="server" class="form-control"></asp:TextBox>
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Discount Return Amount" ControlToValidate="txtDiscountReturnAmount" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>

                        </div>


                        <div class="col-lg-4">


                            <div class="form-group">
                             <b>Total Tax</b>
                                <asp:TextBox ID="txtTotalTax" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Total Tax" ControlToValidate="txtTotalTax" class="error-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="form-group">
                             <b>Net Amount</b>
                                <asp:TextBox ID="txtNetAmount" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Net Amount" ControlToValidate="txtNetAmount" class="error-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>

                            <div class="form-group">
                              <b>Total Cost Price</b>
                                <asp:TextBox ID="txtTotalCostPrice" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Group41" runat="server" ErrorMessage="Enter Total Cost Price" ControlToValidate="txtTotalCostPrice" class="error-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>

                        </div>


                    </div>


                    <div class="box-footer">
                        <div class="pull-right">
                            <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="Group41" class="btn btn-info" OnClick="Button1_Click"/>
                        </div>
                    </div>

                    <div class="box-body" style="display: block;">
                        <div class="box-body table-responsive ">
                            
                            
                            
                            
                            <table id="example1" class="table table-bordered table-striped ">
                                <thead>
                                <tr>
                                    <th>Financial Year</th>
                                    <th>Department</th>
                                    <th>Return Type</th>
                               
                                    <th>Purchase Bill No</th>
                                    <th>Adjusted Purchase Bill No</th>
                                    <th>Total Amount</th>
                               
                                    <th>Discount Return</th>

                                    <th>Discount Return Amount</th>
                                    
                                    
                                    <th>Total Tax</th>
                                   
                               
                                    <th>Net Amount</th>

                                    <th>Total Cost Price</th>
                                    
                                    <th>Controls</th>
                                </tr>
                                </thead>
                                <tbody>
                    
                        

                                <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                    <ItemTemplate>
                                        <tr>
                                            <td id="financialYear" runat="server"><%#Eval("financialYear") %></td>
                                            <td id="department" runat="server"><%#Eval("department") %></td>
                                            <td id="returnType" runat="server"><%#Eval("returnType") %></td>
                                                
                                            <td id="purchaseBillNo" runat="server"><%#Eval("purchaseBillNo") %></td>
                                            <td id="adjustedPurchaseBillNo" runat="server"><%#Eval("adjustedPurchaseBillNo") %></td>
                                            <td id="totalAmount" runat="server"><%#Eval("totalAmount") %></td>
                                            <td id="discountReturn" runat="server"><%#Eval("discountReturn") %></td>
                                            <td id="discountReturnAmount" runat="server"><%#Eval("discountReturnAmount") %></td>
                                            <td id="totalTax" runat="server"><%#Eval("totalTax") %></td>
                                               
                                            <td id="netAmount" runat="server"><%#Eval("netAmount") %></td>
                                            <td id="totalCostPrice" runat="server"><%#Eval("totalCostPrice") %></td>
                                       
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
                                    <th>Financial Year</th>
                                    <th>Department</th>
                                    <th>Return Type</th>
                               
                                    <th>Purchase Bill No</th>
                                    <th>Adjusted Purchase Bill No</th>
                                    <th>Total Amount</th>
                               
                                    <th>Discount Return</th>

                                    <th>Discount Return Amount</th>
                                    
                                    
                                    <th>Total Tax</th>
                                  
                               
                                    <th>Net Amount</th>

                                    <th>Total Cost Price</th>
                                    
                                    <th>Controls</th>
                                </tr>
                                </tfoot>
                            </table>
                            
                            
                            
                            


                            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">

                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                  

                                    <asp:BoundField DataField="financialYear" HeaderText="Financial Year"/>
                                    <asp:BoundField DataField="department" HeaderText="department"/>
                                    <asp:BoundField DataField="returnType" HeaderText="Return Type"/>
                                    <asp:BoundField DataField="purchaseBillNo" HeaderText="Purchase BillNo"/>
                                    <asp:BoundField DataField="adjustedPurchaseBillNo" HeaderText="Adjusted Purchase BillNo"/>
                                    <asp:BoundField DataField="totalAmount" HeaderText="Total Amount"/>
                                    <asp:BoundField DataField="discountReturn" HeaderText="discount Return"/>
                                    <asp:BoundField DataField="discountReturnAmount" HeaderText="discount Return Amount%"/>
                                    <asp:BoundField DataField="totalTax" HeaderText="total Tax"/>
                                    <asp:BoundField DataField="netAmount" HeaderText="Net Amount"/>
                                      <asp:BoundField DataField="totalCostPrice" HeaderText="Total Cost Price"/>

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