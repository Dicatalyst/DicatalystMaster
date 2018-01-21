<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="FinancialYearSetUp.aspx.cs" Inherits="Dentist_FinancialYearSetUp" %>

<script runat="server">

    protected void lnkDelete_Click(object sender, EventArgs e)
    {

    }
</script>


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
        <!-- small box -->


        
            <div class="box box-default" style="border-color: #ff2971">
                <div class="box-header with-border">
                    <h3 class="box-title">Financial year setup</h3>

                </div>
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group">
                                <b>Financial Year</b>
                                <asp:TextBox ID="txtFinancialYear" runat="server" class="form-control"></asp:TextBox>
                                  <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Group23" ErrorMessage="Enter Financial Year" ControlToValidate="txtFinancialYear" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            <div class="form-group">
                               <b>Patient Registration S.No. </b>
                                <asp:TextBox ID="txtPatientRegistrationSNo" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Group23" ErrorMessage="Enter Patient Registration No" ControlToValidate="txtPatientRegistrationSNo" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            <div class="form-group">
                               <b>Expiry Bill No.</b>
                                <asp:TextBox ID="txtExpiryBillNo" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group23" ErrorMessage="Enter Expiry Bill No" ControlToValidate="txtExpiryBillNo" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>


                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <b>Purchase Bill No.</b>
                                <asp:TextBox ID="txtPurchaseBillNo" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                            <b>Purchase Returns Bill No.</b>
                                <asp:TextBox ID="txtPurchaseReturnsBillNo" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Sample Coll Bill No.</b>
                                <asp:TextBox ID="txtSampleCollBillNo" runat="server" class="form-control"></asp:TextBox>

                            </div>

                        </div>


                    </div>


                </div>


                <div class="box-footer">
                    <div class="pull-right">
                        <asp:Button ID="btnFinancialYearSetup" runat="server" Text="Save" ValidationGroup="Group23" class="btn btn-info" OnClick="btnFinancialYearSetup_Click"/>

                        <%--<button type="reset" class="btn btn-default" >Cancel</button>--%>
                    </div>

                </div>


                
                    <div class="table-responsive ">
                        
                        
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Financial Year</th>
                                <th>Patient Registration SNo</th>
                                <th>Expiry Bill No</th>
                                <th>Purchase Bill No</th>
                                <th>Purchase Returns Bill No</th>
                                <th>Sample Coll Bill No</th>
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                <ItemTemplate>
                                    <tr>
                                        <td id="financialYear" runat="server"><%#Eval("financialYear") %></td>
                                        <td id="patientRegistrationSNo" runat="server"><%#Eval("patientRegistrationSNo") %></td>
                                        <td id="expiryBillNo" runat="server"><%#Eval("expiryBillNo") %></td>
                                        <td id="purchaseBillNo" runat="server"><%#Eval("purchaseBillNo") %></td>
                                        <td id="purchaseReturnsBillNo" runat="server"><%#Eval("purchaseReturnsBillNo") %></td>
                                        <td id="sampleCollBillNo" runat="server"><%#Eval("sampleCollBillNo") %></td>
                                       
                                        <td id="DelID" runat="server" visible="false"><%#Eval("id") %></td>
                                       

                                        <td><table class="Buttons">
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning" CommandName="update">
                                                        <i class="fa fa-edit"></i></asp:LinkButton></td>
                                                <td>
                                                    <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger" CommandName="delete"> <i class="fa fa-trash-o"></asp:LinkButton></td>
                                    <%--<asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>--%>

                                                        
                                            </tr>
                                        </table></td>
                                    </tr>
                                </ItemTemplate>

                            </asp:Repeater>
                            </tbody>
                           <%-- <tfoot>
                            <tr>
                                <th>Financial Year</th>
                                <th>Patient Registration SNo</th>
                                <th>Expiry Bill No</th>
                                <th>Purchase Bill No</th>
                                <th>Purchase Returns Bill No</th>
                                <th>Sample Coll Bill No</th>
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>--%>
                        </table>
                        
                        


                        
                        
                        


                        <%--<asp:GridView ID="gdFinancialYearSetup" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdFinancialYearSetup_RowCommand">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="financialYear" HeaderText="Financial Year"/>
                                <asp:BoundField DataField="patientRegistrationSNo" HeaderText="Patient Registration SNo"/>
                                <asp:BoundField DataField="expiryBillNo" HeaderText="Expiry Bill No"/>
                                <asp:BoundField DataField="purchaseBillNo" HeaderText="Purchase Bill No"/>
                                <asp:BoundField DataField="purchaseReturnsBillNo" HeaderText="Purchase Returns Bill No"/>
                                <asp:BoundField DataField="sampleCollBillNo" HeaderText="Sample Coll Bill No"/>


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
            <!-- /.box -->
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