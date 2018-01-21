<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Dentist_Products" %>

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

<div class="box box-default" style="border-color: #ef600c">
<div class="box-header with-border">
    <h3 class="box-title">Products</h3>


</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

<div class="row">
<div class="col-lg-9">

<div class="col-lg-4">
    <div class="form-group">
      <b>Product Name</b>
        <asp:TextBox ID="txtProductName" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
    </div>
    <div class="form-group">
       <b>Code</b>
        <asp:TextBox ID="txtCode" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group35" runat="server" ErrorMessage="Enter Product Code" ControlToValidate="txtCode" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
      <b>Pack Type</b>
        <asp:DropDownList ID="ddlPackType" runat="server" class="form-control">

            <asp:ListItem></asp:ListItem>
            <asp:ListItem >pack type1</asp:ListItem>
        </asp:DropDownList>

    </div>

    <div class="form-group">
       <b>Packing</b>
        <asp:TextBox ID="txtPacking" runat="server" class="form-control"></asp:TextBox>
    </div>

    <div class="form-group">
        <b>Generic Form</b>
        <asp:DropDownList ID="ddlGenericForm" runat="server" class="form-control">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem> generic form1</asp:ListItem>
            <asp:ListItem> generic form2 </asp:ListItem>
        </asp:DropDownList>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="Group35" runat="server" ErrorMessage="Select Generic Form" ControlToValidate="ddlGenericForm" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
        <b>Manufacturer</b>
        <asp:DropDownList ID="ddlManufacturer" runat="server" class="form-control">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>manufacturer</asp:ListItem>
        </asp:DropDownList>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ValidationGroup="Group35" runat="server" ErrorMessage="Select Manufacturer" ControlToValidate="ddlManufacturer" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>


</div>


<div class="col-lg-4">


    <div class="form-group">
        <b>Re Order Level</b>
        <asp:TextBox ID="txtReOrderLevel" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group35" runat="server" ErrorMessage="Enter ReOrder Level" ControlToValidate="txtReOrderLevel" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
      <b>Cost Price</b>
        <asp:TextBox ID="txtCostPrice" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group35" runat="server" ErrorMessage="Enter Cost Price" ControlToValidate="txtCostPrice" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
        <b>Sale Price</b>
        <asp:TextBox ID="txtSalePrice" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group35" runat="server" ErrorMessage="Enter Sale Price" ControlToValidate="txtSalePrice" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
        <b>Maximum Re Order level</b>
        <asp:TextBox ID="txtMaximumReOrderlevel" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Group35" ErrorMessage="Enter ReOrder Level" ControlToValidate="txtReOrderLevel" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>


    <div class="form-group">
       <b>Pack Size</b>
        <asp:TextBox ID="txtPackSize" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
       <b>Tax Category</b>
        <asp:TextBox ID="txtTaxCategory" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Group35" runat="server" ErrorMessage="Enter Tax Category" ControlToValidate="txtTaxCategory" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>


</div>


<div class="col-lg-4">


    <div class="form-group">
       <b>Select :</b>
        <br/>

        <asp:RadioButtonList ID="radSelect" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Inclusive</asp:ListItem>
            <asp:ListItem>Exclusive</asp:ListItem>
        </asp:RadioButtonList>
       

    </div>


    <div class="form-group">
        <b>Rack No.</b>
        <asp:TextBox ID="txtRackNo" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
       <b>MRP</b>
        <asp:TextBox ID="txtMRP" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Group35" runat="server" ErrorMessage="Enter MRP" ControlToValidate="txtMRP" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>
    <div class="form-group">
      <b>Schedule</b>


        <asp:TextBox ID="txtSchedule" runat="server" class="form-control"></asp:TextBox>
    </div>

    <div class="form-group">
    <b>CST</b>
        <asp:DropDownList ID="ddlCST" runat="server" cssclass="form-control">
            <asp:ListItem>--select--</asp:ListItem>
            <asp:ListItem>cst2</asp:ListItem>

        </asp:DropDownList>

    </div>
    <div class="form-group">
       <b>Discount</b>
        <asp:TextBox ID="txtDiscount" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="Group35" runat="server" ErrorMessage="Enter Discount" ControlToValidate="txtDiscount" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>

    <div class="pull-right">
        <asp:Button ID="btnProducts" runat="server" Text="Save" ValidationGroup="Group35" class="btn btn-info" OnClick="btnProducts_Click"/>

       
    </div>


</div>


</div>


<div class="col-lg-3">
    <b>Product Category :</b>

    <div class="form-group">
        <b>Code</b>

        <asp:DropDownList ID="ddlCode" runat="server" class="form-control">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>code1</asp:ListItem>
        </asp:DropDownList>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="Group36" runat="server" ErrorMessage="Select Product Code" ControlToValidate="ddlCode" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>

    <div class="form-group">
        <b>Product Category</b>
        <asp:TextBox ID="txtProductCategory" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="Group36" runat="server" ErrorMessage="Enter Product Category" ControlToValidate="txtProductCategory" class="error-message"></asp:RequiredFieldValidator>

        </div>


    </div>


    <div class="pull-right">
        <asp:Button ID="btnProductCategory" runat="server" ValidationGroup="Group36" Text="Save" class="btn btn-info" OnClick="btnProductCategory_Click"/>

        <%--<button type="reset" class="btn btn-default" >Cancel</button>--%>
    </div>
    <br/>
    <br/>

    <div class="box-body table-responsive no-padding">
        
        
        
        <table id="example3" class="table table-bordered table-striped ">
            <thead>
            <tr>
                <th>Code</th>
                <th>Product Category</th>
                            
                               
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
                    
                        

            <asp:Repeater ID="DataList3" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("code") %></td>
                        <td><%#Eval("productCategory") %></td>
                                    
                        <td><table class="Buttons">
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
                <th>Code</th>
                <th>Product Category</th>
                            
                               
                <th>Controls</th>
            </tr>
            </tfoot>
        </table>
        
        
        
        


        <%--<asp:GridView ID="gdProductCategory" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdProductCategory_RowCommand">

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:BoundField DataField="code" HeaderText="Product Code"/>
                <asp:BoundField DataField="productCategory" HeaderText="Product Category"/>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

        </asp:GridView>--%>

    </div>

    <hr/>

    <b>Product Sub Category :</b>

    <div class="form-group">
      <b>Select Category</b>
        <asp:TextBox ID="txtSelectCategory" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="Group37" runat="server" ErrorMessage="Enter SelectCategory" ControlToValidate="txtSelectCategory" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>


    <div class="form-group">
       <b>Product Sub Category</b>
        <asp:TextBox ID="txtProductSubCategory" runat="server" class="form-control"></asp:TextBox>

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="Group37" runat="server" ErrorMessage="Enter Product Sub Category" ControlToValidate="txtProductSubCategory" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>


    <div class="pull-right">

        <asp:Button ID="btnProductSubCategory" runat="server" Text="Save" class="btn btn-info" ValidationGroup="Group37" OnClick="btnProductSubCategory_Click"/>

    </div>

    <br/>
    <br/>
    <div class="box-body table-responsive no-padding">
        
        
        <table id="example2" class="table table-bordered table-striped ">
            <thead>
            <tr>
                <th>Select Category</th>
                <th>Product Sub Category</th>
                            
                               
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
                    
                        

            <asp:Repeater ID="DataList2" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("selectCategory") %></td>
                        <td><%#Eval("productSubCategory") %></td>
                                    
                        <td><table class="Buttons">
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
                <th>Select Category</th>
                <th>Product Sub Category</th>
                            
                               
                <th>Controls</th>
            </tr>
            </tfoot>
        </table>
        


        <%--<asp:GridView ID="gdProductSubCategory" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdProductSubCategory_RowCommand" >

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                
                <asp:BoundField DataField="selectCategory" HeaderText="Category"/>
                <asp:BoundField DataField="productSubCategory" HeaderText="Product Sub Category"/>

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


<div class="row">

    <div class="col-lg-12">

        <div class="col-lg-12">
            <br/>

            <div class="box-body table-responsive no-padding">
                
                
                
                
                <table id="example1" class="table table-bordered table-striped ">
                    <thead>
                    <tr>
                        <th>Product Name </th>
                        <th>Code</th>
                        <th>Pack Type</th>
                        <th>Packing</th>
                        <th> Generic Form</th>
                        <th>Manufacturer</th>
                        <th>ReOrder Level</th>
                        <th> Cost Price</th>
                        <th>Sale Price</th>
                        
                        <th>Maximum ReOrder Level</th>
                        <th> Pack Size</th>
                        <th>Tax Category</th>
                        <th>Select Product</th>
                        <th> Rack No</th>
                        <th>MRP</th>
                        
                        <th> Schedule</th>
                        <th>CST</th>
                        <th>Discount</th>
                       
                        <th>Controls</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                        

                        <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                            <ItemTemplate>
                                <tr>
                                    <td id="productName" runat="server"><%#Eval("productName") %></td>
                                    <td id="code" runat="server"><%#Eval("code") %></td>
                                    <td id="packType" runat="server"><%#Eval("packType") %></td>
                                    <td id="packing" runat="server"><%#Eval("packing") %></td>
                                    <td id="genericForm" runat="server"><%#Eval("genericForm") %></td>
                                    <td id="manufacturer" runat="server"><%#Eval("manufacturer") %></td>
                                    <td id="reOrderLevel" runat="server"><%#Eval("reOrderLevel") %></td>
                                    <td id="costPrice" runat="server"><%#Eval("costPrice") %></td>
                                    <td id="salePrice" runat="server"><%#Eval("salePrice") %></td>
                                 
                                    <td id="maximumReOrderLevel" runat="server"><%#Eval("maximumReOrderLevel") %></td>
                                    <td id="packSize" runat="server"><%#Eval("packSize") %></td>
                                    <td id="taxCategory" runat="server"><%#Eval("taxCategory") %></td>
                                    <td id="selectProduct" runat="server"><%#Eval("selectProduct") %></td>
                                    <td id="rackNo" runat="server"><%#Eval("rackNo") %></td>
                                    <td id="mrp" runat="server"><%#Eval("mrp") %></td>
                                
                                    <td id="schedule" runat="server"><%#Eval("schedule") %></td>
                                    <td id="cst" runat="server"><%#Eval("cst") %></td>
                                    <td id="discount" runat="server"><%#Eval("discount") %></td>

                                    <%--<td id="totalStock" runat="server"><%#Eval("totalStock") %></td>--%>
                       
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
                        <th>Product Name </th>
                        <th>Code</th>
                        <th>Pack Type</th>
                        <th>Packing</th>
                        <th> Generic Form</th>
                        <th>Manufacturer</th>
                        <th>ReOrder Level</th>
                        <th> Cost Price</th>
                        <th>Sale Price</th>
                        
                        <th>Maximum ReOrder Level</th>
                        <th> Pack Size</th>
                        <th>Tax Category</th>
                        <th>Select Product</th>
                        <th> Rack No</th>
                        <th>MRP</th>
                        
                        <th> Schedule</th>
                        <th>CST</th>
                        <th>Discount</th>
                       
                        <th>Controls</th>
                    </tr>
                    </tfoot>
                </table>

                <%--<asp:GridView ID="gdProducts" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdProducts_RowCommand" >

                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                      
                        <asp:BoundField DataField="productName" HeaderText="Product Name"/>
                        <asp:BoundField DataField="code" HeaderText="Code"/>
                        <asp:BoundField DataField="packType" HeaderText="Pack Type"/>
                        <asp:BoundField DataField="packing" HeaderText="Packing"/>
                        <asp:BoundField DataField="genericForm" HeaderText="Generic Form"/>
                        <asp:BoundField DataField="manufacturer" HeaderText="Manufacturer"/>
                        <asp:BoundField DataField="reOrderLevel" HeaderText="ReOrder Level"/>
                        <asp:BoundField DataField="costPrice" HeaderText="Cost Price"/>
                        <asp:BoundField DataField="salePrice" HeaderText="Sale Price"/>
                        <asp:BoundField DataField="maximumReOrderLevel" HeaderText="Maximum ReOrder-level"/>
                        <asp:BoundField DataField="packSize" HeaderText="Pack Size"/>
                        <asp:BoundField DataField="taxCategory" HeaderText="Tax Category"/>
                        <asp:BoundField DataField="selectProduct" HeaderText="Select Product"/>
                        <asp:BoundField DataField="rackNo" HeaderText="Rack No"/>
                        <asp:BoundField DataField="mrp" HeaderText="MRP"/>
                        <asp:BoundField DataField="schedule" HeaderText="Schedule"/>
                        <asp:BoundField DataField="cst" HeaderText="CST"/>
                        <asp:BoundField DataField="discount" HeaderText="Discount"/>

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
</div>



<!-- For Validation -->


<script src="../validation/js/scrupulous.js">
</script>

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

    $(function () {
        $("#example2").DataTable();
    });

    $(function () {
        $("#example3").DataTable();
    });
</script>


</asp:Content>