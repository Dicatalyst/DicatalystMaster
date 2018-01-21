<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="Suppliers.aspx.cs" Inherits="Dentist_Suppliers" %>

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
    <h3 class="box-title">Suppliers </h3>


</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

<div class="row">

<div class="col-lg-3">
    <div class="form-group">
       <b>Supplier Name</b>
        <asp:TextBox ID="txtSupplierName" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Supplier Name" ControlToValidate="txtSupplierName" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>

    <div class="form-group">
      <b>APGST/Reg No.</b>
        <asp:TextBox ID="txtAPGSTRegNo" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group39" runat="server" ErrorMessage="Enter APGST Registration No." ControlToValidate="txtAPGSTRegNo" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>


    <div class="form-group">
      <b>CST No.</b>
        <asp:TextBox ID="txtCSTNo" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group39" runat="server" ErrorMessage="Enter CST No." ControlToValidate="txtCSTNo" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>

    <div class="form-group">
      <b>TIN No.</b>
        <asp:TextBox ID="txtTINNo" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group39" runat="server" ErrorMessage="Enter TIN No" ControlToValidate="txtTINNo" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
     <b>Form 20B</b>
        <asp:TextBox ID="txtForm20B" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Form 20B" ControlToValidate="txtForm20B" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>


</div>

<div class="col-lg-3">

    <div class="form-group">
       <b> Form 21B</b>
        <asp:TextBox ID="txtForm21B" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Form 21B" ControlToValidate="txtForm21B" class="error-message"></asp:RequiredFieldValidator>

        </div>
    </div>
    <div class="form-group">

     <b>Address</b>
        <asp:TextBox ID="txtAddress" runat="server" class="form-control"></asp:TextBox>
    </div>

    <div class="form-group">
      <b>Country</b>

        <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" AutoPostBack="True">
            
        </asp:DropDownList>
      
    </div>

    <div class="form-group">
      <b>state</b>

        <asp:DropDownList ID="ddlstate" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" AutoPostBack="True">
            
        </asp:DropDownList>
      
    </div>
    <div class="form-group">
       <b>City</b>
        <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="True">
           
        </asp:DropDownList>

    </div>
    
    
</div>

<div class="col-lg-3">
    <div class="form-group">
     <b>Area</b>
        <asp:DropDownList ID="ddlArea" runat="server" CssClass="form-control">
           
        </asp:DropDownList>

    </div>

    <div class="form-group">
     <b>Zip Code</b>
        <asp:TextBox ID="txtZipCode" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
      <b>Telephone No.</b>
        <asp:TextBox ID="txtTelephoneNo" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Telephone No" ControlToValidate="txtTelephoneNo" class="error-message"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtTelephoneNo" class="error-message"></asp:RegularExpressionValidator>
        </div>

    </div>
    <div class="form-group">
      <b>Fax No.</b>
        <asp:TextBox ID="txtFaxNo" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Fax No" ControlToValidate="txtFaxNo" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
     <b>Contact Person</b>
        <asp:TextBox ID="txtContactPerson" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
      <b>Available Products</b>
        <asp:TextBox ID="txtAvailableProducts" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Available Products" ControlToValidate="txtAvailableProducts" class="error-message"></asp:RequiredFieldValidator>

        </div>
    </div>
</div>


<div class="col-lg-3">

    <div class="form-group">
       <b>Mobile No.</b>
        <asp:TextBox ID="txtMobileNo" runat="server" class="form-control"></asp:TextBox>
        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Mobile No" ControlToValidate="txtMobileNo" class="error-message"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>
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

            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Website" ControlToValidate="txtWebsite" class="error-message"></asp:RequiredFieldValidator>

        </div>
    </div>

    <div class="form-group">
       <b>Email</b>
        <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" class="error-message"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
     <b>Total Products</b>
        <asp:TextBox ID="txtTotalProducts" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="Group39" runat="server" ErrorMessage="Enter Total Products" ControlToValidate="txtTotalProducts" class="error-message"></asp:RequiredFieldValidator>

        </div>
    </div>


</div>


</div>


</div>

<div class="box-footer">
    <div class="pull-right">
        <asp:Button ID="btnStockist" runat="server" Text="Save" ValidationGroup="Group39" class="btn btn-info" OnClick="btnStockist_Click"/>

    </div>

</div>


<div class="box-body table-responsive ">

    <table id="example1" class="table table-bordered table-striped ">
        <thead>
        <tr>
            <th>Supplier Name </th>
            <th>apgst Reg No</th>
            <th>CST No</th>
            <th>Tin No</th>
            <th> Form20B </th>
            <th>Form21B </th>
            <th>Address</th>
            <th> City</th>
            <th> Area</th>
            <th>State</th>
            <th> Zip Code</th>
            <th>telephone No</th>
            <th>Fax No</th>
            <th> Contact No</th>
            <th>Contact Person</th>
            <th>Available Person</th>
            
            <th>Mobile No</th>
            <th> Designation</th>
            <th>Department</th>
            <th>Website</th>
            <th> Email</th>
            <th>Total Products</th>
            <th>Country</th>
                       
            <th>Controls</th>
        </tr>
        </thead>
        <tbody>
                    
                        

        <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
            <ItemTemplate>
                <tr>
                    <td id="supplierName" runat="server"><%#Eval("supplierName") %></td>
                    <td id="apgstRegNo" runat="server"><%#Eval("apgstRegNo") %></td>
                    <td id="cstNo" runat="server"><%#Eval("cstNo") %></td>
                    <td id="tinNo" runat="server"><%#Eval("tinNo") %></td>
                    <td id="form20B" runat="server"><%#Eval("form20B") %></td>
                    <td id="form21B" runat="server"><%#Eval("form21B") %></td>
                    <td id="address" runat="server"><%#Eval("address") %></td>
                    <td id="city" runat="server"><%#Eval("city") %></td>
                    <td id="area" runat="server"><%#Eval("area") %></td>
                                
                    <td id="state" runat="server"><%#Eval("state") %></td>
                    <td id="zipCode" runat="server"><%#Eval("zipCode") %></td>
                    <td id="telephoneNo" runat="server"><%#Eval("telephoneNo") %></td>
                    <td id="faxNo" runat="server"><%#Eval("faxNo") %></td>
                    <td id="contactNo" runat="server"><%#Eval("contactNo") %></td>
                    <td id="contactPerson" runat="server"><%#Eval("contactPerson") %></td>
                                
                    <td id="availablePerson" runat="server"><%#Eval("availablePerson") %></td>
                    
                    <td id="mobileNo" runat="server"><%#Eval("mobileno") %></td>
                    <td id="designation" runat="server"><%#Eval("designation") %></td>
                    <td id="department" runat="server"><%#Eval("department") %></td>
                    <td id="website" runat="server"><%#Eval("website") %></td>
                    <td id="email" runat="server"><%#Eval("email") %></td>
                    <td id="totalProducts" runat="server"><%#Eval("totalProducts") %></td>
                                
                    <td id="country" runat="server"><%#Eval("country") %></td>
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
            <th>Supplier Name </th>
            <th>apgst Reg No</th>
            <th>CST No</th>
            <th>Tin No</th>
            <th> Form20B </th>
            <th>Form21B </th>
            <th>Address</th>
            <th> City</th>
            <th> Area</th>
            <th>State</th>
            <th> Zip Code</th>
            <th>telephone No</th>
            <th>Fax No</th>
            <th> Contact No</th>
            <th>Contact Person</th>
            <th>Available Person</th>
            
            <th>Mobile No</th>
            <th> Designation</th>
            <th>Department</th>
            <th>Website</th>
            <th> Email</th>
            <th>Total Products</th>
            <th>Country</th>
                       
            <th>Controls</th>
        </tr>
        </tfoot>
    </table>
    
    
       <%--<asp:GridView ID="gdStockist" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdStockist_RowCommand" >

        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

       <asp:BoundField DataField="supplierName" HeaderText="SuppliersName"/>
            <asp:BoundField DataField="apgstRegNo" HeaderText="APGST Reg No."/>
            <asp:BoundField DataField="cstNo" HeaderText="CSTNo"/>
            <asp:BoundField DataField="tinNo" HeaderText="TINNo"/>
            <asp:BoundField DataField="form20B" HeaderText="Form20B"/>
            <asp:BoundField DataField="form21B" HeaderText="Form21B"/>
            <asp:BoundField DataField="address" HeaderText="Address"/>
              <asp:BoundField DataField="state" HeaderText="State"/>
              <asp:BoundField DataField="country" HeaderText="Country"/>
            <asp:BoundField DataField="city" HeaderText="City"/>
            <asp:BoundField DataField="area" HeaderText="Area"/>
          

            <asp:BoundField DataField="zipCode" HeaderText="ZipCode"/>
           
            <asp:BoundField DataField="telephoneNo" HeaderText="TelephoneNo"/>
            <asp:BoundField DataField="faxNo" HeaderText="FaxNo"/>
            
            <asp:BoundField DataField="contactPerson" HeaderText="ContactPerson"/>
            <asp:BoundField DataField="availablePerson" HeaderText="AvailableProducts"/>
            <asp:BoundField DataField="mobileNo" HeaderText="MobileNo"/>
            <asp:BoundField DataField="designation" HeaderText="Designation"/>
            <asp:BoundField DataField="department" HeaderText="Department"/>
            <asp:BoundField DataField="website" HeaderText="Website"/>
            <asp:BoundField DataField="email" HeaderText="Email"/>
            <asp:BoundField DataField="totalProducts" HeaderText="TotalProducts"/>


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