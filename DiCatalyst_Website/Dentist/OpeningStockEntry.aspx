<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="OpeningStockEntry.aspx.cs" Inherits="Dentist_OpeningStockEntry" %>

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
    <h3 class="box-title">Opening Stock Entry </h3>
    <%-- <button type="button" class="btn btn-info pull-right">Dummy</button>--%>
</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

    <div class="row">

        <div class="col-lg-4">
            <div class="form-group">
             <b>Department</b>
                <asp:DropDownList ID="ddlDepartment" runat="server" class="form-control">

                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Department1</asp:ListItem>
                    <asp:ListItem>Department2</asp:ListItem>

                </asp:DropDownList>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Department" ControlToValidate="ddlDepartment" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>
            <div class="form-group">
               <b>Financial Year</b>
                <asp:TextBox ID="txtFinancialYear" runat="server" class="form-control"></asp:TextBox>
                <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Financial Year" ControlToValidate="txtFinancialYear" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>


            <div class="form-group">
                <b>Product Name</b>
                <asp:TextBox ID="txtProductName" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
             <b>Category</b>
                <asp:TextBox ID="txtCategory" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Product Category" ControlToValidate="txtCategory" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>

            <div class="form-group">
              <b>Code</b>
                <asp:TextBox ID="txtCode" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Product Code" ControlToValidate="txtCode" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>

            <div class="form-group">
              <b>Batch No.</b>
                <asp:TextBox ID="txtBatchNo" runat="server" class="form-control"></asp:TextBox>
            </div>


        </div>


        <div class="col-lg-4">

            <div class="form-group">
              <b>Expiry Date</b>
                <asp:TextBox ID="txtExpiryDate" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Expiry Date" ControlToValidate="txtExpiryDate" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>

            <div class="form-group">
             <b>Quantity</b>
                <asp:TextBox ID="txtQuantity" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Quantity" ControlToValidate="txtQuantity" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="form-group">
              <b>Pack Size</b>
                <asp:TextBox ID="txtPackSize" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
              <b>Free</b>
                <asp:TextBox ID="txtFree" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
              <b>Rack No.</b>
                <asp:TextBox ID="txtRackNo" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Rack No" ControlToValidate="txtRackNo" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>

        </div>


        <div class="col-lg-4">


            <div class="form-group">
              <b>GST</b>
                <asp:TextBox ID="txtGST" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
             <b>Cost Price</b>
                <asp:TextBox ID="txtCostPrice" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Cost Price" ControlToValidate="txtCostPrice" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="form-group">
              <b>MRP</b>
                <asp:TextBox ID="txtMRP" runat="server" class="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Group28" runat="server" ErrorMessage="Enter MRP" ControlToValidate="txtMRP" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="form-group">
                <b>Sale Price</b>
                <asp:TextBox ID="txtSalePrice" runat="server" class="form-control"></asp:TextBox>
                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Sales Price" ControlToValidate="txtSalePrice" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="form-group">
              <b>Total Stock</b>
                <asp:TextBox ID="txtTotalStock" runat="server" class="form-control"></asp:TextBox>
                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="Group28" runat="server" ErrorMessage="Enter Total Stock" ControlToValidate="txtTotalStock" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>

        </div>


    </div>

</div>

<div class="box-footer">
    <div class="pull-right">
        <asp:Button ID="btnOpeningStock" runat="server"   Visible="false" Text="Save" ValidationGroup="Group28" class="btn btn-info" OnClick="btnOpeningStock_Click"/>

    </div>

</div>

<div class="box-body" >
    <div class="box-body table-responsive no-padding">
        
        <table id="example1" class="table table-bordered table-striped ">
            <thead>
            <tr>
                <th>Department </th>
                <th>Financial Year</th>
                <th>Product Name</th>
                <th>Category</th>
                <th> Code </th>
                <th>Batch No</th>
                <th>Expiry Date</th>
                <th> Quantity</th>
                <th> Pack Size</th>
                <th>Free</th>
                <th> RackNo</th>
                <th>gst</th>
                <th>Cost Price</th>
                <th> mrp</th>
                <th>Sale Price</th>
                <th>Total Stock</th>
                       
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
                    
                        

            <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                <ItemTemplate>
                    <tr>
                         
                        <td id="department" runat="server"><%#Eval("department") %></td>
                        <td id="financialYear" runat="server"><%#Eval("financialYear") %></td>
                        <td id="productName" runat="server"><%#Eval("productName") %></td>
                        <td id="category" runat="server"><%#Eval("category") %></td>
                        <td id="code" runat="server"><%#Eval("code") %></td>
                        <td id="batchNo" runat="server"><%#Eval("batchNo") %></td>
                        <td id="expiryDate" runat="server"><%#Eval("expiryDate") %></td>
                        <td id="quantity" runat="server"><%#Eval("quantity") %></td>
                        <td id="packSize" runat="server"><%#Eval("packSize") %></td>
                                
                        <td id="free" runat="server"><%#Eval("free") %></td>
                        <td id="rackNo" runat="server"><%#Eval("rackNo") %></td>
                        <td id="gst" runat="server"><%#Eval("gst") %></td>
                        <td id="costPrice" runat="server"><%#Eval("costPrice") %></td>
                        <td id="mrp" runat="server"><%#Eval("mrp") %></td>
                        <td id="salePrice" runat="server"><%#Eval("salePrice") %></td>
                                
                        <td id="totalStock" runat="server"><%#Eval("totalStock") %></td>
                       
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
                <th>Department </th>
                <th>Financial Year</th>
                <th>Product Name</th>
                <th>Category</th>
                <th> Code </th>
                <th>Batch No</th>
                <th>Expiry Date</th>
                <th> Quantity</th>
                <th> Pack Size</th>
                <th>Free</th>
                <th> RackNo</th>
                <th>gst</th>
                <th>Cost Price</th>
                <th> mrp</th>
                <th>Sale Price</th>
                <th>Total Stock</th>
                       
                <th>Controls</th>
            </tr>
            </tfoot>
        </table>


        <%--<asp:GridView ID="gdOpeningStockEntry" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdOpeningStockEntry_RowCommand" >

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               

                <asp:BoundField DataField="department" HeaderText="Department"/>
                <asp:BoundField DataField="financialYear" HeaderText="Financial Year"/>
                <asp:BoundField DataField="productName" HeaderText="Product Name"/>
                <asp:BoundField DataField="category" HeaderText="Category"/>
               
                <asp:BoundField DataField="code" HeaderText="Code"/>
                <asp:BoundField DataField="batchNo" HeaderText="Batch No."/>
                <asp:BoundField DataField="expiryDate" HeaderText="Expiry Date"/>
                <asp:BoundField DataField="quantity" HeaderText="Quantity"/>
                  <asp:BoundField DataField="packSize" HeaderText="Pack Size"/>
                <asp:BoundField DataField="free" HeaderText="Free"/>
                <asp:BoundField DataField="rackNo" HeaderText="Rack No."/>
                <asp:BoundField DataField="gst" HeaderText="GST"/>
                <asp:BoundField DataField="costPrice" HeaderText="Cost Price"/>
                <asp:BoundField DataField="mrp" HeaderText="mrp"/>
                <asp:BoundField DataField="salePrice" HeaderText="Sale Price"/>
                <asp:BoundField DataField="totalStock" HeaderText="Total Stock"/>

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