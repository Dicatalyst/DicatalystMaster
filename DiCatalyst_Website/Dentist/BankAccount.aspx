<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="BankAccount.aspx.cs" Inherits="Dentist_BankAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    
    <style>
        
        .Buttons td {
            padding: 3px;

        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">


    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #ff2971">
                <div class="box-header with-border">
                    <h3 class="box-title">Bank Accounts</h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">


                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group">
                                <b>Bank Name</b>
                                <asp:TextBox ID="txtBankName" runat="server" class="form-control"></asp:TextBox>
                                 <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Group20" ErrorMessage="Enter BankName" ControlToValidate="txtBankName" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            <div class="form-group">
                              <b>Account No</b>
                                <asp:TextBox ID="txtAccountNo" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group20" ErrorMessage="Enter AccountNo" ControlToValidate="txtAccountNo" class="error-message"></asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="Group20" ErrorMessage="Enter Valid Bank Account Number (12 Digits)" ControlToValidate="txtAccountNo" class="error-message" ValidationExpression="[0-9]{12}"></asp:RegularExpressionValidator>

                                </div>

                            </div>

                        </div>


                    </div>

                </div>

                <div class="box-footer">
                    <div class="pull-right">
                        <asp:Button ID="btnBankAccount" runat="server" Text="Save" ValidationGroup="Group20" class="btn btn-info" OnClick="btnBankAccount_Click"/>

                    </div>

                </div>
                <div class="box-body table-responsive ">
                    
                    
                    
                    <table id="example1" class="table table-bordered table-striped ">
                        <thead>
                        <tr>
                            <th>Bank Name</th>
                            <th>Account No</th>
                            
                               
                            <th>Controls</th>
                        </tr>
                        </thead>
                        <tbody>
                    
                        

                        <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                            <ItemTemplate>
                                <tr>
                                    <td id="BankName" runat="server"><%#Eval("bankName") %></td>
                                    <td id="AccountNo" runat="server"><%#Eval("accountNo") %></td>

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
                        <%--<tfoot>
                        <tr>
                            <th>Bank Name</th>
                            <th>Account No</th>
                            
                               
                            <th>Controls</th>
                        </tr>
                        </tfoot>--%>
                    </table>
                    

                    

                    <%--<asp:GridView ID="gdBankAccount" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdBankAccount_RowCommand">

                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:BoundField DataField="bankName" HeaderText="Bank Name"/>
                            <asp:BoundField DataField="accountNo" HeaderText="Account No"/>

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