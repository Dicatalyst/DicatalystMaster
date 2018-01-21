using System;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.ServiceModel.Channels;
using DayPilot.Web.Ui;
using DayPilot.Web.Ui.Enums;
using DayPilot.Web.Ui.Events;
using DayPilot.Web.Ui.Events.Scheduler;
using CommandEventArgs = DayPilot.Web.Ui.Events.CommandEventArgs;
using Newtonsoft.Json;
using DAL;
using BAL;

public partial class Dentist_appointmentsManager : System.Web.UI.Page
{
    private const int MorningShiftStarts = 9;
    private const int MorningShiftEnds = 13;
    private const int AfternoonShiftStarts = 14;
    private const int AfternoonShiftEnds = 18;
    private const bool showSeparators = false;
    private DataTable dtPatientAppointmentDetails;
    protected BAL.AddPatient _addPatient = new BAL.AddPatient();

    protected void Page_Load(object sender, EventArgs e)
    {

        LoadDoctors(Session["userId"].ToString());

        if (!IsPostBack)
        {
            LoadAppointmentsDataForCalender();
            //DayPilotScheduler1.StartDate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, 1);
            //DayPilotScheduler1.Days = DateTime.DaysInMonth(DateTime.Today.Year, DateTime.Today.Month);
            //DayPilotScheduler1.SetScrollX(DateTime.Today);
            ////LoadTimeline();
            //LoadAppointments();
        }

    }

    private void LoadDoctors(string doctorId)
    {
        DataTable doctors = Db.LoadDoctors(doctorId);
        if (doctors.Rows.Count > 0)
        {
            lblDocFullName.Text = doctors.Rows[0]["fullName"].ToString();
            lblDelDocFullName.Text = doctors.Rows[0]["fullName"].ToString();
        }

        //DayPilotScheduler1.Resources.Clear();
        //foreach (DataRow row in doctors.Rows)
        //{
        //    DayPilotScheduler1.Resources.Add((string)row["fullName"], Convert.ToString(row["uniqueRandomId"]));
        //}
    }

    public void LoadAppointmentsDataForCalender()
    {
        dtPatientAppointmentDetails = new DataTable();
        dtPatientAppointmentDetails = _addPatient.getPatientAppointmentDetails(Session["userId"].ToString()); 
        var data = JsonConvert.SerializeObject(dtPatientAppointmentDetails);
        hdnDataForAppMangerCalender.Value = data;
    }

    //private void LoadAppointments()
    //{
    //    DataTable table = Db.LoadAppointments(DayPilotScheduler1.VisibleStart, DayPilotScheduler1.VisibleEnd);
    //    DayPilotScheduler1.DataSource = table;
    //    DayPilotScheduler1.DataIdField = "AppointmentId";
    //    DayPilotScheduler1.DataTextField = "AppointmentPatientId";
    //    DayPilotScheduler1.DataStartField = "AppointmentStart";
    //    DayPilotScheduler1.DataEndField = "AppointmentEnd";
    //    DayPilotScheduler1.DataTagFields = "AppointmentStatus";
    //    DayPilotScheduler1.DataResourceField = "DoctorId";
    //    DayPilotScheduler1.DataBind();
    //    DayPilotScheduler1.Update();
    //}

    //private string ScaleResolved
    //{
    //    get
    //    {
    //        string scaleSize = (string)DayPilotScheduler1.ClientState["size"];

    //        if (String.IsNullOrEmpty(scaleSize))
    //        {
    //            scaleSize = "shifts";
    //        }
    //        return scaleSize;
    //    }
    //}

    //private void LoadTimeline()
    //{
    //    switch (ScaleResolved)
    //    {
    //        case "hours":
    //            LoadTimelineHours();
    //            break;
    //        case "shifts":
    //            LoadTimelineShifts();
    //            break;
    //    }
    //}

    //private void LoadTimelineHours()
    //{

    //    DayPilotScheduler1.Scale = TimeScale.Manual;
    //    DayPilotScheduler1.Timeline.Clear();

    //    DayPilotScheduler1.Separators.Clear();

    //    for (int i = 0; i < DayPilotScheduler1.Days; i++)
    //    {
    //        DateTime day = DayPilotScheduler1.StartDate.AddDays(i);

    //        for (int x = MorningShiftStarts; x < MorningShiftEnds; x++)
    //        {
    //            DayPilotScheduler1.Timeline.Add(day.AddHours(x), day.AddHours(x + 1));
    //        }
    //        for (int x = AfternoonShiftStarts; x < AfternoonShiftEnds; x++)
    //        {
    //            DayPilotScheduler1.Timeline.Add(day.AddHours(x), day.AddHours(x + 1));
    //        }

    //        if (showSeparators)
    //        {
    //            DayPilotScheduler1.Separators.Add(day.AddHours(MorningShiftStarts), Color.Black);
    //            DayPilotScheduler1.Separators.Add(day.AddHours(AfternoonShiftStarts), Color.DarkGray);
    //        }

    //    }


    //    DayPilotScheduler1.TimeHeaders.Clear();
    //    DayPilotScheduler1.TimeHeaders.Add(new TimeHeader(GroupByEnum.Month));
    //    DayPilotScheduler1.TimeHeaders.Add(new TimeHeader(GroupByEnum.Day, "ddd d"));
    //    DayPilotScheduler1.TimeHeaders.Add(new TimeHeader(GroupByEnum.Hour, "ht"));

    //}

    //private void LoadTimelineShifts()
    //{
    //    DayPilotScheduler1.Scale = TimeScale.Manual;
    //    DayPilotScheduler1.Timeline.Clear();

    //    DayPilotScheduler1.Separators.Clear();

    //    for (int i = 0; i < DayPilotScheduler1.Days; i++)
    //    {
    //        DateTime day = DayPilotScheduler1.StartDate.AddDays(i);

    //        DayPilotScheduler1.Timeline.Add(day.AddHours(MorningShiftStarts), day.AddHours(MorningShiftEnds));
    //        DayPilotScheduler1.Timeline.Add(day.AddHours(AfternoonShiftStarts), day.AddHours(AfternoonShiftEnds));

    //        if (showSeparators)
    //        {
    //            DayPilotScheduler1.Separators.Add(day.AddHours(MorningShiftStarts), Color.Black);
    //            DayPilotScheduler1.Separators.Add(day.AddHours(AfternoonShiftStarts), Color.DarkGray);
    //        }

    //    }

    //    DayPilotScheduler1.TimeHeaders.Clear();
    //    DayPilotScheduler1.TimeHeaders.Add(new TimeHeader(GroupByEnum.Month));
    //    DayPilotScheduler1.TimeHeaders.Add(new TimeHeader(GroupByEnum.Day, "ddd d"));
    //    DayPilotScheduler1.TimeHeaders.Add(new TimeHeader(GroupByEnum.Cell, "tt"));

    //}

    //protected void DayPilotScheduler1_OnTimeRangeSelected(object sender, TimeRangeSelectedEventArgs e)
    //{
    //    int slotDuration = 60;

    //    string doctorId = e.Resource.ToString();

    //    for (int i = 0; i < DayPilotScheduler1.Timeline.Count; i++)
    //    {
    //        TimeCell cell = DayPilotScheduler1.Timeline[i];

    //        if (e.Start <= cell.Start && cell.End <= e.End)
    //        {
    //            for (DateTime start = cell.Start; start < cell.End; start = start.AddMinutes(slotDuration))
    //            {
    //                CreateShift(start, start.AddMinutes(slotDuration), doctorId);
    //            }
    //        }
    //    }

    //    LoadTimeline();
    //    LoadAppointments();
    //}

    private void CreateShift(DateTime start, DateTime end, string doctorId)
    {
        if (start >= end)
        {
            throw new Exception("Invalid shift, Start >= End");
        }

        Db.CreateAppointment(doctorId, start, end);
    }

    protected void ButtonClear_OnClick(object sender, EventArgs e)
    {

        //DateTime start = DayPilotScheduler1.StartDate;
        //DateTime end = DayPilotScheduler1.StartDate.AddDays(DayPilotScheduler1.Days);

       // Db.DeleteAppointmentsFree(start, end);

        Response.Redirect("Manager.aspx", true);
    }

    //protected void DayPilotScheduler1_OnEventDelete(object sender, EventDeleteEventArgs e)
    //{
    //    int id = Convert.ToInt32(e.Id);
    //    Db.DeleteAppointmentIfFree(id);

    //    LoadAppointments();
    //}

    //protected void DayPilotScheduler1_OnBeforeEventRender(object sender, BeforeEventRenderEventArgs e)
    //{
    //    string status = e.Tag["AppointmentStatus"];
    //    switch (status)
    //    {
    //        case "free":
    //            e.DurationBarColor = "green";
    //            e.EventDeleteEnabled = ScaleResolved == "hours";  // only allow deleting in the more detailed hour scale mode
    //            break;
    //        case "waiting":
    //            e.DurationBarColor = "orange";
    //            e.EventDeleteEnabled = false;
    //            break;
    //        case "confirmed":
    //            e.DurationBarColor = "#f41616";  // red            
    //            e.EventDeleteEnabled = false;
    //            break;
    //    }

    //}

    //protected void DayPilotScheduler1_OnCommand(object sender, CommandEventArgs e)
    //{
    //    switch (e.Command)
    //    {
    //        case "navigate":
    //            DayPilotScheduler1.StartDate = (DateTime)e.Data["start"];
    //            DayPilotScheduler1.Days = (int)e.Data["days"];
    //            DayPilotScheduler1.ScrollX = 0;
    //            LoadTimeline();
    //            LoadDoctors(Session["userId"].ToString());
    //            LoadAppointments();
    //            break;
    //        case "refresh":
    //            LoadTimeline();
    //            LoadDoctors(Session["userId"].ToString());
    //            LoadAppointments();
    //            break;
    //    }
    //}

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        //Need to validate cases
        CreateShift(Convert.ToDateTime(hdnCreateStart.Value.ToString()), Convert.ToDateTime(hdnCreateEnd.Value.ToString()), Session["userId"].ToString());
        LoadAppointmentsDataForCalender();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        //Need to validate cases
        Db.DeleteAppointmentsFree(Convert.ToDateTime(hdnDelStart.Value.ToString()), Convert.ToDateTime(hdnDelEnd.Value.ToString()), Session["userId"].ToString());
        LoadAppointmentsDataForCalender();
    }
}