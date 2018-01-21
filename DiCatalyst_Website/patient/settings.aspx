<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="settings.aspx.cs" Inherits="patient_settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />
    <script type="text/javascript">
        //Below function added by Ram
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charcode = (evt.which) ? evt.which : evt.keycode;
            if (charcode > 31 && (charcode < 48 || charcode > 57)) {
                return false;
            }
            return true;
        }

        $(document).ready(function () {
            $('[id$=txtMobileNo]').on('keyup', function () {
                if (parseInt($('[id$=txtMobileNo]').val().substr(0, 1)) < 7) {
                    $('[id$=txtMobileNo]').val('');
                }
            });
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-primary" style="border-color: #484444">
                <div class="box-header with-border">
                    <h3 class="box-title">Profile</h3>
                    <%--<button type="button" class="btn pull-right" style="background-color:#484444;color:white">Dummy</button>--%>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">
                    <%--Below table added by Ram--%>

                <table class="table">
                    <tr>
                        <td>Name</td>
                        <td>
                            <div class="input-group">
                                <div class="input-group-btn">
                                    <<asp:DropDownList ID="ddlsal" Width="80px" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="Mr">Mr</asp:ListItem>
                                        <asp:ListItem Value ="Mrs">Mrs</asp:ListItem>
                                        <asp:ListItem Value="Ms">Ms</asp:ListItem>
                                        <asp:ListItem Value="Baby">Baby</asp:ListItem>
                                        <asp:ListItem Value="Master">Master</asp:ListItem>


                                    </asp:DropDownList>
                                </div>
                                <!-- /btn-group -->
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqName" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtName" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Age:</td>
                        <td>
                            <asp:TextBox ID="txtAge" runat="server" MaxLength="2" OnKeypress="return isNumber(event);" CssClass="form-control"></asp:TextBox>
                            <div class="form-group">
                                <asp:RequiredFieldValidator ID="reqAge" runat="server" ErrorMessage="Enter Age" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revAge" runat="server" ErrorMessage="Enter Valid Age (Not more than 2 Digits)" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Marital Status</td>
                        <td>
                            <asp:RadioButtonList ID="rblMarital" runat="server" RepeatDirection="Horizontal">

                                <asp:ListItem Value="0">Single</asp:ListItem>
                                <asp:ListItem Value="1">Married</asp:ListItem>
                            </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">Male</asp:ListItem>
                                <asp:ListItem Value="0">Female</asp:ListItem>
                            </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td>Mobile No.:</td>
                        <td>
                            <asp:TextBox ID="txtMobileNo" runat="server" OnKeypress="return isNumber(event);" MaxLength="10" CssClass="form-control"></asp:TextBox>

                            <div class="form-group">

                                <asp:RequiredFieldValidator ID="reqMobile" runat="server" ErrorMessage="Enter Mobile No." ControlToValidate="txtMobileNo" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revMobile" ValidationGroup="g1" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>

                            </div>

                        </td>




                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

                            <div class="form-group">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmailId" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmailId" class="error-message" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>Occupation</td>
                        <td>
                            <asp:TextBox ID="txtOccupation" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <%--<tr>
                        <td>Cheif Complaint</td>
                        <td>
                            <asp:TextBox ID="txtChiefComplaint" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>

                            <div class="form-group">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Chief Complaint (Maximum 200 characters)" ControlToValidate="txtChiefComplaint" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </td>
                    </tr>--%>
                    <%--<tr>
                        <td>Consultation Fee</td>
                        <td>
                            <asp:TextBox ID="txtConsultationFee" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>--%>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-info" ValidationGroup="g1" OnClick="btnUpdate_Click" /></td>
                    </tr>
                </table>
                </div>
            </div>
        </div>
    
    <div class="PopUp" id="divPopUp" runat="server" clientidmode="Static" style="display:none;">
    <div class="popClick">
    </div>
    <div class="form" style="position: absolute; left: 50%; top: 50%; width: 32%;
        margin: -105px 0 0 -230px; z-index: 999999999999; background-color: #9c9a9a; padding: 30px;">
        <div runat="server" id="divAleRt">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnOk" runat="server" Text="Ok" class="btn btn-info" OnClick="btnOk_Click" />
        <div class="clear">
        </div>
    </div>
</div>
<!-- popup end -->
</asp:Content>