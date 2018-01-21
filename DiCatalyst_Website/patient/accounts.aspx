<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="accounts.aspx.cs" Inherits="Patient_accounts" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="DivMain" runat="server">
        <div class="pull-right">

            <asp:Button ID="btnPrint5" Visible="false" runat="server" Text="Preview & Print" class="btn btn-success" />
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">


                        <div class="col-lg-10">


                            <table class="tablestyle" style="width: 100%">
                                <tr>
                                    <td><b>invoiceId:</b>
                                        <asp:Label ID="invoiceIdLabel" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" CssClass="table table-bordered table-responsive" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="treatmentName" HeaderText="Treatment Name" SortExpression="treatmentName" />
                                                <asp:BoundField DataField="fee" HeaderText="Fee" SortExpression="fee" />
                                                <asp:BoundField DataField="discount" HeaderText="Discount %" SortExpression="discount" />
                                                <asp:BoundField DataField="totalAmount" HeaderText="Amount" SortExpression="totalAmount" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>

                                                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                                </asp:BoundField>
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right;">
                                        <b>Total Amount: </b>
                                        <asp:Label ID="lblTotalAmount" runat="server" Text="0"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">


                            <b>Inovice Id:</b>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="invoiceId" DataValueField="invoiceId">
                            </asp:DropDownList>
                        </div>



                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="SELECT distinct [invoiceId] FROM [dentistAccounts] WHERE (([doctorId] = @doctorId) AND ([patientId] = @patientId))">
                            <SelectParameters>
                                <asp:SessionParameter Name="doctorId" SessionField="userId" Type="String" />
                                <asp:SessionParameter Name="patientId" SessionField="PId" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>




                        <%--<asp:GridView ID="GridView2" runat="server">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button2" runat="server" Text="Pay & Generate Inovice" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>--%>



                       <%-- <div class="col-lg-1">
                            <div class="form-group">
                                <b>Total Amount</b>
                                <asp:TextBox ID="txttotal" runat="server" Enabled="false" CssClass="form-control three"></asp:TextBox>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Enter Total Amount" ControlToValidate="txttotal" class="error-message" ValidationGroup="group4"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>--%>
                         <div class="col-lg-1" style="display:none">
                            <div class="form-group">
                                <b>Due</b>
                                <asp:TextBox ID="txtdue" runat="server" Enabled="false" CssClass="form-control five"></asp:TextBox>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Enter Due" ControlToValidate="txtdue" class="error-message" ValidationGroup="group4"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-1" style="display:none">
                            <div class="form-group">
                                <b>Paid</b>
                                <asp:TextBox ID="txtpaid" runat="server" CssClass="form-control four"></asp:TextBox>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Paid Amount" ControlToValidate="txtpaid" class="error-message" ValidationGroup="group4"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-lg-1" style="display:none">
                            <div class="form-group">
                                <b>Save</b>
                                <asp:Button ID="btnAccounts" runat="server" Text="Save" class="form-control btn btn-success" ValidationGroup="group4" OnClick="btnAccounts_Click" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <asp:GridView ID="gdAccounts" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdAccounts_RowCommand" OnRowDataBound="gdAccounts_RowDataBound">
                <Columns>
                   <%-- <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                  <asp:BoundField DataField="invoiceId" HeaderText="InvoiceId" /> 
                  <asp:TemplateField HeaderText="Total Amount">
                        <ItemTemplate>
                            <asp:Label ID="lblTotalAmount" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="paid" HeaderText="Paid" />  
                        <asp:BoundField DataField="due" HeaderText="Due" />
                      
                    <asp:BoundField DataField="datetime" HeaderText="Date Time" />            
                   <%-- <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                            <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" ValidationGroup="Account" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <div id="divMsg" runat="server" style="display: none;">
        <asp:Label ID="lblNoData" runat="server" Text="No records found" Style="margin: 0px 0px 0px 490px;" Font-Bold="true"></asp:Label>
    </div>
    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="../design/bootstrap/js/bootstrap.min.js"></script>
    <script src="../design/dist/js/app.min.js"></script>
   <%-- <script>
        $(".two").on("keyup", function () {
            var temp = $(".one").val() * $(".two").val() / 100
            $(".three").val($(".one").val() - temp);
        });
        $(".four").on("keyup", function () {

            $(".five").val($(".three").val() - $(".four").val());
        });
    </script>--%>
</asp:Content>

