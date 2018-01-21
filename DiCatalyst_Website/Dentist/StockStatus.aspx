<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/DentistInventory.master" AutoEventWireup="true" CodeFile="StockStatus.aspx.cs" Inherits="Dentist_StockStatus" %>

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
                    <h3 class="box-title">Stock Status</h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-6">

                            <div class="form-group">
                              <b>Report Type</b>
                                <asp:DropDownList ID="ddlReport" runat="server" CssClass="form-control">

                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>report type1</asp:ListItem>
                                    <asp:ListItem>report type2</asp:ListItem>

                                </asp:DropDownList>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group40" ErrorMessage="Enter Report Type" ControlToValidate="ddlReport" class="error-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="form-group">
                               <b>Search By</b>
                                <asp:TextBox ID="txtSearchBy" runat="server" class="form-control"></asp:TextBox>

                            </div>

                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                               <b>Field Value</b>
                                <asp:TextBox ID="txtFieldValue" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group40" runat="server" ErrorMessage="Enter Field Value" ControlToValidate="txtFieldValue" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>

                            <div class="form-group">
                           <b>Product Category</b>
                                <asp:TextBox ID="txtProductCategory" runat="server" class="form-control"></asp:TextBox>

                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Group40" runat="server" ErrorMessage="Enter Product Category" ControlToValidate="txtProductCategory" class="error-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>


                        </div>


                    </div>


                </div>
                <div class="box-footer">
                    <div class="pull-right">

                        <asp:Button ID="btnStock" runat="server" Text="Save" ValidationGroup="Group40"  class="btn btn-info" OnClick="btnStock_Click" />
                       
                       
                    </div>

                </div>

               
                    <div class="box-body table-responsive ">
                        
                        
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Report Type</th>
                                <th>Field Value</th>
                                <th>Search By</th>
                                <th>Product Category</th>
                            
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server" >
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("reportType") %></td>
                                        <td><%#Eval("fieldValue") %></td>
                                        <td><%#Eval("searchBy") %></td>
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
                                <th>Report Type</th>
                                <th>Field Value</th>
                                <th>Search By</th>
                                <th>Product Category</th>
                            
                            
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>
                        </table>

                        <%--<asp:GridView ID="gdstock" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdstock_RowCommand"  >

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   
               
                                <asp:BoundField DataField="reportType" HeaderText="Report Type"/>
                                <asp:BoundField DataField="fieldValue" HeaderText="Field Value"/>
                                <asp:BoundField DataField="searchBy" HeaderText="SearchBy"/>
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