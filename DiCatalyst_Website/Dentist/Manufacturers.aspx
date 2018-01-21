<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="Manufacturers.aspx.cs" Inherits="Dentist_Manufacturers" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">

<div class="col-lg-12 col-xs-12">

<div class="box box-default" style="border-color: #ef600c">
<div class="box-header with-border">
    <h3 class="box-title">Manufacturers </h3>
    <%--    <button type="button" class="btn btn-info pull-right">Dummy</button>--%>
</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

    <div class="row">

        <div class="col-lg-3">
            <div class="form-group">
               <b>Manufacturer Name</b>
                <asp:TextBox ID="txtManufacturerName" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group22" runat="server" ErrorMessage="Enter Manufacturer Name" ControlToValidate="txtManufacturerName" class="error-message"></asp:RequiredFieldValidator>

                </div>


            </div>
            <div class="form-group">
             <b>Manufacturer Code</b>
                <asp:TextBox ID="txtManufacturerCode" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group22" runat="server" ErrorMessage="Enter Manufacturer Code" ControlToValidate="txtManufacturerCode" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>
            <div class="form-group">
               <b>Registered No</b>
                <asp:TextBox ID="txtRegisteredNo" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group22" runat="server" ErrorMessage="Enter Registered No" ControlToValidate="txtRegisteredNo" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>

            <div class="form-group">
            <b>TIN No</b>
                <asp:TextBox ID="txtTINNo" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group22" runat="server" ErrorMessage="Enter TIN No." ControlToValidate="txtTINNo" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>
        </div>

        <div class="col-lg-3">

            <div class="form-group">
             <b>Address</b>
                <asp:TextBox ID="txtAddress" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
           <b>City</b>
                <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">

                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Text="Select City" Value="0"></asp:ListItem>

                </asp:DropDownList>

            </div>
            <div class="form-group">
             <b>Area</b>

                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                    <asp:ListItem></asp:ListItem>

                    <asp:ListItem Text="Select Area" Value="0"></asp:ListItem>

                </asp:DropDownList>
            </div>
            <div class="form-group">
               <b>state</b>
                <asp:TextBox ID="txtstate" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="col-lg-3">

            <div class="form-group">
                <b>Zip Code</b>
                <asp:TextBox ID="txtZipCode" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
             <b>Telephone No.</b>
                <asp:TextBox ID="txtTelephoneNo" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Group22" runat="server" ErrorMessage="Enter Telephone No" ControlToValidate="txtTelephoneNo" class="error-message"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Group22" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtTelephoneNo" class="error-message"></asp:RegularExpressionValidator>
                </div>

            </div>
            <div class="form-group">
              <b>Fax No.</b>
                <asp:TextBox ID="txtFaxNo" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="Group22" ErrorMessage="Enter Fax No" ControlToValidate="txtFaxNo" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>
            <div class="form-group">
                <b>Contact Person</b>
                <asp:TextBox ID="txtContactPerson" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="Group22" ErrorMessage="Enter Contact Person" ControlToValidate="txtContactPerson" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="form-group">
             <b> Available Products</b>
                <asp:TextBox ID="txtAvailableProducts" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="Group22" ErrorMessage="Enter Available Products" ControlToValidate="txtAvailableProducts" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>
        </div>


        <div class="col-lg-3">

            <div class="form-group">
             <b>Mobile No.</b>
                <asp:TextBox ID="txtMobileNo" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="Group22" ErrorMessage="Enter Mobile No" ControlToValidate="txtMobileNo" class="error-message"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="Group22" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>

                </div>
            </div>
            <div class="form-group">
             <b>Designation</b>
                <asp:TextBox ID="txtDesignation" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
               <b>Department</b>
                <asp:TextBox ID="txtDepartment" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
             <b>Website</b>
                <asp:TextBox ID="txtWebsite" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="Group22" ErrorMessage="Enter Website" ControlToValidate="txtWebsite" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="form-group">
               <b>Total Products</b>
                <asp:TextBox ID="txtTotalProducts" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="Group22" ErrorMessage="Enter Total Products" ControlToValidate="txtTotalProducts" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>


        </div>


    </div>


</div>
<div class="box-footer">
    <div class="pull-right">
        <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="Group22" class="btn btn-info"/>

    </div>

</div>


<div class="box-body table-responsive no-padding">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">

        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


            <asp:BoundField DataField="ManufacturerName" HeaderText="ManufacturerName"/>
            <asp:BoundField DataField="ManufacturerCode" HeaderText="ManufacturerCode"/>
            <asp:BoundField DataField="RegisteredNo" HeaderText="RegisteredNo"/>
            <asp:BoundField DataField="TINNo" HeaderText="TINNo"/>
            <asp:BoundField DataField="Address" HeaderText="Address"/>
            <asp:BoundField DataField="City" HeaderText="City"/>
            <asp:BoundField DataField="Area" HeaderText="Area"/>
            <asp:BoundField DataField="State" HeaderText="State"/>
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode"/>
            <asp:BoundField DataField="TelephoneNo" HeaderText="TelephoneNo"/>
            <asp:BoundField DataField="FaxNo" HeaderText="FaxNo"/>
            <asp:BoundField DataField="ContactPerson" HeaderText="ContactPerson"/>
            <asp:BoundField DataField="AvailableProducts" HeaderText="AvailableProducts"/>
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo"/>
            <asp:BoundField DataField="Designation" HeaderText="Designation"/>
            <asp:BoundField DataField="Department" HeaderText="Department"/>
            <asp:BoundField DataField="Website" HeaderText="Website"/>
            <asp:BoundField DataField="TotalProducts" HeaderText="TotalProducts"/>


            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>

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