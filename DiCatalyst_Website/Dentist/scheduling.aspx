<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="scheduling.aspx.cs" Inherits="Dentist_scheduling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 700px;
        }

        .btnedit { padding: 5px !important; }

        .input_edu_strDate { margin: 5px; }
    </style>

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="col-lg-12 col-xs-12">

<div class="box box-default" style="border-color: #2f63a5">
    <div class="box-header with-border">
        <h3 class="box-title">Scheduling </h3>
        <button type="button" class="btn btn-info pull-right" onclick="open_container();" style="background-color: #2f63a5; border-color: #2f63a5;">Add Venue </button>

    </div>
    <!-- /.box-header -->
    <div class="box-body" style="display: block;">
        <div class="row">
            <div class="col-lg-4">


                <div class="form-group">
               <b>Select Venue</b>

                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Venue1</asp:ListItem>
                        <asp:ListItem>Venue2</asp:ListItem>


                    </asp:DropDownList>

                    <div class="form-group has-error">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group29" runat="server" ErrorMessage="Select Venue" class="error-message" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>


                    </div>

                </div>


                <div class="form-group">
                 <b>Select Day</b>


                    <ul>
                        <li style="display: inline-block">
                            <asp:CheckBox ID="CheckBox1" runat="server"/>Monday
                        </li>
                        <li style="display: inline-block">
                            <asp:CheckBox ID="CheckBox2" runat="server"/>Tuesday
                        </li>
                        <li style="display: inline-block">
                            <asp:CheckBox ID="CheckBox3" runat="server"/>Wednesday
                        </li>
                        <li style="display: inline-block">
                            <asp:CheckBox ID="CheckBox4" runat="server"/>Thursday
                        </li>
                        <li style="display: inline-block">
                            <asp:CheckBox ID="CheckBox5" runat="server"/>Friday
                        </li>
                        <li style="display: inline-block">
                            <asp:CheckBox ID="CheckBox6" runat="server"/>Friday
                        </li>
                        <li style="display: inline-block">
                            <asp:CheckBox ID="CheckBox7" runat="server"/>Sunday
                        </li>
                    </ul>
                </div>


                <div class="col-md-12">
                    <p style="padding-top: 10px;">
                        <b>Working Hours</b>
                    </p>
                    <table>
                        <tbody>
                        <tr>
                            <td>
                                <p class="form-control input_edu_strDate">Day</p>
                            </td>
                            <td colspan="2">
                                <p class="form-control input_edu_strDate">First Half</p>
                            </td>
                            <td colspan="2">
                                <p class="form-control input_edu_strDate">Second Half</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="form-control input_edu_strDate">Monday</p>
                                <p class="form-control input_edu_strDate">Tuesday</p>
                                <p class="form-control input_edu_strDate">Wednesday</p>
                                <p class="form-control input_edu_strDate">Thursday</p>
                                <p class="form-control input_edu_strDate">Friday</p>
                                <p class="form-control input_edu_strDate">Saturday</p>
                                <p class="form-control input_edu_strDate">Sunday</p>
                            </td>
                            <td>
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                            </td>
                            <td>
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                            </td>
                            <td>
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate1" placeholder="From" class="form-control input_edu_strDate">
                            </td>
                            <td>
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                                <input type="text" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>


                <div class="form-group">
                 <b>Set Per Patient Time</b>
                    <asp:TextBox ID="txtSetPerPatientTime" runat="server" class="form-control"></asp:TextBox>
                    <div class="form-group has-error">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group29" ErrorMessage="Enter Set Per Patient Time" ControlToValidate="txtSetPerPatientTime" class="error-message"></asp:RequiredFieldValidator>

                    </div>

                </div>


                <div class="form-group">
                    <b>Visible</b>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes"/>
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="No"/>


                </div>
                <div class="pull-right">
                    <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="Group29" class="btn btn-info"/>


                </div>


            </div>


            <div class="col-lg-8">

                <div class="box-body" style="display: block;">
                    <h4 class="box-title">
                        <b>Scheduling List</b>
                    </h4>
                    <div class="box-body table-responsive no-padding">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="Venue" HeaderText="Venue"/>
                                <asp:BoundField DataField="WorkingHours" HeaderText="WorkingHours"/>
                                <asp:BoundField DataField="PPT" HeaderText="PPT"/>

                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>



<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal-bodyku">


                <div class="col-md-12">
                    <div class="box box-primary" style="border-color: #2f63a5;">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Venue</h3>

                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-6">

                                    <div class="form-group">
                                        <b>Venue Name</b>
                                        <asp:TextBox ID="txtVenueName" runat="server" class="form-control"></asp:TextBox>

                                        <div class="form-group has-error">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group30" runat="server" ErrorMessage="Enter Venue Name" ControlToValidate="txtVenueName" class="error-message"></asp:RequiredFieldValidator>

                                        </div>

                                    </div>
                                    <div class="form-group">
                                    <b>Venue Address</b>
                                        <asp:TextBox ID="txtVenueAddress" TextMode="multiline" Columns="40" Rows="2" runat="server" CssClass="form-control"/>

                                        <div class="form-group has-error">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group30" runat="server" ErrorMessage="Enter Venue Address" ControlToValidate="txtVenueAddress" class="error-message"></asp:RequiredFieldValidator>

                                        </div>

                                    </div>

                                </div>


                                <div class="col-lg-6">
                                    <div class="form-group">
                                      <b>Venue Contact</b>
                                        <asp:TextBox ID="txtVenueContact" runat="server" class="form-control"></asp:TextBox>

                                        <div class="form-group has-error">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Group30" runat="server" ErrorMessage="Enter Venue Contact" ControlToValidate="txtVenueContact" class="error-message"></asp:RequiredFieldValidator>

                                        </div>

                                    </div>
                                    <div class="form-group">
                                      <b>Venue Map</b>
                                        <asp:TextBox ID="txtVenueMap" TextMode="multiline" Columns="40" Rows="2" runat="server" CssClass="form-control"/>

                                        <div class="form-group has-error">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Group30" runat="server" ErrorMessage="Enter Venue Map" ControlToValidate="txtVenueMap" class="error-message"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>


                                </div>

                            </div>

                            <div class="box-footer">
                                <div class="pull-right">
                                    <asp:Button ID="Button2" runat="server" Text="Save" ValidationGroup="Group30" class="btn btn-info"/>
                                </div>

                            </div>


                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="box-body" style="display: block;">
                                        <div class="box-body table-responsive no-padding">


                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView2_RowCommand">

                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>


                                                    <asp:BoundField DataField="VenueName" HeaderText="VenueName"/>
                                                    <asp:BoundField DataField="VenueContact" HeaderText="VenueContact"/>
                                                    <asp:BoundField DataField="VenueAddress" HeaderText="VenueAddress"/>
                                                    <asp:BoundField DataField="VenueMap" HeaderText="VenueMap"/>

                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                                            <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                </Columns>

                                            </asp:GridView>

                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <!-- /.box-body -->

                        <!-- /.box-footer -->
                    </div>
                    <!-- /. box -->
                </div>
                <!-- /.col -->

            </div>
            <div class="modal-footer" id="modal-footerq">
            </div>
        </div>
    </div>
</div>


<script language="javascript">
    function open_container() {

        $('#myModal').modal('show');

    }


</script>


<!-- For Validation -->


<script src="../validation/js/scrupulous.js"></script>

<script>
    $(function() {
        $('.validate-form').scrupulous();
        $('.callback-form').scrupulous({
            valid: function() {
                alert('Valid Callback - Submit the Form');
                return true;
            },
            invalid: function() {
                alert('Invalid Callback -  Stop the Form');
                return false;
            }
        });

        $('#toggle-disabled').on('change',
            function() {
                if ($(this).is(':checked')) {
                    $('#disabled-input').removeAttr('disabled');
                } else {
                    $('#disabled-input').attr('disabled', true);
                }
            });

    });
</script>


</asp:Content>