<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Dentist_Edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New event</title>
    <link rel="stylesheet" href="../design/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../design/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../design/dist/css/skins/_all-skins.min.css">

    <link href="../css/Dentist.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--
    <![endif]-->

    <link href="../css/jquery-ui.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />

    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />

    <style type="text/css">
        .table td {
            margin-left: 30px;
        }
    </style>
    <style>
        .nav-tabs-custom > .nav-tabs > li.active {
            border-top-color: #3ae3f5 !important;
        }
    </style>


</head>
<body class="dialog">
    <form id="form1" runat="server">
        <div>

            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#newPatient" data-toggle="tab" aria-expanded="true">New Patient</a>
                    </li>
                    <li class="#">
                        <a href="#recallPatient" data-toggle="tab" aria-expanded="true">Existing Patient </a>
                    </li>

                </ul>

                <div class="tab-content">
                    <div class="active tab-pane" id="newPatient">

                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="header">Edit Time Slot</div>
                            <asp:LinkButton ID="LinkButtonDelete" runat="server" OnClick="LinkButtonDelete_Click">Delete</asp:LinkButton>
                            
                            <table class="table">
                                <tr>
                                    <td>Time:</td>
                                    <td><b>From: <asp:Literal ID="TextBoxStart" runat="server"></asp:Literal> To: 
                                        <asp:Literal ID="TextBoxEnd" runat="server"></asp:Literal></b></td>
                                        
                                </tr>
                                <tr>
                                    <td>Doctor:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListRoom" CssClass="form-control" runat="server" Width="200px" Enabled="false"></asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td>Status:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListStatus" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="free">Free</asp:ListItem>
                                            <asp:ListItem Value="waiting">Waiting</asp:ListItem>
                                            <asp:ListItem Value="confirmed">Confirmed</asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td>Patient Name</td>
                                    <td>
                                        <div class="input-group">
                                            <div class="input-group-btn">
                                                <<asp:DropDownList ID="ddlsal" Width="80px" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Mr</asp:ListItem>
                                                    <asp:ListItem>Mrs</asp:ListItem>
                                                    <asp:ListItem>Ms</asp:ListItem>
                                                    <asp:ListItem>Baby</asp:ListItem>
                                                    <asp:ListItem>Master</asp:ListItem>
                                                    

                                                </asp:DropDownList>
                                            </div>
                                            <!-- /btn-group -->
                                            <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Age:</td>
                                    <td>
                                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
                                        
                                        <div class="form-group">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Age" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Age (Not more than 2 Digits)" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>

                                        </div>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Marital Status</td>
                                    <td>
                                        <asp:RadioButtonList ID="radmar" runat="server"  RepeatDirection="Horizontal">

                                            <asp:ListItem>Single</asp:ListItem>
                                            <asp:ListItem>Married</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td>
                                        <asp:RadioButtonList ID="radgen" runat="server"  RepeatDirection="Horizontal">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                </tr>
                                <tr>
                                    <td>Mobile No.:</td>
                                    <td>
                                        <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control"></asp:TextBox>
                                        
                                        <div class="form-group">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Mobile No." ControlToValidate="txtMobileNo" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="g1" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>

                                        </div>

                                    </td>
                                    
                                    
                                    

                                </tr>
                                <tr>
                                    <td>Email:</td>
                                    <td>
                                        <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"></asp:TextBox>
                                        
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
                                <tr>
                                    <td>Cheif Complaint</td>
                                    <td>
                                        <asp:TextBox ID="txtChiefComplaint" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                                        
                                        <div class="form-group">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Chief Complaint (Maximum 200 characters)" ControlToValidate="txtChiefComplaint" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                            
                                        </div>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Consultation Fee</td>
                                    <td>
                                        <asp:TextBox ID="txtConsultationFee" runat="server" CssClass="form-control"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" ValidationGroup="g1" OnClick="Button2_Click" />
                                        <asp:Button ID="ButtonOK" runat="server" OnClick="ButtonOK_Click" Text="  OK  " CssClass="btn btn-info" />
                                        <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CssClass="btn btn-info" /></td>
                                </tr>
                            </table>

                        </div>
                    </div>


                    <!-- /.tab-pane -->

                   <%-- <div class=" tab-pane" id="recallPatient">


                        <!-- /.box-header -->
                        <div class="box-body">


                            <table class="table">
                                <tr>
                                    <td></td>
                                    <td>
                                        <div class="header">Edit Time Slot</div>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButtonDelete_Click">Delete</asp:LinkButton>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Start:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                                    </td>

                                    <td>End:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Doctor:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Enabled="false"></asp:DropDownList>
                                    </td>


                                    <td>Status:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem Value="free">Free</asp:ListItem>
                                            <asp:ListItem Value="waiting">Waiting</asp:ListItem>
                                            <asp:ListItem Value="confirmed">Confirmed</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                                <tr>

                                    <td>Salutation:</td>

                                    <td>
                                        <asp:Literal ID="ltSalutation" runat="server"></asp:Literal>


                                    </td>

                                    <td>Name:</td>
                                    <td>
                                        <asp:Literal ID="ltName" runat="server"></asp:Literal>

                                    </td>


                                </tr>

                                <tr>

                                    <td>Age
                                    </td>
                                    <td>
                                        <asp:Literal ID="ltAge" runat="server"></asp:Literal></td>




                                    <td>Mobile No.
                                    </td>
                                    <td>
                                        <asp:Literal ID="ltMobileNo" runat="server"></asp:Literal></td>

                                </tr>



                                <tr>

                                    <td>Marital Status
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">

                                            <asp:ListItem>Single</asp:ListItem>
                                            <asp:ListItem>Married</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>




                                    <td>Gender
                                    </td>
                                    <td>
                                        <asp:Literal ID="ltGender" runat="server"></asp:Literal>
                                    </td>

                                </tr>

                                <tr>

                                    <td>Email Id
                                    </td>
                                    <td>
                                        <asp:Literal ID="ltEmail" runat="server"></asp:Literal></td>




                                    <td>Address
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox></td>

                                </tr>


                                <tr>

                                    <td>Occupation
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox></td>




                                    <td>Chief Complaint
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox></td>

                                </tr>

                                <tr>

                                    <td>Consultation Fee
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox></td>

                                </tr>



                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>

                                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-info" ValidationGroup="patient" OnClick="Button2_Click" />
                                        <asp:Button ID="Button3" runat="server" OnClick="ButtonOK_Click" Text="  OK  " CssClass="btn btn-info" />
                                        <asp:Button ID="Button4" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CssClass="btn btn-info" />
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>--%>

                </div>

                <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->


        </div>







    </form>

    <!-- jQuery 2.2.3 -->
    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="../design/bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../design/plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../design/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../design/dist/js/demo.js"></script>


    <script>
        $(document).ready(function () {
            $("#DropDownListStatus").change(function () {
                var status = $(this).val();
                var disabled = status === "free";
                $("#TextBoxName").prop("disabled", disabled);
                if (disabled) {
                    $("#TextBoxName").val("");
                }
            });
            $("#DropDownListStatus").change();
        });
    </script>
    <script>
        $(function () {
            $('.validate-form').scrupulous();
            $('.callback-form').scrupulous({
                valid: function () {
                    alert('Valid Callback - Submit the Form');
                    return true;
                },
                invalid: function () {
                    alert('Invalid Callback -  Stop the Form');
                    return false;
                }
            });

            $('#toggle-disabled').on('change',
                function () {
                    if ($(this).is(':checked')) {
                        $('#disabled-input').removeAttr('disabled');
                    } else {
                        $('#disabled-input').attr('disabled', true);
                    }
                });

        });
    </script>
</body>
</html>
