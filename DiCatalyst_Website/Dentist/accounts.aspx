<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="accounts.aspx.cs" Inherits="Dentist_accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">
    <style>
        .tablestyle {
            padding: 5px;
        }

            .tablestyle td {
                padding: 5px;
            }
    </style>
     <script type="text/javascript">
         function PrintPanel() {

             var tbl1 = $('<table cellpadding="0" cellspacing="0" border="1" width="100%"></table>');

             //            var row = $('<tr></tr>');
             //            $('<td colspan="1"  align="left"></td>').text("D.L.NO.").appendTo(row);
             //            $('<td colspan="1"  align="left"></td>').text("20-AP/04/02/2015-128188").appendTo(row);
             //            $('<td colspan="4"></td>').text("").appendTo(row);
             //            row.appendTo(tbl1);
             //            var row = $('<tr></tr>');
             //            $('<td colspan="1" align="left"></td>').text("").appendTo(row);
             //            $('<td colspan="1" align="left"></td>').text("21-AP/04/02/2015-128189").appendTo(row);
             //            $('<td colspan="4"></td>').text("").appendTo(row);
             //            row.appendTo(tbl1);

             var row = $('<tr></tr>');
             $('<td colspan="3" style="font-size:22;font-weight:bolder" align="left"></td>').text("Vanaja Dental Care").appendTo(row);
             $('<td colspan="2"></td>').text("").appendTo(row);
             $('<td colspan="1"  align="left"></td>').text("").appendTo(row);
             $('<td colspan="3"  align="left"></td>').text(",").append("<br>").append("").appendTo(row);
             row.appendTo(tbl1);

             var row = $('<tr></tr>');
             $('<td colspan="4" align="left"></td>').text("11-1-1/1, ").append("Chanda Nagar, Hyderabad, Ph:1111111").appendTo(row); //append("<br>").append("Rajamundry, Andhra Pradesh 533103").append("<br>").append("Ph.0883-6452360").
             $('<td colspan="1"></td>').text("").appendTo(row);
             $('<td colspan="1" align="left"></td>').text("").appendTo(row);
             $('<td colspan="3" align="left"></td>').text("").appendTo(row);
             row.appendTo(tbl1);

             var row = $('<tr></tr>');
             $('<td colspan="3" align="left">&nbsp;</td>').text("").appendTo(row);
             $('<td colspan="2"></td>').text("").appendTo(row);
             $('<td colspan="1" align="left"></td>').text("").appendTo(row);
             $('<td colspan="3" align="left"></td>').text("").appendTo(row);
             row.appendTo(tbl1);

             //var row = $('<tr></tr>');
             //$('<td colspan="6"></td>').text("--------------------------------------------------------------------------------------------------------------------------------------------").appendTo(row);
             //row.appendTo(tbl1);

             var row = $('<tr></tr>');
             $('<td align="left" colspan="1"></td>').text("Customer:").appendTo(row);
             $('<td align="left" colspan="2"></td>').text($("#txtCustomerName").val()).appendTo(row);
             $('<td colspan="1"></td>').text("").appendTo(row);
             $('<td colspan="1"></td>').text("").appendTo(row);
             $('<td align="right" colspan="1"></td>').text("Date:").appendTo(row);
             $('<td align="right" colspan="3"></td>').text((new Date()).format('d-MM-yyyy')).appendTo(row);
             row.appendTo(tbl1);

             var row = $('<tr></tr>');
             $('<td align="left" colspan="1"></td>').text("Doctor:").appendTo(row);
             $('<td align="left" colspan="2"></td>').text($("#txtDoctor").val()).appendTo(row);
             $('<td colspan="1"></td>').text("").appendTo(row);
             $('<td colspan="1"></td>').text("").appendTo(row);
             $('<td align="right" colspan="1"></td>').text("Bill No:").appendTo(row);
             $('<td align="right" colspan="3"></td>').text($("#txtBillNo").val()).appendTo(row);
             row.appendTo(tbl1);

             var row = $('<tr></tr>');
             $('<td colspan="9"></td>').text("------------------------------------------------------------------------------------------------------------------------------------------------").appendTo(row);
             row.appendTo(tbl1);



             //            var row = $('<tr></tr>');
             //            $('<td align="left" colspan="1"></td>').text("Date:").appendTo(row);
             //            $('<td align="left" colspan="1"></td>').text((new Date()).format('d-MM-yyyy')).appendTo(row);
             //            $('<td colspan="4"></td>').text("").appendTo(row);
             //            row.appendTo(tbl1);

             //            var row = $('<tr></tr>');
             //            $('<td align="left" colspan="1"></td>').text("Bill No:").appendTo(row);
             //            $('<td align="left" colspan="1"></td>').text($("#txtBillNo").val()).appendTo(row);
             //            $('<td colspan="4"></td>').text("").appendTo(row);
             //            row.appendTo(tbl1);

             row = $('<tr></tr>');
             $('<td align="left" colspan="3" style="width:25%"></td>').text("Treatment Name").appendTo(row);
             $('<td align="left" colspan="3" style="width:25%"></td>').text("Fee").appendTo(row);
             $('<td align="left" colspan="1" style="width:25%"></td>').text("Discount %").appendTo(row);
             $('<td align="left" colspan="2" style="width:25%"></td>').text("Amount").appendTo(row);
             row.appendTo(tbl1);

             row = $('<tr></tr>');
             $('<td colspan="9"></td>').text("------------------------------------------------------------------------------------------------------------------------------------------------").appendTo(row);

             row.appendTo(tbl1);

             var cnt = 0, qty = 0, amount = 0;
             var productID, company, hsnCode, batch;
             debugger
             //$("#ContentPlaceHolder1_ChildContent2_GridView1 tr").each(function () {
             //    var i = 0;
             //    $(this).find('td').each(function () {
             //        if (i == 0) {
             //            productID = $(this).text();
             //        }
             //        if (i == 1) {
             //            company = $(this).text();
             //        }
             //        if (i == 2) {
             //            hsnCode = $(this).text();
             //        }
             //        if (i == 3) {
             //            batch = $(this).text();
             //        }
             //        i++;
             //    });
                 
             //});

             $("#ContentPlaceHolder1_ChildContent2_GridView1 tr").each(function () {
                 var i = 0;
                 $(this).find('td').each(function () {
                     if (i == 0) {
                         productID = $(this).text();
                     }
                     if (i == 1) {
                         company = $(this).text();
                     }
                     if (i == 2) {
                         hsnCode = $(this).text();
                     }
                     if (i == 3) {
                         batch = $(this).text();
                     }
                     i++;
                 });
                 
                 if (productID == undefined) { } else {
                     row = $('<tr></tr>');
                     $('<td style="width:25%" colspan="3" align="left"></td>').text(productID).appendTo(row);
                     $('<td style="width:25%" colspan="3" align="left"></td>').text(company).appendTo(row);
                     $('<td style="width:25%" colspan="1" align="left"></td>').text(hsnCode).appendTo(row);
                     $('<td style="width:25%" colspan="2" align="left"></td>').text(batch).appendTo(row);
                     row.appendTo(tbl1);
                    
                     cnt++;
                     amount = parseFloat(amount) + parseFloat(batch);
                     alert(batch);
                     alert(amount);
                    //qty = qty + parseInt(quantity);
                 }
             });

             row = $('<tr></tr>');
             $('<td colspan="9"></td>').text("--------------------------------------------------------------------------------------------------------------------------------------------").appendTo(row);
             row.appendTo(tbl1);

             row = $('<tr></tr>');
             $('<td colspan="1"></td>').text("").appendTo(row);
             $('<td colspan="2"></td>').text("").appendTo(row);
             $('<td colspan="1"></td>').text("").appendTo(row);
             $('<td colspan="2"></td>').text("").appendTo(row);
             $('<td colspan="3" align="right"></td>').text("Gross Amount: Rs." + amount.toString()).appendTo(row);
             row.appendTo(tbl1);

             row = $('<tr></tr>');
             $('<td colspan="6"></td>').text("").appendTo(row);
             $('<td colspan="3" align="right"></td>').text("Discount Amount: Rs.0").appendTo(row);
             row.appendTo(tbl1);

             row = $('<tr></tr>');
             $('<td colspan="6"></td>').text("").appendTo(row);
             $('<td colspan="3" align="right"></td>').text("Net Amount: Rs." + amount.toString()).appendTo(row);
             row.appendTo(tbl1);

             var row = $('<tr></tr>');
             $('<td colspan="9"></td>').text("").append("<br>").appendTo(row);
             row.appendTo(tbl1);

             row = $('<tr></tr>');
             $('<td align="left" colspan="6"></td>').text("Stocks once sold cannot be taken back.").appendTo(row);
             $('<td colspan="3" align="right"></td>').text("Sign. of Pharmacist").appendTo(row);
             row.appendTo(tbl1);

             var panel = tbl1;
             var printWindow = window.open('', '', 'height=400,width=1024');
             printWindow.document.write('<html><head><title></title>');
             printWindow.document.write('</head><body ><table width="100%" style="font-family:Calibri;text-align:center" text-align="center" cellpadding="0" cellspacing="0">');
             printWindow.document.write(panel[0].innerHTML);
             printWindow.document.write('</table></body></html>');
             printWindow.document.close();
             setTimeout(function () {
                 printWindow.print();
             }, 500);
             return false;
         }

         function pageLoad() {
             $('[id$=btnAccounts]').on('click', function () {
                 var DueAmt = $('[id$=txtdue]').val();
                 var Paying = $('[id$=txtpaid]').val();
                 if (parseInt(DueAmt) < parseInt(Paying)) {
                     $("#spPaid").show();
                     return false;
                 }
                 else
                     $("#spPaid").hide();
             });
             
         }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">
    <div id="DivMain" runat="server">
        <div class="pull-right">

            <asp:Button ID="btnPrint5" runat="server" Text="Preview & Print" class="btn btn-success" OnClientClick=" return PrintPanel();" />
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">


                        <div class="col-lg-10" id="divInvoice">


                            <table class="tablestyle" style="width: 100%">
                                <tr>
                                    <td><b>invoiceId:</b>
                                        <asp:Label ID="invoiceIdLabel" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" Width="100%" runat="server" OnRowDataBound="GridView1_RowDataBound" CssClass="table table-bordered table-responsive"
                                            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                                            <FooterStyle BackColor="#0d84ff" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#0d84ff" Font-Bold="True" ForeColor="White" />
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
                         <div class="col-lg-1">
                            <div class="form-group">
                                <b>Due</b>
                                <asp:TextBox ID="txtdue" runat="server" Enabled="false" CssClass="form-control five"></asp:TextBox>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Enter Due" ControlToValidate="txtdue" class="error-message" ValidationGroup="group4"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-1">
                            <div class="form-group">
                                <b>Paid</b>
                                <asp:TextBox ID="txtpaid" runat="server" CssClass="form-control four"></asp:TextBox>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Paid Amount" ControlToValidate="txtpaid" class="error-message" ValidationGroup="group4"></asp:RequiredFieldValidator>
                                    <span id="spPaid" style="display:none; color:red">Paying amount should not be greater than Due amount</span>
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-lg-1">
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
                  <%--Added by Ram start--%>
                    <asp:TemplateField HeaderText="Total Amount">
                        <ItemTemplate>
                            <asp:Label ID="lblTotalAmount" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--Added by Ram end--%>
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

