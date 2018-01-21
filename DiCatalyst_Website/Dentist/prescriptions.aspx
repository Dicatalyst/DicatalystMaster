<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="prescriptions.aspx.cs" Inherits="Dentist_prescriptions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">
    <style>
        .headerrow {
            padding: 10px !important;
            font-weight: bold;
        }
    </style>
    <script type="text/javascript">
        function PrintPanel() {
            alert('test');


            var tbl1 = $('<table cellpadding="0" cellspacing="0" border="1" width="100%"></table>');

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

        function PrintPrescription() {
            alert("Prescription Page");

            var tbl1 = $('<table style="width: 100%"></table>');

            var row = $('<tr></tr>');
            $('<td style="width:20%;text-align:center;"></td>').text("<img src=" + "mainportal/images/icons/images.png" + "height=" + "100" + "width=" + "100" + "/><br /><label style=" + "font-size:25px;" + ">DR. K.L. Murthy</label><br /><p style=" + "margin: 0px 0px 5px 0px; text-align:right !important" + "><i style=" + "font-size:12px;text-align:right;margin-bottom:5px;" + ">M.D.S.(Osm), DNBE(USA)</i></p><p style=" + "margin: 0px;" + ">Periodontist &amp; Implantologist</p><p style=" + "margin: 0px;" + ">ORB in Oral &amp; Maxillofascial Srgery Boston (USA)</p>").appendTo(row);
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

        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">
    <div class="tab-pane" id="Prescription1">
        
        <div class="box-body">
            <div class="row">
                <div class="field_wrapper">
                    <div class="col-lg-12">
                        <h4>
                            <b>Medicines</b>
                        </h4>
                        <div>
                            <asp:GridView ID="grvStudentDetails" runat="server" CssClass="table table-striped table-bordered table-hover" ShowFooter="True" AutoGenerateColumns="False"
                                Width="97%" Style="text-align: left">
                                <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="SNo" />
                                    <asp:TemplateField HeaderText="Medicine Type">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="pre1" CssClass="form-control">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem> Capsule </asp:ListItem>
                                                <asp:ListItem> Syrup </asp:ListItem>
                                                <asp:ListItem> Tablet </asp:ListItem>
                                                <asp:ListItem> Injection </asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="pre1" ControlToValidate="DropDownList1"
                                                ErrorMessage="*" InitialValue="Select"></asp:RequiredFieldValidator>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Medicine Name">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtMedicineName" CssClass="form-control" ValidationGroup="pre1" placeholder="Medicine Name" runat="server"></asp:TextBox>
                                            <%--                            <asp:TextBox ID="txtName" runat="server" MaxLength="50"></asp:TextBox>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="pre1" ControlToValidate="txtMedicineName"
                                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Dose">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtDose" CssClass="form-control" ValidationGroup="pre1" placeholder="Dose (MG/ML)" runat="server"></asp:TextBox>
                                            <%--   <asp:TextBox ID="txtAge" runat="server" MaxLength="3" Width="66px"></asp:TextBox>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="pre1" ControlToValidate="txtDose"
                                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtQty" CssClass="form-control" ValidationGroup="pre1" placeholder="Qty/Dispensal No." runat="server"></asp:TextBox>
                                            <%-- <asp:TextBox ID="txtAddress" runat="server" Height="55px" TextMode="MultiLine"></asp:TextBox>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="pre1" ControlToValidate="txtQty"
                                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Days">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtDays" CssClass="form-control" ValidationGroup="pre1" placeholder="Days" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="pre1" ControlToValidate="txtDays"
                                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Per/Day">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtPerDay" CssClass="form-control" ValidationGroup="pre1" placeholder="Per Day" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="pre1" ControlToValidate="txtPerDay"
                                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Interval">
                                        <ItemTemplate>

                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" ValidationGroup="pre1" RepeatDirection="Horizontal">

                                                <asp:ListItem>M</asp:ListItem>
                                                <asp:ListItem>A</asp:ListItem>
                                                <asp:ListItem>E</asp:ListItem>
                                                <asp:ListItem>N</asp:ListItem>

                                            </asp:CheckBoxList>

                                            <%--   <asp:RadioButtonList ID="RBLGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:RadioButtonList>--%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Comments">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtCommentsPres" CssClass="form-control" ValidationGroup="pre1" placeholder="Comments" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="pre1" ControlToValidate="txtCommentsPres"
                                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAdd" runat="server" Text="Add Another Medicine" ValidationGroup="pre1" OnClick="ButtonAdd_Click" />
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="id" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblId" CssClass="form-control" runat="server"></asp:Label>                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <br />
                            <%--  <center>
                <asp:Button ID="btnSave" runat="server" Text="Save Data" OnClick="btnSave_Click" />
            </center>--%>
                        </div>
                    </div>
                </div>
            </div>

            <div class="pull-right">
                <asp:LinkButton ID="btnPrescription" runat="server" ValidationGroup="pre1" Text="Save" class="btn btn-success" OnClick="btnPrescription_Click" />
                <%--<asp:LinkButton ID="btnPrint10" runat="server" Text="Preview & Print" class="btn btn-success" OnClientClick=" return PrintPrescription();"/>--%>
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Preview & Print" class="btn btn-success" OnClick="LinkButton1_Click" />
            </div>
            <div class="row">

                <div class="col-lg-12">
                    <h4>
                        <b>Medicine List:</b>
                    </h4>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="GridView3_RowDeleting" OnRowEditing="GridView3_RowEditing" 
                          AllowSorting="true" OnSorting="GridView3_Sorting" CssClass="table table-striped table-bordered table-hover">
                        <Columns>

                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" Visible="false" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="prescriptionId" HeaderText="Prescription Id" SortExpression="prescriptionId" />
                            <asp:BoundField DataField="medicineType" HeaderText="medicineType" SortExpression="medicineType" />
                            <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" SortExpression="MedicineName" />
                            <asp:BoundField DataField="Dose" HeaderText="Dose" SortExpression="Dose" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                            <asp:BoundField DataField="PerDay" HeaderText="PerDay" SortExpression="PerDay" />
                            <asp:BoundField DataField="Interval" HeaderText="Interval" SortExpression="Interval" />
                            <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                            <%--<asp:BoundField DataField="doctorId" HeaderText="doctorId" SortExpression="doctorId" />
														<asp:BoundField DataField="patientId" HeaderText="patientId" SortExpression="patientId" />--%>
                            <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
                            
                            <asp:CommandField ShowEditButton="True" CancelText="" UpdateText="" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>



                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="SELECT prescriptionId, id, medicineType, MedicineName, Dose, Quantity, Days, PerDay, Interval, Comments,  datetime FROM [dentistPrescription] WHERE (([doctorId] = @doctorId) AND ([patientId] = @patientId)) ORDER BY datetime DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="doctorId" SessionField="userId" Type="String" />
                            <asp:SessionParameter Name="patientId" SessionField="PId" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>



                </div>
            </div>




        </div>


    </div>
</asp:Content>