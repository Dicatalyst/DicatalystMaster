<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="ExpiryProducts.aspx.cs" Inherits="Dentist_ExpiryProducts" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
    
    
    <style>
        
        .Buttons td {
            padding: 3px;

        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">

    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #ef600c">
                <div class="box-header with-border">
                    <h3 class="box-title"> Expiry Products </h3>


                </div>
                <!-- /.box-header -->
             

                <%--    <div class="box-body" style="display: block;">

                        <div class="row">

                            <div class="col-lg-6">
                                <div class="form-group">
                                   <b>Search By</b>
                                    <asp:DropDownList ID="ddlSearch" runat="server" class="form-control">
                                        <asp:ListItem></asp:ListItem>

                                        <asp:ListItem>Value1</asp:ListItem>
                                        <asp:ListItem>Value2</asp:ListItem>
                                    </asp:DropDownList>

                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group24" ErrorMessage="Enter Search Value" ControlToValidate="ddlSearch" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                   <b>Field Value</b>
                                    <asp:TextBox ID="txtFieldValue" runat="server" class="form-control"></asp:TextBox>
                                    <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Group24" ErrorMessage="Enter Field Value" ControlToValidate="txtFieldValue" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>

                            </div>


                        </div>


                    </div>--%>


                    <div class="box-footer">
                        <div class="pull-right">

                            <asp:Button ID="btnExpiry" runat="server" Text="Save" ValidationGroup="Group24" class="btn btn-info" OnClick="btnExpiry_Click" />

                          
                        </div>

                    </div>

                    <br/><br/>


                   
                        <div class="box-body table-responsive ">
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
                            
                            
                            <%--<table id="example1" class="table table-bordered table-striped ">
                                <thead>
                                <tr>
                                    <th>Search By</th>
                                    <th>Field Value</th>
                            
                               
                                    <th>Controls</th>
                                </tr>
                                </thead>
                                <tbody>
                    
                        

                                <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                    <ItemTemplate>
                                        <tr>
                                            <td id="searchBy" runat="server"><%#Eval("searchBy") %></td>
                                            <td id="fieldValue" runat="server"><%#Eval("fieldValue") %></td>

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
                                    <th>Search By</th>
                                    <th>Field Value</th>
                            
                               
                                    <th>Controls</th>
                                </tr>
                                </tfoot>
                            </table>--%>
                    

                         <%--   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">

                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:BoundField DataField="searchBy" HeaderText="Search By"/>
                                    <asp:BoundField DataField="fieldValue" HeaderText="Field Value"/>
                                    
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