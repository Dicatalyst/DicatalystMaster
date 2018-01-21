<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="labTest.aspx.cs" Inherits="Admin_labTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    
    <style>
        .patientViewButtons td { padding: 3px; }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-12 col-xs-12">
      
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Lab Test</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-12">
                           <table class="table">  <tr>
                                   <td>Gender</td>
                                   <td>Test Name</td>

                                   <td>Specimen</td>

                                   <td>Convetional Value</td>

                                   <td>Unit</td>

                                   <td>SI Value</td>

                                   <td>Unit</td>

                               </tr>
                               <tr>
                                   <td><asp:RadioButtonList ID="radSelect" cssclass="radio-inline" runat="server" RepeatDirection="Vertical">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Both</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                   <td> <asp:TextBox ID="txtTestName" runat="server" CssClass="form-control"></asp:TextBox></td>

                                   <td><asp:DropDownList ID="ddlSpecimen" runat="server" CssClass="form-control"></asp:DropDownList></td>

                                   <td><asp:TextBox ID="txtConventionalUnits" runat="server" CssClass="form-control"></asp:TextBox></td>

                                   <td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                       <asp:ListItem>Select Unit</asp:ListItem>
                                       <asp:ListItem>mg/dL</asp:ListItem>
                                       <asp:ListItem>U/g Hb</asp:ListItem>
                                       <asp:ListItem>U/L</asp:ListItem>
                                       <asp:ListItem>pg/mL</asp:ListItem>
                                   </asp:DropDownList></td>

                                   <td><asp:TextBox ID="txtSiUnit" runat="server" CssClass="form-control"></asp:TextBox></td>

                                   <td><asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                       <asp:ListItem>Select Unit</asp:ListItem>
                                       <asp:ListItem>mmol/L</asp:ListItem>
                                       <asp:ListItem>µkat/L</asp:ListItem>
                                       <asp:ListItem>pmol/L</asp:ListItem>
                                       <asp:ListItem>g/L</asp:ListItem>
                                   </asp:DropDownList></td>

                                   <td>  <asp:Button ID="btnLabTest" runat="server" Text="Save" CssClass="btn btn-success pull-right" OnClick="btnLabTest_Click" /></td>

                                   
                               </tr>
                             
                           </table>

                             

                        </div>
                         

                    </div>
                    <div class="table-responsive no-padding">
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Test Name</th>
                                <th>Specimen</th>
                                <th>ConventionalUnit</th>
                                <th>SiUnit</th>
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("testName") %></td>
                                        <td><%#Eval("specimen") %></td>
                                        <td><%#Eval("conventionalUnit") %></td>
                                        <td><%#Eval("siUnit") %></td>
                                       
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
                                <th>Test Name</th>
                                <th>Specimen</th>
                                <th>ConventionalUnit</th>
                                <th>SiUnit</th>
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>
                        </table>
                        
                        

                        <%--<asp:GridView ID="gdLabTest" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdLabTest_RowCommand" >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="testName" HeaderText="Test Name"/>
                                 <asp:BoundField DataField="specimen" HeaderText="Specimen"/>
                                 <asp:BoundField DataField="conventionalUnit" HeaderText="ConventionalUnit"/>
                                 <asp:BoundField DataField="siUnit" HeaderText="SI Unit"/>
                              
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
   
    <link href="../design/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />


    <script>

        $(function () {
            $("#example1").DataTable();
        });
    </script>

</asp:Content>