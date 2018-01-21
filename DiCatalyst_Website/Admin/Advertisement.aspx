<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Advertisement.aspx.cs" Inherits="Admin_Advertisement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />


    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />

    <style>
        .patientViewButtons td {
            padding: 3px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12">

        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Global Advertisement</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">
                    <div class="col-lg-6">

                        <asp:TextBox ID="txtAdTitle" runat="server" CssClass="form-control" placeholder="AdTitle"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="globalAdvertisement" runat="server" ErrorMessage="Enter Title" ControlToValidate="txtAdTitle" class="error-message"></asp:RequiredFieldValidator>


                        </div>
                     


                        <asp:TextBox ID="txtCustomerName" runat="server" CssClass="form-control" placeholder="Customer Name"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator9" runat="server"  ValidationGroup="globalAdvertisement" ErrorMessage="Enter Customer Name" ControlToValidate="txtCustomerName" class="error-message"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtCustomerMobileNo" runat="server" CssClass="form-control" placeholder="Customer Mobile No."></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter Customer Mobile No" ControlToValidate="txtCustomerMobileNo" class="error-message" ValidationGroup="globalAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder=" Address" TextMode="MultiLine"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtAddress" class="error-message" ValidationGroup="globalAdvertisement"></asp:RequiredFieldValidator>


                        </div>


                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder=" Email"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" class="error-message" ValidationGroup="globalAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtAmountPaid" runat="server" CssClass="form-control" placeholder=" Amount Paid"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter  Amount Paid" ControlToValidate="txtAmountPaid" class="error-message" ValidationGroup="globalAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control" placeholder=" Duration"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Enter Duration" ControlToValidate="txtDuration" class="error-message" ValidationGroup="globalAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" placeholder=" Start Date"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Enter Start Date" ControlToValidate="txtStartDate" class="error-message" ValidationGroup="globalAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                           <asp:FileUpload ID="adFile" runat="server" />

                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-info pull-right" OnClick="btnSaveAdvertisement_Click"  ValidationGroup="globalAdvertisement"/>
                    </div>
                    
                    
                    
                    
                <div class="box-body table-responsive">
                        
                        
                        
                        
                    <table id="example1" class="table table-bordered table-striped ">
                        <thead>
                        <tr>
                            <th>AdTitle</th>
                            <th>File</th>
                            <th>Customer Name</th>
                            <th>Customer Mobile</th>
                            <th>Customer Address</th>
                            <th>Customer Email</th>
                            <th>Customer Amount Paid</th>
                            <th>Duration</th>
                            <th>StartDate</th>
                               
                            <th>Controls</th>
                        </tr>
                        </thead>
                        <tbody>
                    
                        

                        <asp:Repeater ID="DataList1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("adTitle") %></td>
                                    <td><%#Eval("adFile") %></td>
                                    <td><%#Eval("customerName") %></td>
                                    <td><%#Eval("customerMobile") %></td>
                                    <td><%#Eval("customerAddress") %></td>
                                    <td><%#Eval("customerEmail") %></td>
                                    <td><%#Eval("customerAmountPaid") %></td>
                                    <td><%#Eval("adDuration") %></td>
                                    <td><%#Eval("adStartDate") %></td>
                                       
                                       
                                    <td><table class="patientViewButtons">
                                        <tr>
                                       
                                            <td>
                                                <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning">
                                                    <i class="fa fa-edit"></i></asp:LinkButton></td>
                                            <td>
                                                <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger">
                                                    <i class="fa fa-trash-o"></asp:LinkButton></td>
                                        </tr>
                                    </table></td>
                                </tr>
                            </ItemTemplate>

                        </asp:Repeater>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>AdTitle</th>
                            <th>File</th>
                            <th>Customer Name</th>
                            <th>Customer Mobile</th>
                            <th>Customer Address</th>
                            <th>Customer Email</th>
                            <th>Customer Amount Paid</th>
                            <th>Duration</th>
                            <th>StartDate</th>
                               
                            <th>Controls</th>
                        </tr>
                        </tfoot>
                    </table>
                        
                        

                </div>

                     
                    
                   
                        <%--<asp:GridView ID="gdGlobalAd" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdGlobalAd_RowCommand" OnRowDataBound="gdGlobalAd_RowDataBound" >


                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                             
                            <asp:BoundField DataField="adTitle" HeaderText="AdTitle" />

                            <asp:BoundField DataField="adFile" HeaderText="AdFile" />
                            <asp:BoundField DataField="customerName" HeaderText="Customer Name" />
                            <asp:BoundField DataField="customerMobile" HeaderText="Customer Mobile" />

                            <asp:BoundField DataField="customerAddress" HeaderText="Customer Address" />

                            <asp:BoundField DataField="customerEmail" HeaderText="Customer Email" />

                            <asp:BoundField DataField="customerAmountPaid" HeaderText="Customer Amount Paid" />
                            <asp:BoundField DataField="adDuration" HeaderText="Duration" />
                            <asp:BoundField DataField="adStartDate" HeaderText="Start Date" />



                            <asp:TemplateField>
                        <ItemTemplate>
                         <asp:Label ID="lblIsActive" Visible="False" runat="server" Text='<%#Eval("isActive") %>'></asp:Label>
                         <asp:CheckBox ID="chkIsActive" runat="server" />
                            
                            </ItemTemplate>
                        </asp:TemplateField>



                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>--%>
                        
                   
                </div>
                <!-- /.box-body -->


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
