<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="Dentist_Appointments" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <%--    <script type="text/javascript" src="../plugins/daypilot/daypilot-modal-2.2.js"></script>--%>
    <%--<script type="text/javascript" src="../plugins/daypilot/jquery-1.9.1.min.js"></script>--%>

    <link href="../design/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />
    <%-- <script src="../js/modal.js"></script>--%>
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />
    <link href="../css/tooltip.css" rel="stylesheet" />
    <link href="../css/tooltipforicons.css" rel="stylesheet" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/fullcalendar.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/fullcalendar.min.css" />

    <%-- <script src="../js/fullCalendar/jquery.min.js"></script>
    <script src="../js/fullCalendar/moment.min.js"></script>
    <script src="../js/fullCalendar/fullcalender.min.js"></script>
    <link href="../js/fullCalendar/fullcalendar.min.css" rel="stylesheet" />--%>

    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 90%;
        }

        .btnedit {
            padding: 5px !important;
        }

        .modal-dialog1 {
            margin: 30px auto;
            width: 50%;
        }

        .modal-dialog2 {
            margin: 30px auto;
            width: 90%;
        }

        .modal-dialog3 {
            margin: 30px auto;
            width: 50%;
        }

        .modal-dialog4 {
            margin: 30px auto;
            width: 50%;
        }

        .btnedit {
            padding: 5px !important;
        }

        .table1 th {
            border: 1px solid #535353;
            font-size: 14px;
            padding: 2px;
        }

        .table1 td {
            border: 1px solid #535353;
            font-size: 12px;
            padding: 2px;
        }

        .patientViewButtons td {
            padding: 3px;
        }

        .calendar_default_rowheader_inner {
            font-size: 12px !important;
        }

        /* bubble full css */

        .bubble_default_main {
            /*overflow: hidden;*/
            cursor: default;
        }

        .table > tbody > tr > td, .table > tbody > tr > th, .table > tfoot > tr > td, .table > tfoot > tr > th, .table > thead > tr > td, .table > thead > tr > th {
            padding: 3px;
            line-height: 1.42857143;
            vertical-align: top;
            border-top: 1px solid #ddd;
        }

        .btn {
            display: inline-block;
            padding: 3px 3px;
            margin-bottom: 0;
            font-size: 12px;
        }

        .modalBackground {
            background-color: Gray;
            filter: alpha(opacity=70);
            opacity: 0.7;
        }

        .modalPopup {
            background-color: #ffffff;
            border-width: 3px;
            border-style: solid;
            border-color: Gray;
            padding: 3px;
            width: 250px;
        }

        .createAppointment {
            width: 400px !important;
            /*height: auto;*/
        }

        .doctorButton {
            background-color: #0d84ff !important;
            border-color: #0d84ff !important;
            margin-right: 5px;
            color: white;
            width: 70px;
            text-align: center;
            height: 35px;
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#appointmentCalenderDiv").slideToggle();

            //Below event Added by Ram


            $('.Mobile').on('keyup', function () {
                if (parseInt($('.Mobile').val().substr(0, 1)) < 7) {
                    $('.Mobile').val('');
                }

            });

            $("#appointmentButton").click(function () {
                $("#appointmentCalenderDiv").slideToggle();
            });

            var calenderData = $.parseJSON($('[id$="hdnDataForCalender"]').val());
            $('#appointmentCalender').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                //defaultDate: '2017-11-12',
                defaultDate: moment(new Date()).format("YYYY/MM/DD"),
                navLinks: true, // can click day/week names to navigate views
                selectable: true,
                selectHelper: true,
                slotDuration: '00:15:00',
                timeFormat:'hh:mm a',
                select: function (start, end, appointmentId, view) {
                    if (view.name == 'month') {
                        end = end.add('days', -1).add(15, 'minutes');
                        if (start.date() == end.date()) {
                            callAppDialogueBeforeFormatingDates(start, end, appointmentId);
                        }
                        else
                            $('#appointmentCalender').fullCalendar('unselect');
                    }
                    else if (view.name == 'agendaWeek') {
                        if (start.date() == end.date()) {
                            callAppDialogueBeforeFormatingDates(start, end, appointmentId);
                        }
                        else
                            $('#appointmentCalender').fullCalendar('unselect');
                    }
                    else if(view.name == 'agendaDay'){
                        callAppDialogueBeforeFormatingDates(start, end, appointmentId);
                    }
                },
                eventClick: function (event) {
                    callAppDialogueBeforeFormatingDates(event.start, event.end, event.appointmentId);
                    if (event.appointmentId != null)
                        mapExistingDataToModal(event);
                    else
                        clearAllData();
                },
                editable: true,
                eventLimit: true,
                events: calenderData
                // allow "more" link when too many events
                //events: [
                //    {
                //        title: 'lok',
                //        start: '2017-11-01'
                //    },
                //    {
                //        title: 'Long Event',
                //        start: '2017-11-07',
                //        end: '2017-11-10'
                //    },
                //    {
                //        id: 999,
                //        title: 'Repeating Event',
                //        start: '2017-11-09T16:00:00'
                //    },
                //    {
                //        id: 999,
                //        title: 'Repeating Event',
                //        start: '2017-11-16T16:00:00'
                //    },
                //    {
                //        title: 'Conference',
                //        start: '2017-11-11',
                //        end: '2017-11-13'
                //    },
                //    {
                //        title: 'Meeting',
                //        start: '2017-11-12T10:30:00',
                //        end: '2017-11-12T12:30:00'
                //    },
                //    {
                //        title: 'Lunch',
                //        start: '2017-11-12T12:00:00'
                //    },
                //    {
                //        title: 'Meeting',
                //        start: '2017-11-12T14:30:00'
                //    },
                //    {
                //        title: 'Happy Hour',
                //        start: '2017-11-12T17:30:00'
                //    },
                //]
            });

            function callAppDialogueBeforeFormatingDates(start, end, appointmentId) {
                clearAllData();
                appDialogue(start, end, appointmentId);
                var title = '';
                var eventData;
                if (title) {
                    eventData = {
                        allDay: true,
                        title: title,
                        start: start,
                        end: end,
                        appointmentId: appointmentId
                    };
                    $('#appointmentCalender').fullCalendar('renderEvent', eventData, true);
                }
                $('#appointmentCalender').fullCalendar('unselect');
            };

            function mapExistingDataToModal(event) {
                $('[id$="ddlsalutation"]').val(event.salutation);
                $('[id$="TextBoxCreateName"]').val(event.fullName);
                $('[id$="txtAge"]').val(event.age);
                if (event.maritalStatus == 'Single')
                    $("input[name='ctl00$ContentPlaceHolder1$radmar'][value='Single']").prop('checked', true);
                else
                    $("input[name='ctl00$ContentPlaceHolder1$radmar'][value='Married']").prop('checked', true);

                if (event.gender == 'Male')
                    $("input[name='ctl00$ContentPlaceHolder1$radgen'][value='Male']").prop('checked', true);
                else
                    $("input[name='ctl00$ContentPlaceHolder1$radgen'][value='Female']").prop('checked', true);

                $('[id$="radmar"]').val(event.maritalStatus);
                $('[id$="radgen"]').val(event.gender);
                $('[id$="txtMobileNo"]').val(event.contactNumber);
                $('[id$="txtEmailId"]').val(event.email);
                $('[id$="txtAddress"]').val(event.address);
                $('[id$="txtOccupation"]').val(event.occupation);
                $('[id$="txtChiefComplaint"]').val(event.chiefComplaint);
                $('[id$="txtConsultationFee"]').val(event.consultationFee);
            };

            function clearAllData() {
                $('[id$="ddlsalutation"]').val('');
                $('[id$="TextBoxCreateName"]').val('');
                $('[id$="txtAge"]').val('');
                $("input[name='ctl00$ContentPlaceHolder1$radmar'][value='Single']").prop('checked', true);
                $("input[name='ctl00$ContentPlaceHolder1$radgen'][value='Male']").prop('checked', true);
                $('[id$="txtMobileNo"]').val('');
                $('[id$="txtEmailId"]').val('');
                $('[id$="txtAddress"]').val('');
                $('[id$="txtOccupation"]').val('');
                $('[id$="txtChiefComplaint"]').val('');
                $('[id$="hdnIsValidSave"]').val('0');
            }

            function appDialogue(fromDate, toDate, appID) {
                //test for repose
                $("#createAppointmentPopup").click();
                $('[id$="LblCreateStart"]').text(fromDate.format('MMMM DD YYYY hh:mm'));
                $('[id$="lblModifyStart"]').text(fromDate.format('MMMM DD YYYY hh:mm'));
                $('[id$="LblCreateEnd"]').text(toDate.format('MMMM DD YYYY hh:mm'));
                $('[id$="lblModifyEnd"]').text(toDate.format('MMMM DD YYYY hh:mm'));
                $('[id$="hdnCreateStart"]').val(fromDate.format('MM/DD/YYYY hh:mm:ss'));
                $('[id$="hdnCreateEnd"]').val(toDate.add(-1).format('MMMM DD YYYY hh:mm'));
                $('[id$="hdnAppointmentID"]').val(appID);
                $('[id$="hdnIsValidSave"]').val('1');
            };

            function getPatientDetails(appID) {
                //test for repose
                $('[id$="hdnAppointmentID"]').val(appID);
                $('[id$="btnPatientDetials"]').click();
                $("#appointmentButton").click();
                $("#createAppointmentPopup").click();
            }

            $('.ButtonCreateCancel').click(function () {
                $("#createAppointmentPopup").click();
                $("#newPatientTab").click();
                $('[id$="hdnIsValidSave"]').val('0');
            });

            $("#example1").DataTable();

            function generate(txt, type) {
                var n = noty({
                    text: txt,
                    type: type,
                    dismissQueue: true,
                    layout: 'top',
                    theme: 'defaultTheme'
                });
                setTimeout(function () {
                    $.noty.close(n.options.id);
                },
                    5000);
            }

            function generate_topRight(txt, type) {
                var n = noty({
                    text: txt,
                    type: type,
                    dismissQueue: true,
                    layout: 'topRight',
                    theme: 'defaultTheme'
                });
                console.log('html: ' + n.options.id);
            }

            function generateAll() {
                generate('alert');
                generate('information');
                generate('error');
                generate('warning');
                generate('notification');
                generate('success');
            }
        });

        //Below function added by Ram
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charcode = (evt.which) ? evt.which : evt.keycode;
            if (charcode > 31 && (charcode < 48 || charcode > 57)) {
                return false;
            }
            return true;
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12 col-xs-12">
        <!-- small box -->
        <div class="box box-default" style="border-color: #0d84ff;">
            <div class="box-header with-border">

                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#createAppointment" id="createAppointmentPopup" style="visibility: hidden;">Open Modal</button>

                <div style="height: 40px;">
                    <h3 class="box-title">Appointments </h3>
                    <a id="appointmentButton" class="btn btn-info pull-right" style="background-color: #0d84ff !important; border-color: #0d84ff !important; margin-right: 5px">New Appointment</a>
                </div>



                <asp:HiddenField ID="hdnDataForCalender" runat="server" />
                <div class="col-lg-12" id="appointmentCalenderDiv">
                    <h4><b>Please Click on Time Slot to book an Appointment</b></h4>
                    <div id='appointmentCalender'></div>
                </div>

                <%--Old Calender--%>
                <%--<div id="appointmentDiv">
                    <h4><b>Please Click on Time Slot to book an Appointment</b></h4>
                    <style>
                        .calendar_default_event_inner {
                            position: absolute;
                            overflow: hidden;
                            padding: 2px 2px 2px 6px;
                            font-family: calibri;
                            font-size: 10px;
                        }
                    </style>

                    <asp:Panel runat="server" ID="Schedule">
                        <div style="float: left; width: 150px;">
                            <DayPilot:DayPilotNavigator
                                runat="server"
                                ID="DayPilotNavigator1"
                                ClientIDMode="Static"
                                BoundDayPilotID="DayPilotCalendarWeek"
                                ShowMonths="2"
                                SelectMode="Week" />
                        </div>

                        <div style="margin-left: 150px;">
                            <asp:UpdatePanel ID="UpdatePanelCalendar" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                                <ContentTemplate>
                                        <DayPilot:DayPilotCalendar
                                            ID="DayPilotCalendarWeek"
                                            runat="server"
                                            DataEndField="AppointmentEnd"
                                            DataStartField="AppointmentStart"
                                            DataTextField="AppointmentPatientId"
                                            DataIdField="AppointmentId"
                                            HeaderHeightAutoFit="True"
                                            ColumnWidthSpec="Fixed"
                                            ColumnWidth="250"
                                            TimeHeaderCellDuration="60"
                                            HeightSpec="Fixed"
                                            Height="500"
                                            ViewType="Week"
                                            EventFontSize="10"
                                            DataTagFields="AppointmentStatus"
                                            EventFontFamily="calibri"
                                            OnCommand="DayPilotCalendarWeek_Command"
                                            TimeRangeSelectedHandling="PostBack"
                                            OnTimeRangeSelected="DayPilotCalendarWeek_OnTimeRangeSelected"
                                            EventClickHandling="PostBack"
                                            OnEventClick="DayPilotCalendarWeek_OnEventClick"
                                            OnBeforeEventRender="DayPilotCalendarWeek_BeforeEventRender"
                                            EventMoveHandling="CallBack"
                                            OnEventMove="DayPilotCalendarWeek_OnEventMove"
                                            EventMovingStartEndEnabled="true" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </asp:Panel>
                </div>--%>

                <%--Appointments Detial dialogue code--%>
                <div class="nav-tabs-custom modal fade" id="createAppointment" role="dialog" style="width: 500px; left: 35%; top: 8%; background: transparent;">
                    <ul class="nav nav-tabs" style="background-color: white;">
                        <li class="nav-item active">
                            <a class="nav-link" href="#newPatient" data-toggle="tab" aria-expanded="true" id="newPatientTab">New Patient</a>
                        </li>
                        <li class="nav-item" style="display:none;">
                            <a class="nav-link" href="#recallPatient" data-toggle="tab" aria-expanded="true" id="existingPatientTab">Existing Patient </a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div class="active tab-pane" id="newPatient">
                            <!-- /.box-header -->
                            <div class="box-body">

                                <%--   <asp:LinkButton ID="LinkButtonDelete" runat="server" OnClick="LinkButtonDelete_Click">Delete</asp:LinkButton>--%>

                                <table class="table">
                                    <tr>
                                        <td>Time:</td>
                                        <td><b>From:
                                                            <%--<asp:Literal ID="TextBoxCreateStart" runat="server"></asp:Literal>--%>
                                            <%-- <asp:Label ID="TextBoxCreateStart" runat="server" Text=""></asp:Label>--%>
                                            <asp:Label ID="LblCreateStart" runat="server"></asp:Label>
                                            <asp:HiddenField ID="hdnCreateStart" runat="server" ClientIDMode="Static" />
                                            <br />
                                            To: 
												            <%--<asp:Literal ID="TextBoxCreateEnd" runat="server"></asp:Literal>--%>
                                            <%--<asp:Label ID="TextBoxCreateEnd" runat="server" Text=""></asp:Label>--%>
                                            <asp:Label ID="LblCreateEnd" runat="server"></asp:Label>
                                            <asp:HiddenField ID="hdnCreateEnd" runat="server" ClientIDMode="Static" />
                                            <asp:HiddenField ID="hdnAppointmentID" runat="server" ClientIDMode="Static" />
                                            <asp:HiddenField ID="hdnPatiendDetailsDataRow" runat="server" />
                                           <%-- <asp:Button ID="btnPatientDetials" runat="server" Text="Button" OnClick="btnPatientDetials_Click" style="visibility: hidden;"/>--%>
                                        </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Doctor:</td>
                                        <td>
                                            <asp:Literal ID="ltlDoctorName" runat="server"></asp:Literal></td>
                                    </tr>
                                    <tr>
                                        <td>Status:</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListStatus" runat="server" CssClass="form-control">
                                                <asp:ListItem Value="waiting">Waiting</asp:ListItem>
                                                <asp:ListItem Value="confirmed">Confirmed</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td>Patient Name</td>
                                        <td>
                                            <div class="input-group">
                                                <div class="input-group-btn">
                                                    <<asp:DropDownList ID="ddlsalutation" Width="80px" runat="server" CssClass="form-control">
                                                        <asp:ListItem>Mr</asp:ListItem>
                                                        <asp:ListItem>Mrs</asp:ListItem>
                                                        <asp:ListItem>Ms</asp:ListItem>
                                                        <asp:ListItem>Baby</asp:ListItem>
                                                        <asp:ListItem>Master</asp:ListItem>


                                                    </asp:DropDownList>
                                                </div>
                                                <!-- /btn-group -->
                                                <asp:TextBox ID="TextBoxCreateName" placeholder="Patient Name" CssClass="form-control" runat="server"></asp:TextBox>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Age:</td>
                                        <td>
                                            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>


                                            <div class="form-group">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Age" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Age (Not more than 2 Digits)" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>

                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Marital Status</td>
                                        <td>
                                            <asp:RadioButtonList ID="radmar" runat="server" RepeatDirection="Horizontal">

                                                <asp:ListItem>Single</asp:ListItem>
                                                <asp:ListItem>Married</asp:ListItem>
                                            </asp:RadioButtonList></td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td>
                                            <asp:RadioButtonList ID="radgen" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:RadioButtonList></td>
                                    </tr>
                                    <tr>
                                        <td>Mobile No.:</td>
                                        <td>
                                            <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control"></asp:TextBox>

                                            <div class="form-group">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile No." ControlToValidate="txtMobileNo" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationGroup="g1" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>

                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email:</td>
                                        <td>
                                            <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"></asp:TextBox>


                                            <div class="form-group">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmailId" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmailId" class="error-message" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

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
                                            <asp:TextBox ID="txtChiefComplaint" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>


                                            <div class="form-group">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Chief Complaint (Maximum 200 characters)" ControlToValidate="txtChiefComplaint" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

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
                                            <asp:HiddenField ID="hdnIsValidSave" runat="server" Value="0" />
                                            <asp:Button CssClass="doctorButton" ID="ButtonCreateSave" runat="server" Text="Save" OnClick="ButtonCreateSave_Click" ValidationGroup="g1" />
                                            <a href="#" class="ButtonCreateCancel">Cancel</a>
                                            <%--<asp:LinkButton ID="ButtonCreateCancel" runat="server" Text="Cancel" OnClick="ButtonCreateCancel_Click" />--%>
                                            <%--  <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" ValidationGroup="patient" OnClick="Button2_Click" />
												<asp:Button ID="ButtonOK" runat="server" OnClick="ButtonOK_Click" Text="  OK  " CssClass="btn btn-info" />
												<asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CssClass="btn btn-info" />--%>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </div>

                        <div class=" tab-pane" id="recallPatient">
                            <div class="box-body">
                                <table class="table">
                                    <tr>
                                        <td>Patient Id/Name/Email </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtPatientId" runat="server" CssClass="form-control"></asp:TextBox>
                                                <div class="input-group-btn">
                                                    <asp:Button ID="btnFindUser" runat="server" Text="Find" OnClick="btnFindUser_Click" class="btn btn-info form-control" />
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Time:</td>
                                        <td><b>From:<asp:Label ID="lblModifyStart" runat="server" Text="Label"></asp:Label>
                                        <%--<asp:Literal ID="Literal4" runat="server"></asp:Literal>--%>
                                            <br />To: 
                                        <asp:Label ID="lblModifyEnd" runat="server" Text="Label"></asp:Label>
						                <%--<asp:Literal ID="Literal5" runat="server"></asp:Literal>--%></b></td>
                                    </tr>
                                    <tr>
                                        <td>Doctor:</td>
                                        <td>
                                            <asp:Literal ID="Literal6" runat="server"></asp:Literal></td>
                                    </tr>
                                    <tr>
                                        <td>Status:</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                                                <asp:ListItem Value="waiting">Waiting</asp:ListItem>
                                                <asp:ListItem Value="confirmed">Confirmed</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>

                                    <tr>
                                        <td>Patient Name</td>
                                        <td>
                                            <div class="input-group">
                                                <div class="input-group-btn">
                                                    <asp:DropDownList ID="DropDownList1" Width="80px" runat="server" CssClass="form-control">
                                                        <asp:ListItem>Mr</asp:ListItem>
                                                        <asp:ListItem>Mrs</asp:ListItem>
                                                        <asp:ListItem>Ms</asp:ListItem>
                                                        <asp:ListItem>Baby</asp:ListItem>
                                                        <asp:ListItem>Master</asp:ListItem>


                                                    </asp:DropDownList>
                                                </div>
                                                <!-- /btn-group -->
                                                <asp:Literal ID="Literal7" runat="server"></asp:Literal>

                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Age
                                        </td>
                                        <td>
                                            <asp:Literal ID="Literal9" runat="server"></asp:Literal></td>

                                    </tr>
                                    <tr>
                                        <td>Marital Status
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">

                                                <asp:ListItem>Single</asp:ListItem>
                                                <asp:ListItem>Married</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>Gender
                                        </td>
                                        <td>
                                            <asp:Literal ID="Literal11" runat="server"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mobile No.
                                        </td>
                                        <td>
                                            <asp:Literal ID="Literal10" runat="server"></asp:Literal></td>

                                    </tr>
                                    <tr>
                                        <td>Email Id
                                        </td>
                                        <td>
                                            <asp:Literal ID="Literal12" runat="server"></asp:Literal></td>

                                    </tr>
                                    <tr>
                                        <td>Address
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox></td>
                                    </tr>

                                    <tr>
                                        <td>Occupation
                                        </td>
                                        <td>

                                            <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Chief Complaint
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Consultation Fee
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFee" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button CssClass="doctorButton" ID="Button2" runat="server" Text="Save" OnClick="ButtonCreateSave_Click" />
                                            <%--<asp:LinkButton ID="LinkButton2" runat="server" Text="Cancel" OnClick="LinkButton2_Click" />--%>
                                            <a href="#" class="ButtonCreateCancel">Cancel</a>
                                            <%--  <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" ValidationGroup="patient" OnClick="Button2_Click" />
												<asp:Button ID="ButtonOK" runat="server" OnClick="ButtonOK_Click" Text="  OK  " CssClass="btn btn-info" />
												<asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CssClass="btn btn-info" />--%>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </div>

                    <!-- /.tab-pane -->
                </div>

                <div id="modal">

                    <asp:Button ID="ButtonDummyCreate" runat="server" Style="display: none" />

                    <ajaxToolkit:ModalPopupExtender ID="ModalPopupCreate" runat="server" TargetControlID="ButtonDummyCreate"
                        PopupControlID="PanelPopupCreate" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PanelPopupCreate" runat="server" CssClass="modalPopup" Style="display: none" Width="500px">
                        <asp:UpdatePanel ID="UpdatePanelCreate" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <%--Paste here Appointments Detial dialogue code--%>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>


                    <asp:Button ID="ButtonDummyEdit" runat="server" Style="display: none" />
                    <ajaxToolkit:ModalPopupExtender ID="ModalPopupEdit" runat="server" TargetControlID="ButtonDummyEdit"
                        PopupControlID="PanelPopupEdit" BackgroundCssClass="modalBackground" />
                    <asp:Panel ID="PanelPopupEdit" runat="server" CssClass="modalPopup" Style="display: none" Width="500px">
                        <asp:UpdatePanel ID="UpdatePanelEdit" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <h2>Edit Appointment</h2>

                                <%--page start--%>
                                <div class="header">
                                    <b>Patient Id:
                                    <asp:Literal ID="ltlPatientId" runat="server"></asp:Literal></b>
                                </div>
                                <%--   <asp:LinkButton ID="LinkButtonDelete" runat="server" OnClick="LinkButtonDelete_Click">Delete</asp:LinkButton>--%>

                                <table class="table">
                                    <tr>
                                        <td>Time:</td>
                                        <td><b>From:
                                            <asp:Literal ID="ltlStart" runat="server"></asp:Literal>
                                            To: 
							                <asp:Literal ID="ltlEnd" runat="server"></asp:Literal></b>
                                    </tr>
                                    <tr>
                                        <td>Doctor:</td>
                                        <td>
                                            <asp:Literal ID="Literal3" runat="server"></asp:Literal></td>
                                    </tr>
                                    <tr>
                                        <td>Status:</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                                <asp:ListItem Value="waiting">Waiting</asp:ListItem>
                                                <asp:ListItem Value="confirmed">Confirmed</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td>Patient Name</td>
                                        <td>
                                            <div class="input-group">
                                                <div class="input-group-btn">
                                                    <<asp:DropDownList ID="DropDownList4" Width="80px" runat="server" CssClass="form-control" Enabled="false">
                                                        <asp:ListItem Value="Mr">Mr</asp:ListItem>
                                                        <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                                                        <asp:ListItem Value="Ms">Ms</asp:ListItem>
                                                        <asp:ListItem Value="Baby">Baby</asp:ListItem>
                                                        <asp:ListItem Value="Master">Master</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <!-- /btn-group -->
                                                <asp:TextBox ID="TextBox3" placeholder="Patient Name" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Age:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

                                            <%--<div class="form-group">

							                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Age" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

							                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Age (Not more than 2 Digits)" ControlToValidate="txtAge" ValidationGroup="g1" class="error-message" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>

							                </div>--%>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Marital Status</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Enabled="false">

                                                <asp:ListItem Value="0">Single</asp:ListItem>
                                                <asp:ListItem Value="1">Married</asp:ListItem>
                                            </asp:RadioButtonList></td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" Enabled="false">
                                                <asp:ListItem Value="0">Male</asp:ListItem>
                                                <asp:ListItem Value="1">Female</asp:ListItem>
                                            </asp:RadioButtonList></td>
                                    </tr>
                                    <tr>
                                        <td>Mobile No.:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

                                            <div class="form-group">

                                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Mobile No." ControlToValidate="txtMobileNo" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
							                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="g1" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>--%>
                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>


                                            <div class="form-group">

                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmailId" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

							                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmailId" class="error-message" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                                            </div>


                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                                    </tr>

                                    <tr>
                                        <td>Occupation</td>
                                        <td>
                                            <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Cheif Complaint</td>
                                        <td>
                                            <asp:TextBox ID="TextBox13" runat="server" MaxLength="200" CssClass="form-control" Enabled="false"></asp:TextBox>


                                            <div class="form-group">

                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Chief Complaint (Maximum 200 characters)" ControlToValidate="txtChiefComplaint" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>--%>
                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Consultation Fee</td>
                                        <td>
                                            <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:HiddenField ID="HiddenEditId" runat="server" />

                                            <asp:Button ID="ButtonEditSave" runat="server" Text="Save" OnClick="ButtonEditSave_Click" />
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Cancel" OnClick="LinkButton1_Click" />

                                            <%--  <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" ValidationGroup="patient" OnClick="Button2_Click" />
												<asp:Button ID="ButtonOK" runat="server" OnClick="ButtonOK_Click" Text="  OK  " CssClass="btn btn-info" />
												<asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CssClass="btn btn-info" />--%>
                                        </td>
                                    </tr>
                                </table>

                                <%--page end--%>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>


                </div>

                <!-- /.box-header -->
            </div>

            <div class="box box-default">
                <div class="box-body">
                    <div class="box-body table-responsive">
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                                <tr>
                                    <th>Patient Id</th>
                                    <th>Name</th>
                                    <th>Age</th>
                                    <th>Gender</th>
                                    <th>Marital_Status</th>
                                    <th>Email</th>
                                    <th>Mobile</th>
                                    <th>Occupation</th>
                                    <th>Chief_Complaint</th>
                                    <th>Controls</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="DataList2" runat="server" OnItemCommand="DataList2_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <%--tds modified by Ram Start--%>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("uniqueRandomId") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lblName" Text='<%#Eval("fullName") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtName" Text='<%#Eval("fullName") %>' runat="server" Visible="false"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblAge" Text='<%#Eval("age") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtAge" Text='<%#Eval("age") %>' runat="server" MaxLength="3" OnKeypress="return isNumber(event);" Visible="false"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblGender" Text='<%#Eval("Gender") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtGender" Text='<%#Eval("Gender") %>' runat="server" Visible="false"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblMaritalStatus" Text='<%#Eval("maritalStatus") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtMaritalStatus" Text='<%#Eval("maritalStatus") %>' runat="server" Visible="false"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblEmail" Text='<%#Eval("email") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtEmail" Text='<%#Eval("email") %>' runat="server" Visible="false"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblContactNo" Text='<%#Eval("contactNumber") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtContactNo" Text='<%#Eval("contactNumber") %>' runat="server" MaxLength="10" CssClass="Mobile" OnKeypress="return isNumber(event);" Visible="false"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblOccupation" Text='<%#Eval("occupation") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtOccupation" Text='<%#Eval("occupation") %>' runat="server" Visible="false"></asp:TextBox>
                                            </td>
                                             <td>
                                                <asp:Label ID="lblComplaint" Text='<%#Eval("chiefComplaint") %>' runat="server"></asp:Label>
                                                <asp:TextBox ID="txtComplaint" Text='<%#Eval("chiefComplaint") %>' runat="server" Visible="false"></asp:TextBox>
                                            </td>
                                            <%--tds modified by Ram End--%>
                                            <td>
                                                <table class="patientViewButtons">
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton runat="server" ID="lnkDiag" CommandName="Diagnosis">
													<button type="button" class="btn btnedit btn-info" data-tooltip="Diagnosis" >
														<i class="fa fa-file-text"></i>
													</button>
                                                            </asp:LinkButton></td>
                                                        <td>
                                                            <a href="PHR.aspx" target="_blank">
                                                                <button type="button" class="btn btnedit btn-success" data-tooltip="PHR">
                                                                    <i class="fa fa-eye"></i>
                                                                </button>
                                                            </a></td>


                                                        <td>
                                                            <a href="Invoice.aspx" target="_blank">
                                                                <button type="button" data-tooltip="Invoices" class="btn btnedit btn-info">
                                                                    <i class="fa fa-credit-card"></i>
                                                                </button>
                                                            </a></td>
                                                        <td><a href="Prescription.aspx" target="_blank">
                                                            <button type="button" data-tooltip="Prescription" class="btn btnedit btn-info">
                                                                <i class="fa fa-file-text-o"></i>
                                                            </button>
                                                        </a></td>
                                                        <td><a href="Resources.aspx" target="_blank">
                                                            <button type="button" data-tooltip="Reports" class="btn btnedit btn-info">
                                                                <i class="fa fa-folder-open-o"></i>
                                                            </button>
                                                        </a></td>
                                                        <td>
                                                            <%--Modifications By ram Start--%>
                                                            <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning" OnClick="OnEdit">
														<i class="fa fa-edit"></i></asp:LinkButton>

                                                            <asp:LinkButton Visible="false" ID="lnkUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                                                            <asp:LinkButton Visible="false" ID="lnkCancel" runat="server" OnClick="OnCancel">Cancel</asp:LinkButton>


                                                        </td>
                                                        <td>
                                                            <asp:LinkButton ID="lnkDelete" runat="server" OnClientClick='javascript:return confirm("Are you sure you want to delete?")'  CommandName="Delete" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "AppointmentId") %>' data-tooltip="Delete" class="btn btnedit btn-danger">
														<i class="fa fa-trash-o"></asp:LinkButton></td>
                                                        <%--Modifications By ram End--%>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </tbody>
                            <%--<tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Age</th>
                                    <th>Gender</th>
                                    <th>Marital_Status</th>
                                    <th>Email</th>
                                    <th>Mobile</th>
                                    <th>Occupation</th>
                                    <th>Chief_Complaint</th>
                                    <th>Controls</th>
                                </tr>
                            </tfoot>--%>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- For Validation -->
    <script src="../validation/js/scrupulous.js"></script>
    <%-- For Validation--%>
    <%--<script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>--%>
    <script src="../plugins/noty-master/js/noty/jquery.noty.js"></script>
    <script src="../plugins/noty-master/js/noty/layouts/top.js"></script>
    <script src="../plugins/noty-master/js/noty/layouts/topRight.js"></script>
    <script src="../plugins/noty-master/js/noty/themes/default.js"></script>

    <%--<script src="../js/fullCalendar/jquery.min.js"></script>
    <script src="../js/fullCalendar/moment.min.js"></script>
    <script src="../js/fullCalendar/fullcalender.min.js"></script>
    <link href="../js/fullCalendar/fullcalendar.min.css" rel="stylesheet" />--%>


    <%--<script>

        $(function () {
            $("#example1").DataTable();
        });
    </script>--%>
</asp:Content>
