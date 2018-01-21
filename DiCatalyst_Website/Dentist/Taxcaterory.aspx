<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="Taxcaterory.aspx.cs" Inherits="Dentist_Taxcaterory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">


    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />
   <style>
       
       .Buttons td {
           padding: 3px;
       }

   </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">


    <div class="col-lg-12 col-xs-12">

        <div class="box box-default" style="border-color: #ff2971">
            <div class="box-header with-border">
                <h3 class="box-title">Tax Category </h3>
            </div>
            <div class="box-body" style="display: block;">

                <div class="row">

                    <div class="col-lg-4">
                        <div class="form-group">

                            <b>Tax Name</b>
                            <asp:TextBox ID="txtTaxName" runat="server" class="form-control"></asp:TextBox>
                            <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group131" runat="server" ErrorMessage="Enter Tax Name" ControlToValidate="txtTaxName" class="error-message"></asp:RequiredFieldValidator>


                            </div>

                        </div>

                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <b>Tax %</b>
                            <asp:TextBox ID="txtTaxPercentage" runat="server" class="form-control"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group131" runat="server" ErrorMessage="Enter Tax %" ControlToValidate="txtTaxPercentage" class="error-message"></asp:RequiredFieldValidator>
                                
                            </div>

                        </div>

                    </div>

                </div>
                
            </div>

            <div class="box-footer">
                <div class="pull-right">

                    <asp:Button ID="btnTaxCategory" runat="server" ValidationGroup="Group131" Text="Save" class="btn btn-info" OnClick="btnTaxCategory_Click" />

                    <%--<button type="reset" class="btn btn-default" >Cancel</button>--%>
                </div>

            </div>

            <div class="row">
                <div class="col-lg-12">

                    <div class="box-body table-responsive">
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Tax Name</th>
                                <th>Tax Percentage</th>
                              <%--  <th>Tax Applicable Not Apllicable</th>--%>
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                <ItemTemplate>
                                    <tr>
                                        <td id="taxName" runat="server"><%#Eval("taxName") %></td>
                                        <td id="taxPercentage" runat="server"><%#Eval("taxPercentage") %></td>
                                       
                                        <td id="DelID" runat="server" visible="false"><%#Eval("id") %></td>
                                        
                                       <%-- <td><%#Eval("taxApplicableNotApllicable") %></td>
                                        --%>

                                    
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
                                <th>Tax Name</th>
                                <th>Tax Percentage</th>--%>
                           <%-- <th>Tax Applicable Not Apllicable</th>--%>
                               
<%--                                <th>Controls</th>
                            </tr>
                            </tfoot>--%>
                        </table>
                        


                        <%--<asp:GridView ID="gdTaxCategory" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdTaxCategory_RowCommand">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:BoundField DataField="taxName" HeaderText="Tax Name" />
                                <asp:BoundField DataField="taxPercentage" HeaderText="Tax %" />
                                <asp:BoundField DataField="taxApplicableNotApplicable" HeaderText="Applicable_NotApplicable" />
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox runat="server"></asp:CheckBox>
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
        $(function () {
            $('.validate-form').scrupulous();
            $('.callback-form').scrupulous({
                valid: function () {
                    alert('Valid Callback - Submit the Form');
                    return true;
                },
                invalid: function () {
                    alert('Invalid Callback -  Stop the Form');
                    return false;
                }
            });

            $('#toggle-disabled').on('change',
                function () {
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
