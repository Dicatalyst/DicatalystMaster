<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="labInvestigationProfile.aspx.cs" Inherits="Admin_labInvestigationProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>

        .patientViewButtons td {
             padding: 3px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-12 col-xs-12">
      
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Lab Investigation Profile</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">

                        <div class="col-lg-12">

                            <div class="col-lg-6">

                                <div class="form-group">


                                    <b>Investigation Profile Name</b>

                                      <asp:TextBox ID="txtProfileName" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                                

                                <asp:Button ID="btnSaveInvProfile" runat="server" Text="Save" CssClass="btn btn-success pull-right" OnClick="btnSaveInvProfile_Click" />

                            </div>


                        </div>

                    </div>
                    

                    <div class="table-responsive no-padding">
                    
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>investigationProfileName</th>
                               

                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("investigationProfileName") %></td>
                                       
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
                                <th>NameinvestigationProfileName</th>
                               
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>
                        </table>
                        
                        
                        
                        
                        
                        
                        
                        

                        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand" >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="investigationProfileName" HeaderText="Investigation Profile Name"/>
                              
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
