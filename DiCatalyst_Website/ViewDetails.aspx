<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewDetails" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>
<%@ Register Src="~/GoogleMapForASPNet.ascx" TagPrefix="uc1" TagName="GoogleMapForASPNet" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .doctorlist {
            margin: 0px;
            padding: 0px;
        }

            .doctorlist li {
                list-style: none;
                margin-bottom: 10px;
            }

        .leftsearchpanels {
            font-size: 14px !important;
        }

            .leftsearchpanels .box-title {
                font-size: 14px !important;
            }

            .leftsearchpanels .box-header {
                padding: 5px !important;
            }

            .leftsearchpanels .box {
                margin-bottom: 10px !important;
            }

        #services h4 {
            font-weight: bold;
            margin-left: 25px;
        }

        .row {
            margin-left: 0px;
            margin-right: 0px;
        }

        .vticker {
            border: 2px solid #ecf0f5;
            width: 100%;
        }

            .vticker ul {
                padding: 0;
            }

            .vticker li {
                border-bottom: 1px solid #008000;
                list-style: none;
                padding: 10px;
            }

        .et-run {
            background: #ff0000;
        }

        .img-circle {
            -ms-border-radius: 50%;
            border-radius: 50%;
            width: 100%;
        }

        .similarDoctors {
            text-align: center;
            width: 100%;
        }

        .source {
            padding: 20px;
        }

        .docprofile {
            width: 100%;
            max-width: 150px;
        }

        .doctorlist i {
            padding-right: 5px;
        }

        .panel ul {
            padding: 0px;
            margin: 0px;
            list-style: none;
        }

        .news-item {
            padding: 4px 4px;
            margin: 0px;
            border-bottom: 1px dotted #555;
        }
    </style>

    <%--<script src="design/plugins/jQuery/jquery-2.2.3.min.js"></script>--%>

    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/fullcalendar.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/fullcalendar.min.css" />--%>

    <script src="js/fullCalendar/jquery.min.js"></script>
    <script src="js/fullCalendar/moment.min.js"></script>
    <script src="js/fullCalendar/fullcalender.min.js"></script>
    <link href="js/fullCalendar/fullcalendar.min.css" rel="stylesheet" />
    <script src="design/bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/noty-master/js/noty/jquery.noty.js"></script>
    <script src="plugins/noty-master/js/noty/layouts/top.js"></script>
    <script src="plugins/noty-master/js/noty/layouts/topRight.js"></script>
    <script src="plugins/noty-master/js/noty/themes/default.js"></script>

    <script type="text/javascript" src="plugins/daypilot/daypilot-modal-2.2.js"></script>
    <%--<script type="text/javascript" src="plugins/daypilot/jquery-1.9.1.min.js"></script>--%>

    <link href="plugins/media/custom.css" rel="stylesheet" />
    <link href="plugins/media/modal.css" rel="stylesheet" />
    <link href="plugins/media/layout.css" rel="stylesheet" />
    <link href="media/modal.css" rel="stylesheet" />
    <link href="css/ajaxcss.css" rel="stylesheet" />

    <style type="text/css">
        .textBox {
            width: 390px;
            overflow: auto;
        }

        /*a[ id= "map" ] {
            -webkit-transform: translateY( 0px);
            transform: translateY( 0px );
        }*/
    </style>

    <script>
        //Full Calender Script
        $(document).ready(function () {
            if ($('[id$="hdnDataForCalender"]').val() != null); {
                var calenderData = $.parseJSON($('[id$="hdnDataForCalender"]').val());
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

                },
                eventClick: function (event) {
                    confirmPopUp();
                },
                //eventColor: eventColor(calenderData),
                editable: true,
                eventLimit: true,
                events: calenderData,
            });

            function confirmPopUp() {
                $("#appointmentModal").modal();
            }

            //function eventColor(event) {
            //    if (event.AppointmentStatus == 'waiting')
            //        eventColor = 'black';
            //    else if (event.AppointmentStatus == 'free')
            //        eventColor = 'red';
            //    else
            //        eventColor = 'green';
            //}

            $('a[href="#map"]').on('click', function (e) {
                e.preventDefault();

                var target = this.hash;
                var $target = $(target);

                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top
                }, 900, 'swing', function () {
                    window.location.hash = target;
                });
            });
        });
    </script>



    <script type="text/javascript">
        function generate(txt, type) {
            var n = noty({
                text: txt,
                type: type,
                dismissQueue: true,
                layout: 'top',
                theme: 'defaultTheme'
            });
            //console.log('html: ' + n.options.id);
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
        //$(document).ready(function () {
        //    generate_topRight("information here", 'information');
        //});


    </script>

    <script>
        $(document).ready(function () {
            $(".lnkGetDirections").click(function () {
                $("#getDirections").slideToggle();
            });
        });
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="content-wrapper">
        <div class="container">

            <section class="content">

                <div class="row">

                    <div class="col-lg-9">
                        <div class="box box-info">
                            <div class="box-body">


                                <asp:DataList ID="DataList1" runat="server" OnItemDataBound="DataList1_ItemDataBound">
                                    <ItemTemplate>


                                        <!-- Horizontal Form -->

                                        <%--<div class="box-header with-border">
                                        <h3 class="box-title pull-right">
                                            <ajaxToolkit:Rating ID="Rating1" runat="server" CurrentRating="2" MaxRating="5"
                                                StarCssClass="ratingStar"
                                                WaitingStarCssClass="savedRatingStar"
                                                FilledStarCssClass="filledRatingStar"
                                                EmptyStarCssClass="emptyRatingStar">
                                            </ajaxToolkit:Rating>
                                        </h3>
                                    </div>--%>
                                        <!-- /.box-header -->
                                        <!-- form start -->


                                        <div class="col-lg-3">

                                            <asp:Image ID="imgDoctor" runat="server" ImageUrl='<%# Eval("picture") %>' CssClass="docprofile" />

                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <h5><b>Rate Us: &nbsp; </b></h5>
                                                            </td>
                                                            <td></td>
                                                        </tr>
                                                    </table>


                                                    <ajaxToolkit:Rating ID="Rating1" runat="server" AutoPostBack="True" CurrentRating="2" MaxRating="5"
                                                        StarCssClass="ratingStar"
                                                        WaitingStarCssClass="savedRatingStar"
                                                        FilledStarCssClass="filledRatingStar"
                                                        EmptyStarCssClass="emptyRatingStar" OnChanged="Rating1_Changed">
                                                    </ajaxToolkit:Rating>



                                                </div>
                                            </div>


                                        </div>

                                        <div class="col-lg-4">

                                            <h4>
                                                <b>
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("fullName") %>'></asp:Literal>
                                                </b>
                                            </h4>


                                            <h5>
                                                <b>Specialization: </b>
                                                <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("speciality") %>'></asp:Literal>
                                            </h5>
                                            <h5>
                                                <b>Experience: </b>
                                                <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("yearOfExperience") %>'></asp:Literal>
                                                Years
                                            </h5>
                                            <h5>
                                                <b>Designation: </b>
                                                <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("designation") %>'></asp:Literal>
                                            </h5>
                                            <h5>
                                                <b>Practice Name: </b>
                                                <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("practiceName") %>'></asp:Literal>
                                            </h5>


                                            <h5>
                                                <b>Website: </b>
                                                <asp:Literal ID="Literal9" runat="server" Text='<%# Eval("website") %>'></asp:Literal>
                                            </h5>



                                        </div>
                                        <div class="col-lg-5">


                                            <ul class="doctorlist">

                                                <li>
                                                    <i class="fa fa-map-marker"></i><b>Location: </b>
                                                    <br />
                                                    <p style="padding-left: 5px;">
                                                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("address") %>'></asp:Label>

                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("zipCode") %>'></asp:Label>
                                                        <br />
                                                        <a href="#map" style="font-weight: bold">Get Directions</a>
                                                    </p>
                                                </li>


                                                <li>
                                                    <i class="fa fa-phone"></i><b>Phone No.: </b>
                                                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("contactNumber") %>'></asp:Label>

                                                </li>


                                                <li>
                                                    <i class="fa fa-envelope"></i><b>Email: </b>
                                                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("email") %>'></asp:Label>

                                                </li>
                                                <li>
                                                    <i class="fa fa-money"></i><b>Fee: </b>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fee") %>'></asp:Label>

                                                </li>

                                                <li>
                                                    <%--<asp:GridView ID="gdTimings" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover">

                                    <Columns>


                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="lblId" runat="server" Visible="false" Text='<%#Eval("id") %>'></asp:Label>
                                                <asp:CheckBox ID="chkDay" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="day" HeaderText="Day" />

                                        <asp:TemplateField HeaderText="From ">
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
                                        <asp:TemplateField HeaderText="To">
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
                                        <asp:TemplateField HeaderText="From">
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

                                        <asp:TemplateField HeaderText="To">
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

                                </asp:GridView>--%>
                                                    <div id="timings" style="display: none">
                                                        <asp:GridView ID="gdvTimings" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="false">
                                                            <Columns>
                                                                <asp:TemplateField Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:BoundField DataField="day" HeaderText="Day" />
                                                                <asp:BoundField DataField="fFrom" HeaderText="From" />
                                                                <asp:BoundField DataField="fTo" HeaderText="To" />
                                                                <asp:BoundField DataField="sFrom" HeaderText="From" />
                                                                <asp:BoundField DataField="sTo" HeaderText="To" />
                                                            </Columns>
                                                        </asp:GridView>
                                                    </div>


                                                </li>


                                            </ul>


                                            <asp:HiddenField ID="hfdoctorid" runat="server" Value='<%# Eval("uniqueRandomId") %>' />




                                        </div>

                                        <!-- /.box-body -->
                                        <%--  <div class="box-footer">

                                       


                                    </div>--%>
                                        <!-- /.box-footer      </form> -->
                                        <div class="col-lg-12">
                                            <p style="padding: 15px; text-align: justify"><%#Eval("aboutMe") %> </p>
                                        </div>

                                        <a id="LinkButton2" class="btn btn-info pull-right" style="margin-right: 20px; margin-bottom: 15px;">Book Appointment</a>

                                    </ItemTemplate>
                                </asp:DataList>
                            </div>


                        </div>

                        <div id="appointment" class="box box-default" style="display: block">
                            <div class="box-body">
                                <h3>Book an appointments</h3>
                                <asp:HiddenField ID="hdnDataForCalender" runat="server" />
                                <div id='appointmentCalender' style="padding-right: 40px; padding-left: 0px;"></div>
                                <div class="modal fade" id="appointmentModal" role="dialog">
                                    <div class="modal-dialog" style="position: fixed; top: 15% !important; left: 28%;">
                                        <div class="modal-content" style="width: 500px;">
                                            <div class="modal-header" style="padding: 5px 10px;">
                                                <h3>Create Appointment
                                                        <button type="button" class="close pull-right" data-dismiss="modal" style="margin-right: 15px;">&times;</button>
                                                </h3>
                                            </div>
                                            <div class="modal-body" style="max-height: calc(100vh - 300px); overflow: auto;">
                                                <p>Please login to create appointment.</p>

                                            </div>
                                            <div class="modal-footer">
                                                <asp:Button ID="btnLogIn" runat="server" Text="Log-in" CssClass="btn btn-primary" OnClick="btnLogIn_Click" />
                                                <button type="submit" class="btn btn-warning" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <%--<div class="container">

                                    <div class="modal fade" id="confirmModal" role="dialog">
                                        <div class="modal-dialog modal-sm">

                                            <div class="modal-content">
                                                <div class="modal-header" style="padding: 5px 10px;">
                                                    <h3><span class="glyphicon glyphicon-lock"></span>Create appointment
                                    <button type="button" class="close pull-right" data-dismiss="modal" style="margin-right: 15px;">&times;</button>
                                                    </h3>
                                                </div>
                                                <hr />
                                                <div class="modal-body">
                                                    <p>Please Confirm below selected availablty..?</p>
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
                                                    <asp:Button ID="btnConfirm" runat="server" Text="Create" CssClass="btn btn-warning" />
                                                    
                                                    <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Cancel</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="modal fade" id="deleteModal" role="dialog">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header" style="padding: 5px 10px;">
                                                    <h3><span class="glyphicon glyphicon-lock"></span>Cancel Appointment
                                    <button type="button" class="close pull-right" data-dismiss="modal" style="margin-right: 15px;">&times;</button>
                                                    </h3>
                                                </div>
                                                <hr />
                                                <div class="modal-body">
                                                    <p>Please Confirm below selected availablty for delting..</p>
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
                                                    <asp:Button ID="btnDelete" runat="server" Text="Cancel" CssClass="btn btn-warning" />
                                                    
                                                    <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Cancel</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                        <%--Old calender--%>
                        <%--<div id="appointment" class="box box-default" style="display: block">
                            <div class="box-body">
                                Book an appointment

     <div style="float: left; width: 150px;">
         <DayPilot:DayPilotNavigator
             runat="server"
             ID="DayPilotNavigator1"
             ClientIDMode="Static"
             BoundDayPilotID="DayPilotCalendar1"
             ShowMonths="3"
             SelectMode="Week"
             OnBeforeCellRender="DayPilotNavigator1_OnBeforeCellRender" />
     </div>

                                <div style="margin-left: 150px;">
                                    <p>Available time slots:</p>

                                    <DayPilot:DayPilotCalendar
                                        runat="server"
                                        ID="DayPilotCalendar1"
                                        ClientIDMode="Static"
                                        ClientObjectName="dp"
                                        ViewType="Week"
                                        DurationBarWidth="10"
                                        OnCommand="DayPilotCalendar1_OnCommand"
                                        OnBeforeEventRender="DayPilotCalendar1_OnBeforeEventRender"
                                        EventClickHandling="JavaScript"
                                        EventClickJavaScript="edit(e)" />
                                </div>


                                <script>
                                    function edit(e) {
                                        new DayPilot.Modal({
                                            onClosed: function (args) {
                                                if (args.result == "OK") {
                                                    dp.commandCallBack('refresh');
                                                }
                                            }
                                        }).showUrl("Request.aspx?id=" + e.id());
                                    }
                                </script>


                            </div>
                        </div>--%>


                        <asp:DataList ID="DataList2" runat="server" Width="100%" OnItemDataBound="DataList2_ItemDataBound">
                            <ItemTemplate>

                                <div class="box box-default">
                                    <div class="box-header with-border">

                                        <!-- /.box-header -->
                                        <div class="box-body">

                                            <div class="row">


                                                <div class="col-lg-4">

                                                    <ul class="doctorlist">

                                                        <li>
                                                            <b style="margin-left: 40px">Services:</b>
                                                            <br />

                                                            <asp:Literal ID="ltlServices" runat="server" Text='<%# Eval("services") %>'></asp:Literal>
                                                        </li>

                                                    </ul>


                                                </div>

                                                <div class="col-lg-4">
                                                    <ul class="doctorlist">


                                                        <li>
                                                            <b>Education:</b>
                                                            <br />

                                                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("education") %>'></asp:Literal>
                                                        </li>

                                                        <li>
                                                            <b>Awards & Recognitions:</b><br />

                                                            <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("awardsRecognitions") %>'></asp:Literal>
                                                        </li>

                                                    </ul>

                                                </div>


                                                <div class="col-lg-4">


                                                    <ul class="doctorlist">

                                                        <li>
                                                            <b>Memberships:</b><br />
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("memberships") %>'></asp:Literal>
                                                        </li>


                                                        <li>
                                                            <b>Registrations:</b><br />
                                                            <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("registrations") %>'></asp:Literal>
                                                        </li>

                                                    </ul>


                                                </div>


                                            </div>


                                        </div>
                                        <!-- /.box-body -->
                                    </div>
                                </div>

                                <!-- /.box -->

                            </ItemTemplate>
                        </asp:DataList>

                        <div class="box box-default">


                            <div class="box-body" style="display: block;">


                                <h4><%--style="margin-left: 40px"--%><b>PHOTOS</b></h4>

                              <%--  <img src="images/doctor.png" style="width: 150px" />


                                <img src="images/doctor.png" style="width: 150px" />


                                <img src="images/doctor.png" style="width: 150px" />--%>

                              <%--  //Madhu code changes. --%>

                                  <asp:image id="HspImg1" ImageUrl="images/doctor.png" runat="server" CssClass="docprofile" />
<asp:image id="HspImg2" ImageUrl="images/doctor.png" runat="server" CssClass="docprofile"/>
<asp:image id="HspImg3" ImageUrl="images/doctor.png" runat="server" CssClass="docprofile"/>
<asp:image id="HspImg4" ImageUrl="images/doctor.png" runat="server" CssClass="docprofile"/>


                             <%--   //Madhu code changes end --%>



                            </div>




                        </div>


                        <div class="box box-default no-border">

                            <!-- /.box-header -->
                            <div class="box-body" style="display: block; padding: 30px;">

                                <img src="images/uthsc-college-of-pharmacy-logo-horizontal.png" width="100%" />



                            </div>
                            <!-- /.box-body -->


                        </div>

                        <div class="box box-default">
                            <div class="box-body">

                                <div id="disqus_thread"></div>
                                <script>

                                    /**
                                    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
                                    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
                                    /*
                                    var disqus_config = function () {
                                    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
                                    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
                                    };
                                    */
                                    (function () { // DON'T EDIT BELOW THIS LINE
                                        var d = document, s = d.createElement('script');
                                        s.src = 'https://dicatalyst.disqus.com/embed.js';
                                        s.setAttribute('data-timestamp', +new Date());
                                        (d.head || d.body).appendChild(s);
                                    })();
                                </script>
                                <%--<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>--%>
                            </div>

                        </div>

                        <div class="box box-default " id="map">
                            <div class="box-header with-border">
                                <h3 class="box-title"><b>Get Directions</b></h3>

                                <div class="pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>

                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">


                                <div id="getDirections" class="box box-default">
                                    <br />

                                    <div class="row">
                                        <p class="source">Note: The <b>Source Location</b> traced may not be accurate, please enter your location if it is not your preferred source location.</p>
                                        <div class="col-lg-8">
                                            <div class="geo-details">

                                                <asp:TextBox ID="txtSource" placeholder="Enter Source Location" runat="server" CssClass="form-control location"></asp:TextBox>
                                            </div>
                                        </div>


                                        <div class="col-lg-4">

                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                                                <ContentTemplate>
                                                    <asp:LinkButton ID="lnkGetDirections" runat="server" CssClass="btn btn-info" OnClick="lnkGetDirections_Click">Get Directions</asp:LinkButton>

                                                    <%-- <asp:Button ID="btnMovePin1" runat="server" OnClick="btnMovePin1_Click" Text="Move Pushpin" />
                <asp:Button ID="btnMovePin2" runat="server" OnClick="btnMovePin2_Click" Text="Move Horse" />--%>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </div>

                                    </div>

                                    <div class="box-body">



                                        <%--   <h3>Google map with moving pushpins.</h3>
                                Click on buttons to move a pushpin. Click on a pushpin to see it's description.--%>
                                        <div>
                                            <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />


                                        </div>
                                    </div>

                                </div>



                            </div>

                        </div>










                    </div>
                    <div class="col-lg-3">

                        <div class="box box-default">
                            <div class="box-header with-border">
                                <h4>
                                    <b>SIMILAR DOCTORS</b>
                                </h4>

                                <div class="vticker">
                                    <asp:Literal ID="ltlTicker" runat="server"></asp:Literal>


                                </div>

                            </div>
                        </div>
                        <div class="box box-default">
                            <div class="box-header with-border">
                                <img src="images/gam-ad-third-vertical_orig.png" width="100%" />
                                <br />
                                <br />
                                <img src="images/ads2.jpg" width="100%" />

                            </div>

                        </div>


                    </div>
                </div>
            </section>


        </div>

    </div>

    <script>
        function edit(e) {
            new DayPilot.Modal({
                onClosed: function (args) {
                    if (args.result == "OK") {
                        dp.commandCallBack('refresh');
                    }
                }
            }).showUrl("Request.aspx?id=" + e.id());
        }
    </script>

    <script id="dsq-count-scr" src="//dicatalyst.disqus.com/count.js" async></script>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAr8PJdluwfpHD9Hhkd4mB2Jr0xlR1ovME&libraries=places"></script>
    <script src="js/jquery.geocomplete.min.js"></script>

    <script type='text/javascript' src="GMap/GoogleMapAPIWrapper.js"></script>
    <script type='text/javascript'>
        //Load map on window start
        google.maps.event.addDomListener(window, 'load', DrawGoogleMap);
    </script>


    <script>
        $(function () {
            $(".location").geocomplete({
                details: ".geo-details",
                detailsAttribute: "data-geo"
            });

        });
    </script>

    <script>
        $(document).ready(function () {
            $("#LinkButton2").click(function () {
                $("#appointment").slideToggle();
            });
            $("#lnkTimings").ready(function () {
                $("#timings").slideToggle();
            });
        });
    </script>

    <script src="js/jquery.easy-ticker.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            var dd = $('.vticker').easyTicker({
                direction: 'up',
                easing: 'easeInOutBack',
                speed: 'slow',
                interval: 3500,
                height: 'auto',
                visible: 1,
                mousePause: 1,
                controls: {
                    up: '.up',
                    down: '.down',
                    toggle: '.toggle',
                    stopText: 'Stop !!!'
                }
            }).data('easyTicker');
        });
    </script>


</asp:Content>
