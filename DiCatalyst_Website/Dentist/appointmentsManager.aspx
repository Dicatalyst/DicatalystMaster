<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/Settings.master" AutoEventWireup="true" CodeFile="appointmentsManager.aspx.cs" Inherits="Dentist_appointmentsManager" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">
    <style>
        .modal-dialog {
            right: 8%;
            top: 20%;
        }
        .modal-content{
            width: 500px;
            height: 270px;
        }
        .close {
            margin-right: 15px;
            color: black;
            opacity: 5;
        }
        hr {
            margin: 0px;
        }
        .glyphicon-lock{
            margin-right: 15px;
            margin-left: 15px;
        }
        table {
            margin-left:20px;
        }
        
        .boldText {
            margin-left: 10px;
            font-weight: bold;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            if ($('[id$="hdnDataForAppMangerCalender"]').val() != null); {
                var calenderData = $.parseJSON($('[id$="hdnDataForAppMangerCalender"]').val());
            }
            var eventColor;
            $('#appointmentCalender').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'agendaWeek,agendaDay,month'
                },
                //defaultDate: '2017-11-12',
                defaultDate: moment(new Date()).format("YYYY/MM/DD"),
                navLinks: true,             // can click day/week names to navigate views
                selectable: true,
                selectHelper: true,
                slotDuration: '00:15:00',
                timeFormat: 'hh:mm a',
                select: function (start, end, appointmentId, view) {
                    if (view.name == 'month') {
                        end = end.add('days', -1).add(15, 'minutes');
                        if (start.date() == end.date()) {
                            confirmModalPopUp(start, end, appointmentId);
                        }
                        else
                            $('#appointmentCalender').fullCalendar('unselect');
                    }
                    else if (view.name == 'agendaWeek') {
                        if (start.date() == end.date()) {
                            confirmModalPopUp(start, end, appointmentId);
                        }
                        else
                            $('#appointmentCalender').fullCalendar('unselect');
                    }
                    else if (view.name == 'agendaDay') {
                        confirmModalPopUp(start, end, appointmentId);
                    }
                },
                eventClick: function (event) {
                    delteModalPopUp(event.start, event.end, event.appointmentId);
                    if (event.appointmentId != null)
                        mapExistingDataToModal(event);
                },
                eventColor: eventColor(calenderData),
                editable: true,
                eventLimit: true,
                events: calenderData,
            });

            function eventColor(event) {
                if (event.AppointmentStatus == 'waiting')
                    eventColor = 'black';
                else if (event.AppointmentStatus == 'free')
                    eventColor = 'red';
                else
                    eventColor = 'green';
            }

            function confirmModalPopUp(start, end, appointmentId) {
                $("#confirmModal").modal();
                $('[id$="lblStart"]').text(start.format('MMMM DD YYYY hh:mm'));
                $('[id$="lblEnd"]').text(end.format('MMMM DD YYYY hh:mm'));
                $('[id$="hdnCreateStart"]').val(start.format('MM/DD/YYYY hh:mm:ss'));
                $('[id$="hdnCreateEnd"]').val(end.format('MMMM DD YYYY hh:mm'));
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

            function delteModalPopUp(start, end, appointmentId) {
                $("#deleteModal").modal();
                $('[id$="lblDelStart"]').text(start.format('MMMM DD YYYY hh:mm'));
                $('[id$="lblDelEnd"]').text(end.format('MMMM DD YYYY hh:mm'));
                $('[id$="hdnDelStart"]').val(start.format('MM/DD/YYYY hh:mm:ss'));
                $('[id$="hdnDelEnd"]').val(end.format('MMMM DD YYYY hh:mm'));
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
                //$('input[name=radio][value=2]').attr('checked', true);
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

            $('.ButtonCreateCancel').click(function () {
                $("#createAppointmentPopup").click();
                $("#newPatientTab").click();
                $('[id$="hdnIsValidSave"]').val('0');
            });

        });

        function scale(size) {
            dp.clientState.size = size;
            dp.commandCallBack("refresh");
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">

    <div class="col-lg-12 col-xs-12">

        <div class="box box-default" style="border-color: #1e282c;">
            <div class="box-header with-border">
                <h3 class="box-title">Appointments Manager</h3>
                <asp:HiddenField ID="hdnDataForAppMangerCalender" runat="server" />
            </div>

            <div class="col-lg-12">
                <div id='appointmentCalender' style="padding-right: 40px;padding-left: 0px;"></div>
            </div>

            <div class="container">
                <h2>Modal Login Example</h2>

                <!-- Confirm Modal -->
                <div class="modal fade" id="confirmModal" role="dialog">
                    <div class="modal-dialog modal-sm">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header" style="padding: 5px 10px;">
                                <h3><span class="glyphicon glyphicon-lock"></span>Availability Confirmation
                                    <button type="button" class="close pull-right" data-dismiss="modal" style="margin-right: 15px;">&times;</button>
                                </h3>
                            </div>
                            <hr />
                            <div class="modal-body">
                                <p>Please Confirm below selected availablty..?</p>
                                <%--<br />--%>
                                <table>
                                    <tr>
                                        <td>Doctor Name</td>
                                        <td>:<asp:Label ID="lblDocFullName" runat="server" CssClass="boldText"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>From time</td>
                                        <td>:<asp:Label ID="lblStart" runat="server" CssClass="boldText"></asp:Label>
                                            <asp:HiddenField ID="hdnCreateStart" runat="server" ClientIDMode="Static" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>To time</td>
                                        <td>:<asp:Label ID="lblEnd" runat="server" CssClass="boldText"></asp:Label>
                                            <asp:HiddenField ID="hdnCreateEnd" runat="server" ClientIDMode="Static" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton ID="btnConfirm" runat="server"  CssClass="btn btn-primary" OnClick="btnConfirm_Click">
                                    <span class="glyphicon glyphicon-off"></span> Confirm
                                </asp:LinkButton>
                                <%--<button type="submit" class="btn btn-primary" runat="server"><span class="glyphicon glyphicon-off"></span>Confirm</button>--%>
                                <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- Delete Modal -->
                <div class="modal fade" id="deleteModal" role="dialog">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header" style="padding: 5px 10px;">
                                <h3><span class="glyphicon glyphicon-lock"></span>Delete Availability
                                    <button type="button" class="close pull-right" data-dismiss="modal" style="margin-right: 15px;">&times;</button>
                                </h3>
                            </div>
                            <hr />
                            <div class="modal-body">
                                <p>Please Confirm below selected availablty for delting..</p>
                                <%--<br />--%>
                                <table>
                                    <tr>
                                        <td>Doctor Name</td>
                                        <td>:<asp:Label ID="lblDelDocFullName" runat="server" CssClass="boldText"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>From time</td>
                                        <td>:<asp:Label ID="lblDelStart" runat="server" CssClass="boldText"></asp:Label>
                                            <asp:HiddenField ID="hdnDelStart" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>To time</td>
                                        <td>:<asp:Label ID="lblDelEnd" runat="server" CssClass="boldText"></asp:Label>
                                            <asp:HiddenField ID="hdnDelEnd" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton ID="btnDelete" runat="server"  CssClass="btn btn-warning" OnClick="btnDelete_Click">
                                    <span class="glyphicon glyphicon-exclamation-sign"></span> Delete
                                </asp:LinkButton>
                                <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <!-- /.box-header -->
            <%--   <div class="box-body">



                <div style="float: left; width: 150px;">
                    <DayPilot:DayPilotNavigator
                        runat="server"
                        ID="DayPilotNavigator1"
                        ClientIDMode="Static"
                        BoundDayPilotID="DayPilotScheduler1"
                        ShowMonths="3"
                        SelectMode="Month" />
                </div>

                <div style="margin-left: 150px;">

                    <div class="space">Scale: <a href="javascript:scale('shifts')">Shifts</a> | <a href="javascript:scale('hours')">Hours</a></div>

                    <DayPilot:DayPilotScheduler
                        runat="server"
                        ID="DayPilotScheduler1"
                        ClientObjectName="dp"
                        AllowEventOverlap="false"
                        UseEventBoxes="Never"
                        CellWidth="40"
                        DynamicEventRendering="Disabled"
                        TimeRangeSelectedHandling="CallBack"
                        OnTimeRangeSelected="DayPilotScheduler1_OnTimeRangeSelected"
                        EventDeleteHandling="CallBack"
                        OnEventDelete="DayPilotScheduler1_OnEventDelete"
                        OnBeforeEventRender="DayPilotScheduler1_OnBeforeEventRender"
                        OnCommand="DayPilotScheduler1_OnCommand">
                        <TimeHeaders>
                            <DayPilot:TimeHeader GroupBy="Month" />
                            <DayPilot:TimeHeader GroupBy="Day" Format="ddd d" />
                            <DayPilot:TimeHeader GroupBy="Hour" Format="ht" />
                        </TimeHeaders>
                    </DayPilot:DayPilotScheduler>

                    <div class="space">
                        <asp:LinkButton runat="server" ID="ButtonClear" OnClick="ButtonClear_OnClick">Delete All Free Slots</asp:LinkButton>
                        (This Month)</div>

                </div>
            </div>--%>
        </div>
    </div>

    
</asp:Content>

