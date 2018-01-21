<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminUsers.aspx.cs" Inherits="Admin.Admin_AdminUsers" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .gridbutton {
            font-size: 25px;
        }
    </style>

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-lg-12 col-xs-12">

        <div class="box box-default" style="border-color: #1e282c;">
            <div class="box-header with-border">
                <h3 class="box-title">Admin Users</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">


                <div class="box-body table-responsive no-padding">


                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Full Name*</b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">

                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Full Name" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Employee ID*</b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">

                                <asp:TextBox ID="txtEmpId" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmpId" ErrorMessage="Enter Employee ID" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                    </div>


                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Username</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Username" ControlToValidate="txtUsername" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>


                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>User Type* </b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:DropDownList ID="ddlUserLevels" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlUserLevels_SelectedIndexChanged" CssClass="form-control">
                                </asp:DropDownList>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="ddlUserLevels" ErrorMessage="Select User Levels" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>


                    </div>


                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Password*</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="user" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="adminuser" runat="server" ErrorMessage="Enter Valid Password Which Contains Atleast 8 Characters, one Digit, one Special Character" ControlToValidate="txtPassword" class="error-message" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Confirm Password* </b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" ValidationGroup="user" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtConfirmPwd" ErrorMessage="Enter Confirm Password" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="adminuser" ErrorMessage="Enter Same Password" ControlToValidate="txtConfirmPwd" ControlToCompare="txtPassword" class="error-message" Type="String"></asp:CompareValidator>
                            </div>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>E-mail Address*</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" ValidationGroup="adminuser" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Mobile </b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter Mobile No." ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="adminuser" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobile" class="error-message"></asp:RegularExpressionValidator>
                            </div>

                        </div>

                    </div>


                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Gender*</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="0">Female</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">Male</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Date of Joining </b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">

                                <asp:TextBox ID="txtDateOfJoining" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateOfJoining"></asp:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtDateOfJoining" ErrorMessage="Enter Date" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>

                    </div>



                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>ID Type*</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:DropDownList ID="ddlIdType" runat="server" CssClass="form-control">
                                </asp:DropDownList>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlIdType" ErrorMessage="Select Id Type" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>ID#* </b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtId" ErrorMessage="Enter Id" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                    </div>


                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Country*</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlCountry" ErrorMessage="Select Country" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>State* </b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                                </asp:DropDownList>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlState" ErrorMessage="Select State" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>City*</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtCity" ErrorMessage="Enter City" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Zip Code* </b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtZipCode" ErrorMessage="Enter Zip Code" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                    </div>


                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Address*</b>

                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter Address" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>
                            </div>

                        </div>


                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Upload Image</b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <asp:Image ID="imgFileUpload" Width="50px" runat="server" />
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Enter FileUpload1" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>--%>
                            </div>

                        </div>



                    </div>

                    <div class="row">

                        <div class="col-lg-offset-4 col-lg-4">
                            <div class="form-group">
                                <b>This User Type will have access to the following Features: </b>
                            </div>

                        </div>


                    </div>



                    <div class="row">


                        <div class="col-lg-offset-4 col-lg-4">
                            <div class="form-group">
                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="600px">
                                    <HeaderTemplate>
                                        <b>Associated Features:</b>
                                        <hr />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("pageName") %>'>'></asp:Label>
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:GridView ID="gdvAccesslevels" runat="server">
                                </asp:GridView>
                            </div>

                        </div>


                    </div>


                    <div class="row">

                        <div class="col-lg-8 pull-right">
                            <div class="form-group">
                                <asp:Button ID="btnSave" runat="server" CssClass="disp_button btn btn-info" OnClick="btnSave_Click" Text="Save User" ValidationGroup="adminuser" />
                                &nbsp;
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="disp_button" OnClick="btnUpdate_Click" ValidationGroup="adminuser" Visible="False" />
                                &nbsp;
                            <asp:Button ID="btnCancel" runat="server" CssClass="disp_button btn btn-info" OnClick="btnCancel_Click" Text="Cancel" />

                            </div>

                        </div>




                    </div>


                    <%--<div class="box-body table-responsive no-padding">
                    
                        
                      
                          
                            <table cellspacing="0" cellpadding="5" border="0" class="tbl_colors">
                               <tr>
                                   
                                    <td >
                                        <div class="form-group">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Full Name*"></asp:TextBox>
                                            
                                        </div>

                                    </td>
                                  
                                    <td >
                                        <div class="form-group">

                                        <asp:TextBox ID="txtEmpId" runat="server" CssClass="form-control" placeholder="Employee ID*"></asp:TextBox>
                                            
                                            </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td >Username</td>
                                    <td >
                                        
                                        <div class="form-group">
                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                    </td>
                                    <td>Upload Image</td>
                                    <td>
                                        <div class="form-group">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td >Password* </td>
                                    <td >
                                        <div class="form-group">
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="user" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            </div>
                                    </td>
                                    <td>Confirm 
                        * </td>
                                    <td>
                                        
                                        <div class="form-group">
                                        <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" ValidationGroup="user" CssClass="form-control"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPwd" ErrorMessage="Password Mismatch" ForeColor="#CC0000" ValidationGroup="user"></asp:CompareValidator>
                                            </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td >E-mail Address* </td>
                                    <td >
                                        <div class="form-group">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                    </td>
                                    <td>Mobile</td>
                                    <td>
                                        <div class="form-group">
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td >Gender*</td>
                                    <td >
                                        <div class="form-group">
                                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" >
                                            <asp:ListItem Value="0">Female</asp:ListItem>
                                            <asp:ListItem Value="1" Selected="True">Male</asp:ListItem>
                                        </asp:RadioButtonList>
                                            </div>
                                    </td>
                                    <td>Date of Joining</td>
                                    <td>
                                        <div class="form-group">
                                        <asp:TextBox ID="txtDateOfJoining" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDateOfJoining"></asp:CalendarExtender>
                                            </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td >ID Type* 	</td>
                                    <td >
                                        <div class="form-group">
                                        <asp:DropDownList ID="ddlIdType" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                            </div>
                                    </td>
                                    <td>ID#*</td>
                                    <td>
                                        <div class="form-group">
                                        <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td >Country* </td>
                                    <td >
                                        <div class="form-group">
                                        <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" CssClass="form-control">
                                        </asp:DropDownList>
                                            </div>
                                    </td>
                                    <td>State*</td>
                                    <td>
                                        <div class="form-group">
                                        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                            </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td >City* </td>
                                    <td >
                                        <div class="form-group">
                                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                    </td>
                                    <td>Zip Code*</td>
                                    <td>
                                        <div class="form-group">
                                        <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td >Address* 	</td>
                                    <td >
                                        <div class="form-group">
                                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                            </div>
                                    </td>
                                    <td>User Type*</td>
                                    <td>
                                        <div class="form-group">
                                        <asp:DropDownList ID="ddlUserLevels" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlUserLevels_SelectedIndexChanged" CssClass="form-control">
                                        </asp:DropDownList>
                                            </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td >&nbsp;</td>
                                    <td  colspan="2">&nbsp;</td>
                                    <td>This User Type will have access to the following Features:<br />
                                        <br />
                                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="600px">
                                            <HeaderTemplate>
                                                <b>Associated Features:</b>
                                                <hr />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("pageName") %>'>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:GridView ID="gdvAccesslevels" runat="server">
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td  colspan="4" style="text-align: center">
                                      
                                    </td>
                                </tr>
                            </table>
                        
                    </div>--%>

                    <asp:GridView AutoGenerateColumns="false" ID="gdvAdminDetails" CssClass="list_viewnew table table-striped table-bordered table-hover" runat="server" OnRowCommand="gdvAdminDetails_RowCommand" On="gdvAdminDetails_1" AllowPaging="True" OnPageIndexChanging="gdvAdminDetails_PageIndexChanging" OnRowDataBound="gdvAdminDetails_RowDataBound">
                        <Columns>
                            <asp:TemplateField Visible="False">
                                <ItemTemplate>

                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--  <asp:BoundField DataField="" HeaderText="hotelId" Visible="false" />--%>
                            <asp:BoundField DataField="employeeId" HeaderText="Employee Id" />
                            <asp:TemplateField HeaderText="Profile Photo">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgPhoto" runat="server" ImageUrl='<%# Eval("photo")%>' Width="40px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="firstName" HeaderText="First Name" />
                            <asp:BoundField DataField="username" HeaderText="Username" />
                            <asp:BoundField DataField="password" HeaderText="Password" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" />
                            <asp:BoundField DataField="dateOfJoining" HeaderText="Date Of Joining" />

                            <asp:TemplateField HeaderText="UserType">
                                <ItemTemplate>



                                    <asp:Literal ID="ltlUserType" runat="server"></asp:Literal>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField  HeaderText="State">
                                <ItemTemplate>

                                    <asp:Literal ID="ltlState" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country">
                                <ItemTemplate>

                                    <asp:Literal ID="ltlCountry" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Id Type">
                                <ItemTemplate>

                                    <asp:Literal ID="ltlIdType" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:BoundField DataField="idNo" HeaderText="ID No" />

                            <asp:BoundField DataField="city" HeaderText="City" />
                            <asp:BoundField DataField="zipcode" HeaderText="Zipcode" />
                            <asp:BoundField DataField="address" HeaderText="Address" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="imgEdit" CommandName="editrow" CommandArgument='<%#Container.DataItemIndex %>' runat="server"><i class="fa fa-edit gridbutton"></i></asp:LinkButton>
                                    <asp:LinkButton ID="ingDel" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument='<%#Container.DataItemIndex %>'><i class="fa fa-trash-o gridbutton" ></i></asp:LinkButton>

                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <b style="color: #444">Please select property to select admin details</b>
                        </EmptyDataTemplate>
                        <EmptyDataRowStyle BackColor="#EEEEEE" ForeColor="White" BorderColor="Window" />
                    </asp:GridView>


                </div>
            </div>
        </div>
    </div>


    <!-- For Validation -->


    <script src="../validation/js/scrupulous.js"></script>

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

</asp:Content>
