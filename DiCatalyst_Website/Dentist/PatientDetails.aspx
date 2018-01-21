<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientDetails.aspx.cs" Inherits="Dentist_ViewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 150px;
            padding:4px 2px 4px 2px;
        }
        .auto-style2 {
            width: 364px;
        }
        .auto-style3 {
            width: 200px;
            padding:4px 2px 4px 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="text-align:center"><u>Patient Details</u></h1>
        <table>
            <tr>
                <td class="auto-style2">
                    <table>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblPatientId" runat="server" CssClass="lbl" Width="100px" Text="Patient Id :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtPatientId" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblPatientName" runat="server" CssClass="lbl" Text="Patient Name :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtPatientName" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblAge" runat="server" CssClass="lbl" Text="Age :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtAge" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblGender" runat="server" CssClass="lbl" Text="Gender :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtGender" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblMaritalStatus" runat="server" CssClass="lbl" Text="Marital Status :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtMaritalStatus" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblOccupation" runat="server" CssClass="lbl" Text="Occupation :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtOccupation" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblChiefComplaint" runat="server" CssClass="lbl" Text="Chief Complaint :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtChiefComplaint" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblAddress" runat="server" CssClass="lbl" Text="Address :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtAddress" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblMobile" runat="server" CssClass="lbl" Text="Mobile Number :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtMobile" runat="server" Font-Size="14px" disabled="true" style="width: 150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblEmail" runat="server" CssClass="lbl" Text="Email :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtEmail" runat="server" Font-Size="14px" disabled="true" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="vertical-align:top; padding:40px 2px 2px 2px;" >
                    <asp:Image runat="server" ID="imgPatient" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
