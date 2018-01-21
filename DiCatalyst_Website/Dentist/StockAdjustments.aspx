<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="StockAdjustments.aspx.cs" Inherits="Dentist_StockAdjustments" %>

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
                    <h3 class="box-title">Stock Adjustments </h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-4">

                            <div class="form-group">
                                <b>Product Category</b>
                                <asp:DropDownList ID="ddlProduct" runat="server" CssClass="form-control">

                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Product Category1</asp:ListItem>
                                    <asp:ListItem>Product Category2</asp:ListItem>

                                </asp:DropDownList>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group42" runat="server" ErrorMessage="Select Product Category" ControlToValidate="ddlProduct" class="error-message"></asp:RequiredFieldValidator>

                                </div>


                            </div>

                        </div>


                        <div class="col-lg-4">


                            <div class="form-group">
                              <b>Search By</b>
                                <asp:DropDownList ID="ddlSearch" runat="server" CssClass="form-control">

                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>value1</asp:ListItem>
                                    <asp:ListItem>value2</asp:ListItem>

                                </asp:DropDownList>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group42" runat="server" ErrorMessage="Enter Search Value" ControlToValidate="ddlSearch" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>

                        </div>


                        <div class="col-lg-4">

                            <div class="form-group">
                               <b>Field Value</b>
                                <asp:TextBox ID="txtFieldValue" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="DelID" runat="server" Visible="false"></asp:Label>
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group42" runat="server" ErrorMessage="Enter Field Value" ControlToValidate="txtFieldValue" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>


                        </div>


                    </div>

                </div>

                <div class="box-footer">
                    <div class="pull-right">
                        <asp:Button ID="btnStock" runat="server" Text="Save" ValidationGroup="Group42" class="btn btn-info" OnClick="btnStock_Click"/>

                    </div>

                </div>


               
                    <div class="box-body table-responsive ">
                        
                        
                        
                          
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Product Category</th>
                                <th>Search By</th>
                                <th>Field Value</th>
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                <ItemTemplate>
                                    <tr>
                                        <td id="productCategory" runat="server"><%#Eval("productCategory") %></td>
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
                                <th>Product Category</th>
                                <th>Search By</th>
                            <th>Field Value</th>
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>
                        </table>
                    

                        

                        <%--<asp:GridView ID="gdStockAdj" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdStockAdj_RowCommand">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="productCategory" HeaderText="Product Category"/>
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