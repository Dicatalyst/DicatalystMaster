<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="Expenses.aspx.cs" Inherits="Dentist_Expenses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">

    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 700px;
        }

        .btnedit { padding: 5px !important; }
    </style>

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">


<div class="col-lg-12 col-xs-12">
    
        <div class="box box-default" style="border-color: #ff2971">
            <div class="box-header with-border">
                <h3 class="box-title">Expenses</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
                                  
                <%--    <h4><b>Bill No. : 1447 </b></h4>--%>
                                           
                        <div class="box-body">
                            <div class="row" style="display:none;">
                                <div class="col-lg-12">

                                    <div class="col-lg-4">
                                        <div class="form-group">

                                           <b>Bill No. :</b>
                                            &nbsp; &nbsp;

                                           <b>1447</b>

                                        </div>
                                    </div>


                                    <div class="col-lg-4">
                                        <div class="form-group">
                                      <b>Bill Date :</b>
                                            &nbsp; &nbsp;
                                            <b>06/03/2017</b>
                                        </div>
                                    </div>


                                    <div class="col-lg-4">
                                        <div class="form-group">
                                           <b>Bill Time :</b>
                                            &nbsp; &nbsp;
                                           <b>09:51 PM </b>
                                        </div>
                                    </div>


                                </div>

                            </div>

                            <div class="row">

                                <div class="col-lg-12">

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                           <b>Paid To.</b>

                                            <asp:TextBox ID="txtPaidTo" runat="server" class="form-control"></asp:TextBox>
                                             <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                                            <div class="form-group has-error">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group25" runat="server" ErrorMessage="Enter PaidTo" ControlToValidate="txtPaidTo" class="error-message"></asp:RequiredFieldValidator>

                                            </div>


                                        </div>
                                    </div>


                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <b>Paid By</b>

                                            <asp:TextBox ID="txtPaidBy" runat="server" class="form-control"></asp:TextBox>

                                            <div class="form-group has-error">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group25" runat="server" ErrorMessage="Enter Paid By" ControlToValidate="txtPaidBy" class="error-message"></asp:RequiredFieldValidator>

                                            </div>

                                        </div>

                                    </div>


                                    <div class="col-lg-4">
                                        <div class="form-group">
                                           <b>Paid Amount</b>

                                            <asp:TextBox ID="txtPaidAmount" runat="server" CssClass="form-control"></asp:TextBox>

                                            <div class="form-group has-error">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group25" runat="server" ErrorMessage="Enter PaidAmount" ControlToValidate="txtPaidAmount" class="error-message"></asp:RequiredFieldValidator>

                                            </div>

                                        </div>
                                    </div>


                                </div>

                            </div>

                            <div class="row">

                                <div class="col-lg-12">

                                    <div class="col-lg-12">
                                        <div class="form-group">
                                          <b>Purpose & Remarks </b>
                                            <asp:TextBox ID="txtPurposRemarks" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>


                                            <div class="form-group has-error">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group25" runat="server" ErrorMessage="Enter PurposRemarks" ControlToValidate="txtPurposRemarks" class="error-message"></asp:RequiredFieldValidator>

                                            </div>


                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                                          
                        <div class="box-footer">
                            <div class="pull-right">
                                <asp:Button ID="btnExpenses" runat="server" ValidationGroup="Group25" Text="Save" CssClass="btn btn-info" OnClick="btnExpenses_Click"/>
                                <%--<asp:Button ID="Button2" runat="server" Text="Delete" class="btn btn-default"/>--%>
                            </div>
                        </div>

                <%-- <div class="box-body table-responsive no-padding">--%>
                 <div class="row">
                <div class="col-lg-12">

                    <div class="box-body table-responsive">
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>PaidTo</th>
                                <th>PaidBy</th>
                                 <th>PaidAmount</th>
                                <th>PurposeRemarks</th>
                              <%--  <th>Tax Applicable Not Apllicable</th>--%>
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>

                       <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                <ItemTemplate>
                                    <tr>
                                        <td id="PaidTo" runat="server"><%#Eval("PaidTo") %></td>
                                        <td id="PaidBy" runat="server"><%#Eval("PaidBy") %></td>
                                         <td id="PaidAmount" runat="server"><%#Eval("PaidAmount") %></td>
                                        <td id="PurposeRemarks" runat="server"><%#Eval("PurposeRemarks") %></td>
                                       
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
                                 <th>PaidTo</th>
                                <th>PaidBy</th>
                                 <th>PaidAmount</th>
                                <th>PurposeRemarks</th>--%>
                           <%-- <th>Tax Applicable Not Apllicable</th>--%>
                               
<%--                                <th>Controls</th>
                            </tr>
                            </tfoot>--%>
                        </table>

                        
                      <%--  <asp:GridView ID="gdExpenses" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdExpenses_RowCommand">

                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                                      
                            <asp:BoundField DataField="PaidTo" HeaderText="Paid To"/>
                            <asp:BoundField DataField="PaidBy" HeaderText="Paid By"/>
                            <asp:BoundField DataField="PaidAmount" HeaderText="Paid Amount"/>
                            <asp:BoundField DataField="PurposeRemarks" HeaderText="Purpose & Remarks"/>
                            

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


</asp:Content>