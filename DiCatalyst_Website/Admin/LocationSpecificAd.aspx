<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="LocationSpecificAd.aspx.cs" Inherits="Admin_LocationSpecificAd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />


    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />
    
    <style>
        

    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <div class="col-lg-12">

        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Speciality & Location Specific Advertisement</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">



                    <div class="col-lg-3">
                        <asp:DropDownList ID="ddlSpeciality" runat="server" CssClass="form-control">

                            <asp:ListItem>--Select Speciality--</asp:ListItem>
                        </asp:DropDownList>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Speciality" ControlToValidate="ddlSpeciality" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                    <div class="col-lg-3">
                        <asp:DropDownList ID="ddlCountry1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry1_SelectedIndexChanged">
                            <asp:ListItem>Select Country</asp:ListItem>
                        </asp:DropDownList>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Country" ControlToValidate="ddlCountry1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>


                    </div>
                    <div class="col-lg-2">
                        <asp:DropDownList ID="ddlState1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlState1_SelectedIndexChanged">
                            <asp:ListItem>Select State</asp:ListItem>
                        </asp:DropDownList>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select State" ControlToValidate="ddlState1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>

                    </div>
                    <div class="col-lg-2">

                        <asp:DropDownList ID="ddlcity1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlcity1_SelectedIndexChanged">
                            <asp:ListItem>Select City</asp:ListItem>
                        </asp:DropDownList>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select City" ControlToValidate="ddlcity1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>

                        </div>

                    </div>
                    <div class="col-lg-2">

                        <asp:DropDownList ID="ddlLocality" runat="server" CssClass="form-control">
                            <asp:ListItem>Select Locality</asp:ListItem>
                        </asp:DropDownList>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Locality" ControlToValidate="ddlLocality" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>

                        </div>

                    </div>


                    <div class="col-lg-6">



                        <asp:TextBox ID="txtAdTitle1" runat="server" CssClass="form-control" placeholder="AdTitle"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Title" ControlToValidate="txtAdTitle1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                      


                        <asp:TextBox ID="txtCustomerName1" runat="server" CssClass="form-control" placeholder="Customer Name"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Customer Name" ControlToValidate="txtCustomerName1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtCustomerMobileNo1" runat="server" CssClass="form-control" placeholder="Customer Mobile No."></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Enter Customer Mobile No" ControlToValidate="txtCustomerMobileNo1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" placeholder=" Address" TextMode="MultiLine"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtAddress1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>


                    </div>
                    <div class="col-lg-6">

                        <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" placeholder=" Email"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail1" class="error-message" ValidationGroup="localAdvertisement"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtAmountPaid1" runat="server" CssClass="form-control" placeholder=" Amount Paid"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Enter  Amount Paid" ControlToValidate="txtAmountPaid1" ValidationGroup="localAdvertisement" class="error-message"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtDuration1" runat="server" CssClass="form-control" placeholder=" Duration"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Enter Duration" ControlToValidate="txtDuration1" ValidationGroup="localAdvertisement" class="error-message"></asp:RequiredFieldValidator>


                        </div>
                        <asp:TextBox ID="txtStartDate1" runat="server" CssClass="form-control" placeholder=" Start Date"></asp:TextBox>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Enter Start Date" ControlToValidate="txtStartDate1" ValidationGroup="localAdvertisement" class="error-message"></asp:RequiredFieldValidator>


                        </div>
                          <asp:FileUpload ID="adFile1" runat="server" />

                        <asp:Button ID="btnSaveLocSpecificAd" runat="server" Text="Save " CssClass="btn btn-info pull-right" OnClick="btnSaveLocSpecificAd_Click" ValidationGroup="localAdvertisement" />


                    </div>
                    
                    
                    
                <div class="box-body table-responsive">
                        
                        
                        
                        
                    <table id="example1" class="table table-bordered table-striped ">
                        <thead>
                        <tr>
                            <th>Speciality Id</th>
                            <th>Country Id</th>
                            <th>State Id</th>
                            <th>City Id</th>
                            <th>Locality Id</th>
                            <th>AdTitle</th>
                            <th>AdFile</th>
                            <th>Customer Name</th>
                            <th>Customer Mobile</th>
                            <th>Customer Address</th>
                            <th>Customer Email</th>
                            <th>Customer Amount Paid</th>
                            <th>AdDuration</th>
                            <th>AdStart Date</th>
                               
                            <th>Controls</th>
                        </tr>
                        </thead>
                        <tbody>
                    
                        

                        <asp:Repeater ID="DataList1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("specialityId") %></td>
                                    <td><%#Eval("countryId") %></td>
                                    <td><%#Eval("stateId") %></td>
                                    <td><%#Eval("cityId") %></td>
                                    <td><%#Eval("localityId") %></td>
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
                            <th>Speciality Id</th>
                            <th>Country Id</th>
                            <th>State Id</th>
                            <th>City Id</th>
                            <th>Locality Id</th>
                            <th>AdTitle</th>
                            <th>AdFile</th>
                            <th>Customer Name</th>
                            <th>Customer Mobile</th>
                            <th>Customer Address</th>
                            <th>Customer Email</th>
                            <th>Customer Amount Paid</th>
                            <th>AdDuration</th>
                            <th>AdStart Date</th>
                               
                            <th>Controls</th>
                        </tr>
                        </tfoot>
                    </table>
                        
                        

                </div>
                    
                    
                    
                    
                    
                    


                    <%--<asp:GridView ID="gdLocAd" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdLocAd_RowCommand" OnRowDataBound="gdLocAd_RowDataBound">


                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:BoundField DataField="specialityId" HeaderText="Speciality" />

                            <asp:BoundField DataField="countryId" HeaderText="Country" />
                            <asp:BoundField DataField="stateId" HeaderText="State" />
                            <asp:BoundField DataField="cityId" HeaderText="City" />

                            <asp:BoundField DataField="localityId" HeaderText="Locality" />

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
                            <asp:CheckBox ID="chkIsActive" runat="server"  />
                            
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
            </div>
            <!-- /.box-body -->


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

