<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/Settings.master" AutoEventWireup="true" CodeFile="profile6.aspx.cs" Inherits="Dentist_profile6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />
    <%--For Time Picker--%>
    <link href="../design/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet" />
    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <%--<link href="../validation/css/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />

    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 50%;
        }

        .patientViewButtons td {
            padding: 3px;
        }

        p {
            width: 100%;
        }

        /*#timeSlotsModal {
            width: 100%;
        }

            #timeSlotsModal th {
                background-color: #00c0ef;
                text-align: center;
                text-transform: uppercase;
                line-height: 25px;
            }

            #timeSlotsModal tr {
                text-align: center;
                text-transform: uppercase;
                line-height: 25px;
            }*/
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#dtStartDate').datepicker();
            $("#dtEndDate").datepicker();

            $('#btnCreateAppointments').click(function () {
                $('#confirmModal').modal();
                $('[id$="btnCreateAppointment"]').show();
                $('[id$="btnDeleteAppointment"]').hide();

                var startDate = $('#dtStartDate').datepicker({ dateFormat: 'dd-mm-yy' }).val();
                var endDate = $("#dtEndDate").datepicker({ dateFormat: 'dd-mm-yy' }).val();
                var timeSlot = $('[id$="ddlTimeSlot"] :selected').val();
                $('[id$="lblStart"]').text(startDate);
                $('[id$="hdnCreateStart"]').val(startDate);
                $('[id$="lblEnd"]').text(endDate);
                $('[id$="hdnCreateEnd"]').val(endDate);
                $('[id$="lblTimeSlot"]').text(timeSlot);
                $('[id$="hdnTimeSlot"]').val(timeSlot);
            });

            $('#btnEndAppointments').click(function () {
                $('#confirmModal').modal();
                $('[id$="btnCreateAppointment"]').hide();
                $('[id$="btnDeleteAppointment"]').show();

                var startDate = $('#dtStartDate').datepicker({ dateFormat: 'dd-mm-yy' }).val();
                var endDate = $("#dtEndDate").datepicker({ dateFormat: 'dd-mm-yy' }).val();
                var timeSlot = $('[id$="ddlTimeSlot"] :selected').val();
                $('[id$="lblStart"]').text(startDate);
                $('[id$="hdnCreateStart"]').val(startDate);
                $('[id$="lblEnd"]').text(endDate);
                $('[id$="hdnCreateEnd"]').val(endDate);
                $('[id$="lblTimeSlot"]').text(timeSlot);
                $('[id$="hdnTimeSlot"]').val(timeSlot);
            });

            $('#btnTimeSlots').click(function () {
                $("#timeSlotsModal").modal();
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">
    <section class="content">
        <div class="row">
            <div class=" col-md-12" style="background-color: #ffffff; border-color: #484444">
                <div class="nav-tabs-custom">
                    <%--   <h3>  Profile </h3>--%>
                    <div class="tab-content">
                        <!-- /.tab-pane -->
                        <!-- /.tab-pane -->
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="box box-default" style="border-color: #ff2971">
                                    <div class="box-header with-border">
                                        <h2>STEP I:</h2>
                                        <p>To Create Morning/Evening timeslots for selected days..</p>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body" style="display: block;">
                                        <div class="form-group">
                                            <asp:GridView ID="gdTimings" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdTimings_RowCommand">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblId" runat="server" Visible="false" Text='<%#Eval("id") %>'></asp:Label>
                                                            <asp:CheckBox ID="chkDay" runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="day" HeaderText="Day" />
                                                    <asp:TemplateField HeaderText="Morning - From ">
                                                        <ItemTemplate>
                                                            <div class="bootstrap-timepicker">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <asp:TextBox ID="txtFFrom" runat="server" class="form-control timepicker input_edu_strDate" placeholder="From"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Morning - To">
                                                        <ItemTemplate>
                                                            <div class="bootstrap-timepicker">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <asp:TextBox ID="txtFTo" runat="server" class="form-control timepicker input_edu_strDate" placeholder="To"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Afternoon - From">
                                                        <ItemTemplate>
                                                            <div class="bootstrap-timepicker">
                                                                <div class="form-group">
                                                                    <div class="input-group">

                                                                        <asp:TextBox ID="txtsFrom" runat="server" class="form-control timepicker input_edu_strDate" placeholder="From"></asp:TextBox>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Afternooon - To">
                                                        <ItemTemplate>
                                                            <div class="bootstrap-timepicker">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <asp:TextBox ID="txtsTo" runat="server" class="form-control timepicker input_edu_strDate" placeholder="To"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                        <div class="modal fade" id="timeSlotsModal" role="dialog">
                                            <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header" style="padding: 5px 10px;">
                                                        <h3>Current avilable time slots
                                                            <button type="button" class="close pull-right" data-dismiss="modal" style="margin-right: 15px;">&times;</button>
                                                        </h3>
                                                    </div>
                                                    <div class="modal-body">
                                                        <asp:GridView ID="gdvTimeSlots" runat="server" Height="25px" Width="100%" HeaderStyle-Height="25" HeaderStyle-BackColor="#00C0EF">
                                                            <AlternatingRowStyle Height="25px" />
                                                            <SelectedRowStyle Height="25px" />
                                                        </asp:GridView>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="pull-right">
                                                <asp:Button ID="btnSaveSlots" runat="server" Text="Save/Update" class="btn btn-info" OnClick="Button1_Click" />
                                                <asp:Button ID="btnDeleteSlots" runat="server" Text="Delete" class="btn btn-info" OnClick="btnDeleteSlots_Click" />
                                                <button type="button" class="btn btn-info" id="btnTimeSlots">Check Time Slots</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="box box-default" style="border-color: #ff2971">
                                    <div class="box-header with-border">
                                        <h2>STEP II:</h2>
                                        <p>To Create doctor availabilities for selected days of Morning/Evening timeslots in STEP I..</p>
                                    </div>
                                    <div class="box-body" style="display: block;">
                                        <div class="form-group">
                                            <p>Start Date: </p>
                                            <input type="text" id="dtStartDate">
                                        </div>
                                        <div class="form-group">
                                            <p>End Date: </p>
                                            <input type="text" id="dtEndDate">
                                        </div>
                                        <div class="form-group">
                                            <p>Time Slot:</p>
                                            <asp:DropDownList ID="ddlTimeSlot" runat="server">
                                                <asp:ListItem Selected="True" Value="15">15 Mnts</asp:ListItem>
                                                <asp:ListItem Value="30">30 Mnts</asp:ListItem>
                                                <asp:ListItem Value="45">45 Mnts</asp:ListItem>
                                                <asp:ListItem Value="60">1 Hr</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="modal fade" id="confirmModal" role="dialog">
                                            <div class="modal-dialog modal-sm" style="top: 20%;">
                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header" style="padding: 5px 10px;">
                                                        <h4>Appointment Timings Schedule Confirmation
                                                            <button type="button" class="close pull-right" data-dismiss="modal" style="margin-right: 15px;">&times;</button>
                                                        </h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Please Confirm below selected Details..?</p>
                                                        <table>
                                                            <tr>
                                                                <td>Doctor Name</td>
                                                                <td>:<asp:Label ID="lblDocFullName" runat="server" CssClass="boldText"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Selected Appointment Start date</td>
                                                                <td>:<asp:Label ID="lblStart" runat="server" CssClass="boldText"></asp:Label>
                                                                    <asp:HiddenField ID="hdnCreateStart" runat="server" ClientIDMode="Static" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Selected Appointment End date</td>
                                                                <td>:<asp:Label ID="lblEnd" runat="server" CssClass="boldText"></asp:Label>
                                                                    <asp:HiddenField ID="hdnCreateEnd" runat="server" ClientIDMode="Static" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Selected Appointment Time Slot</td>
                                                                <td>:<asp:Label ID="lblTimeSlot" runat="server" CssClass="boldText"></asp:Label>
                                                                    <asp:HiddenField ID="hdnTimeSlot" runat="server" ClientIDMode="Static" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <asp:Button ID="btnCreateAppointment" runat="server" Text="Create Appointment" class="btn btn-info" OnClick="btnCreateAppointment_Click" />
                                                        <asp:Button ID="btnDeleteAppointment" runat="server" Text="Delete Appointment" class="btn btn-info" OnClick="btnDeleteAppointment_Click" />

                                                        <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Cancel</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="pull-right">
                                                <button type="button" id="btnCreateAppointments" value="Create Appointment" class="btn btn-info">Create Appointment</button>
                                                <button type="button" id="btnEndAppointments" value="Delete Appointment" class="btn btn-info">Delete Appointment</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br />
                        <br />
                    </div>
                    <!-- /.col -->
                </div>
            </div>
            <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
    </section>


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

    <%--For Time Picker--%>
</asp:Content>

