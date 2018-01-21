<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/Settings.master" AutoEventWireup="true" CodeFile="addReceptionist.aspx.cs" Inherits="Dentist_addReceptionist" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
    <div class="col-lg-12 col-xs-12">

        <div class="box box-default" style="border-color: #1e282c;">
            <div class="box-header with-border">
                <h3 class="box-title">Add Receptionist</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">


                <div class="box-body table-responsive no-padding">


                  

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
                        <div class="col-lg-2">
                            <div class="form-group">
                                <b>Address</b>
                            </div>

                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">

                                <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Address" ValidationGroup="adminuser" CssClass="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </div>

                   
                 


                 

                    <div class="row">
                        <div class="col-lg-8 pull-right">
                            <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" CssClass="disp_button btn btn-info" OnClick="btnSave_Click" Text="Save User" ValidationGroup="adminuser" />                  
                            </div>
                        </div>
                    </div>
                    <%--Commented by Ram--%>
   <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
       <Columns>
           <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
           <asp:BoundField DataField="fullName" HeaderText="fullName" SortExpression="fullName" />
           <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
           <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
           <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
           <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
           <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
           <asp:BoundField DataField="dateOfJoining" HeaderText="dateOfJoining" SortExpression="dateOfJoining" />
           <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
           <asp:BoundField DataField="doctorId" HeaderText="doctorId" SortExpression="doctorId" />
           <asp:TemplateField HeaderText="Controls">
               <ItemTemplate>
                   <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning" CommandName="update">
                                                        <i class="fa fa-edit"></i></asp:LinkButton>
                   <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger" CommandName="delete"> <i class="fa fa-trash-o"></asp:LinkButton>
               </ItemTemplate>
           </asp:TemplateField>
       </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="SELECT * FROM [receptionist] WHERE ([doctorId] = @doctorId)">
                            <SelectParameters>
                                <asp:SessionParameter Name="doctorId" SessionField="userId" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>--%>



                    <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <td>id</td>
                                <th>fullName</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>email</th>
                                <th>mobile</th>
                                <th>gender</th>
                                <th>Date of joining</th>
                                <th>Address</th>
                                <th>doctorId</th>
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
                                <ItemTemplate>
                                    <tr>
                                        <td id="id" runat="server"><%#Eval("id") %></td>
                                        <td id="Name" runat="server"><%#Eval("fullName") %></td>
                                        <td id="UserName" runat="server"><%#Eval("Username") %></td>
                                        <td id="Pwd" runat="server"><%#Eval("Password") %></td>
                                        <td id="Email" runat="server"><%#Eval("email") %></td>
                                        <td id="Mobile" runat="server"><%#Eval("mobile") %></td>
                                        <td id="Gender" runat="server"><%#Eval("gender") %></td>
                                        <td id="DOJ" runat="server"><%#Eval("dateOfJoining") %></td>
                                        <td id="Address" runat="server"><%#Eval("Address") %></td>
                                        <td id="Td3" runat="server"><%#Eval("doctorid") %></td>
                                       

                                        <td><table class="Buttons">
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning" CommandName="update">
                                                        <i class="fa fa-edit"></i></asp:LinkButton></td>
                                                <td>
                                                    <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger" CommandName="delete" OnClientClick="return confirm('Are you sure you want to delete this user?')"> <i class="fa fa-trash-o"></asp:LinkButton></td>

                                                        
                                            </tr>
                                        </table></td>
                                    </tr>
                                </ItemTemplate>

                            </asp:Repeater>
                            </tbody>
                        </table>


                </div>
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

