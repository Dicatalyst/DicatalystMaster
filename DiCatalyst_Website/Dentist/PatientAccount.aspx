<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="PatientAccount.aspx.cs" Inherits="Dentist_PatientAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">

    <style>
        .btnedit {
            padding: 5px !important;
        }
    </style>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />
    <style>
        .Buttons td {
            padding: 3px;
        }
    </style>


    <%-- For Validation--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">


    <div class="col-lg-12 col-xs-12">

        <div class="box box-default" style="border-color: #ff2971">
            <div class="box-header with-border">
                <h3 class="box-title">Patient Account</h3>
            </div>
            <!-- /.box-header -->


            <div class="box-body ">


                <!-- /.box-header -->

                <div class="row" style="display:none;">
                    <div class="col-lg-12">

                        <div class="row">
                            <div class="col-lg-12">

                                <div class="form-group ">
                                    <b>Patient ID</b>

                                    <div class="input-group input-group-sm">
                                        <asp:TextBox ID="txtPatientID" runat="server" class="form-control"></asp:TextBox>


                                        <span class="input-group-btn">
                                            <asp:Button ID="Button1" runat="server" Text="Find" class="btn btn-info btn-flat" Style="background-color: #3ae3f5; border-color: #3ae3f5" />

                                        </span>


                                    </div>

                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group27" runat="server" ErrorMessage="Enter Patient ID" ControlToValidate="txtPatientID" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>


                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <div class="box-footer" style="display:none;">

                <div class="pull-right">

                    <asp:Button ID="Button2" runat="server" Text="Save" ValidationGroup="Group27" class="btn btn-info" Style="background-color: #3ae3f5; border-color: #3ae3f5;" />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">

                    <div class="box-body table-responsive">


                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                                <tr>
                                    <th>FullName</th>
                                    <th>Email</th>
                                    <th>ContactNumber</th>
                                    <th>ChiefComplaint</th>
                                    <th>DoctorName</th>
                                    <th>ConsultationFee</th>
                                    <th>Fee</th>
                                    <th>Discount</th>
                                    <th>TotalAmount</th>
                                    <th>Paid</th>
                                    <th>Due</th>

                                    <%--<th>Controls</th>--%>
                                </tr>
                            </thead>
                            <tbody>



                                <asp:Repeater ID="DataList1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("fullName") %></td>
                                            <td><%#Eval("email") %></td>
                                            <td><%#Eval("contactNumber") %></td>
                                            <td><%#Eval("chiefComplaint") %></td>
                                            <td><%#Eval("DoctorName") %></td>
                                            <td><%#Eval("consultationFee") %></td>
                                            <td><%#Eval("fee") %></td>
                                            <td><%#Eval("discount") %></td>
                                            <td><%#Eval("totalAmount") %></td>
                                            <td><%#Eval("paid") %></td>
                                            <td><%#Eval("due") %></td>


                                            <%--<td><table class="Buttons"><tr>
                                                    <td>
                                                        <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning">
                                                            <i class="fa fa-edit"></i></asp:LinkButton></td>
                                                    <td>
                                                        <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger">
                                                            <i class="fa fa-trash-o"></asp:LinkButton></td>
                                                </tr></table></td>--%>
                                        </tr>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </tbody>
                            <%-- <tfoot>
                                <tr>
                                    <th>FullName</th>
                                    <th>Email</th>
                                    <th>ContactNumber</th>
                                    <th>ChiefComplaint</th>
                                    <th>DoctorName</th>
                                    <th>ConsultationFee</th>
                                    <th>Fee</th>
                                    <th>Paid</th>
                                    <th>Due</th>
                                    <th>Discount</th>
                                    <th>TotalAmount</th>
                                
                                </tr>
                                </tfoot>--%>
                        </table>





                    </div>

                </div>
            </div>



            <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="VisitedDate" HeaderText="VisitedDate"/>
                                <asp:BoundField DataField="CheifComplaint" HeaderText="CheifComplaint"/>
                                <asp:BoundField DataField="ConsultingDoctor" HeaderText="ConsultingDoctor"/>
                                <asp:BoundField DataField="AmountPaid" HeaderText="AmountPaid"/>
                                <asp:BoundField DataField="DueAmount" HeaderText="DueAmount"/>

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
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />
    <link href="../design/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />


    <script>

        $(function () {
            $("#example1").DataTable();
        });
    </script>

</asp:Content>
