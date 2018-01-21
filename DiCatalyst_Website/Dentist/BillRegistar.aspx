<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="BillRegistar.aspx.cs" Inherits="Dentist_BillRegistar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">

    <style>
        .btnedit { padding: 5px !important; }

        .Buttons td {

            padding: 3px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">

    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #ff2971">
                <div class="box-header with-border">
                    <h3 class="box-title">Bill Register</h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">


                    <div class="box-body table-responsive ">
                       <b>Reg Collections</b>
                        
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Reg No</th>
                                <th>Patient Name</th>


                                <%--<th>RefDoc_Org</th>--%>
                                <th>Total Amt</th>
                                <th>Disc Amt</th>                                
                                 <th>Net Amt</th>
                                <th>Total Paid Amt</th>

                                <th>Paid Amt</th>
                              <%--  <th>Post Disc</th>--%>
                                <th>Due Amt</th>
                                <th>Treatment Name</th>
                              <%--  <th>Investigations</th>--%>
                               
                                <%--<th>Controls</th>--%>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server" >
                                <ItemTemplate>
                                    <tr>
                                       <%-- <td><%#Eval("regNo") %></td>
                                        <td><%#Eval("billNo") %></td>
                                        <td><%#Eval("patientName") %></td>
                                        <td><%#Eval("refDoc_Org") %></td>
                                        <td><%#Eval("totalAmt") %></td>
                                        <td><%#Eval("discAmt") %></td>
                                        
                                        <td><%#Eval("netAmt") %></td>
                                        <td><%#Eval("paidAmt") %></td>
                                        <td><%#Eval("postDisc") %></td>
                                        <td><%#Eval("duePaid") %></td>
                                        <td><%#Eval("dueAmt") %></td>
                                        <td><%#Eval("investigations") %></td>--%>

                                         <td><%#Eval("regNo") %></td>
                                      
                                        <td><%#Eval("patientName") %></td>


                                        <%--<td><%#Eval("refDoc_Org") %></td>--%>
                                        <td><%#Eval("fee") %></td>                                        
                                        <td><%#Eval("discount") %></td>
                                        <td><%#Eval("totalAmount") %></td>
                                         <td><%#Eval("TotalPaid") %></td>
                                        <td><%#Eval("paid") %></td>
                                        <td><%#Eval("due") %></td>
                                        <%--<td><%#Eval("duePaid") %></td>--%>
                                        <%--<td><%#Eval("dueAmt") %></td>--%>
                                        <td><%#Eval("TreatmentAdvice") %></td>
                                       

                                        <%--<td><table class="Buttons">--%>
                                         <%--   <tr>
                                       
                                                <td>
                                                    <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning">
                                                        <i class="fa fa-edit"></i></asp:LinkButton></td>
                                                <td>
                                                    <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger">
                                                        <i class="fa fa-trash-o"></asp:LinkButton></td>
                                            </tr>--%>
                                        <%--</table></td>--%>
                                    </tr>
                                </ItemTemplate>

                            </asp:Repeater>
                            </tbody>
                         <%--   <tfoot>
                            <tr>
                                <th>Reg No</th>
                                <th>Bill No</th>
                                <th>Patient Name</th>
                                <th>Total Amt</th>
                                <th>Disc Amt</th>
                                
                                <th>Net Amt</th>
                                <th>Paid Amt</th>
                                <th>Post Disc</th>
                                <th>Due Paid</th>
                                <th>Due Amt</th>
                                <th>TreatmentName</th>
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>--%>
                        </table>
                        
                        

                        
                        


                        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="RegNo" HeaderText="RegNo"/>
                                <asp:BoundField DataField="BillNo" HeaderText="BillNo"/>
                                <asp:BoundField DataField="PatientName" HeaderText="PatientName"/>
                                <asp:BoundField DataField="RefDoc_Org" HeaderText="RefDoc_Org"/>
                                <asp:BoundField DataField="TotalAmt" HeaderText="TotalAmt"/>
                                <asp:BoundField DataField="DiscAmt" HeaderText="DiscAmt"/>
                                <asp:BoundField DataField="NetAmt" HeaderText="NetAmt"/>
                                <asp:BoundField DataField="PaidAmt" HeaderText="PaidAmt"/>
                                <asp:BoundField DataField="PostDisc" HeaderText="PaidAmt"/>
                                <asp:BoundField DataField="DuePaid" HeaderText="PaidAmt"/>
                                <asp:BoundField DataField="DueAmt" HeaderText="PaidAmt"/>
                                <asp:BoundField DataField="Investigations" HeaderText="PaidAmt"/>

                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>--%>


                        <br/>
                        <br/>
                        <br/>


                        <%--<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView2_RowCommand">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="RegNo" HeaderText="RegNo"/>
                                <asp:BoundField DataField="BillNo" HeaderText="BillNo"/>
                                <asp:BoundField DataField="PatientName" HeaderText="PatientName"/>
                                <asp:BoundField DataField="RefDoc_Org" HeaderText="RefDoc_Org"/>
                                <asp:BoundField DataField="TotalAmt" HeaderText="TotalAmt"/>
                                <asp:BoundField DataField="DiscAmt" HeaderText="DiscAmt"/>
                                <asp:BoundField DataField="NetAmt" HeaderText="NetAmt"/>
                                <asp:BoundField DataField="PaidAmt" HeaderText="PaidAmt"/>
                                <asp:BoundField DataField="PostDisc" HeaderText="PostDisc"/>
                                <asp:BoundField DataField="DuePaid" HeaderText="DuePaid"/>
                                <asp:BoundField DataField="DueAmt" HeaderText="DueAmt"/>
                                <asp:BoundField DataField="Investigations" HeaderText="Investigations"/>

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


    $(function () {
        $("#example2").DataTable();
    });
</script>




</asp:Content>
