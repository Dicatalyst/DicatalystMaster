using System;
using System.Data;
using System.Web;
using System.Web.UI;
using BAL;
using DayPilot.Web.Ui.Events;
using DayPilot.Web.Ui.Events.Calendar;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;
using DayPilot.Web.Ui.Data;
using DayPilot.Utils;
using System.Net;
using System.Net.Mail;
using DAL;
using System.Xml;
using System.Collections.Generic;
using Newtonsoft.Json;
using System.Globalization;

public partial class Dentist_Appointments : Page
{
    private SqlCommand cmd;
    private DataSet ds;
    private DAL.Connections dac = new Connections();
    private DataTable _appointments;
    protected BAL.AddPatient _addPatient = new BAL.AddPatient();
    private readonly BAL.Users _usersbal = new BAL.Users();
    private readonly DAL.users _userDal = new DAL.users();
    private DataTable dt, dtPatientAppointmentDetails, dtPatientDetails;
    private BAL.Notify noty = new BAL.Notify();
    private DAL.randomUniqueNumber rdn = new DAL.randomUniqueNumber();
    private readonly BAL.UsersVsModules userModules = new UsersVsModules();
    private readonly DAL.appointments _app = new DAL.appointments();
    private readonly BAL.appointments _appBAL = new BAL.appointments();
    private BAL.AddPatient addPatient = new BAL.AddPatient();
    private int appointmentId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Session["userType"] = 1;
            //Session["receptionId"] = ds.Tables[0].Rows[0]["id"].ToString();
            //Session["receptionDoctorId"] = ds.Tables[0].Rows[0]["doctorId"].ToString();

            //ViewState["CreateStart"] = LblCreateStart.Text;
            //ViewState["CreateEnd"] = LblCreateStart.Text;

            if (!string.IsNullOrEmpty(Session["userType"] as string))
            {
                Session["userId"] = Session["receptionDoctorId"];

            }
            else if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                var dtDoc = _usersbal.GetLoginUserDetails(Session["userId"].ToString());
                if (dtDoc.Rows.Count > 0)
                {
                    ltlDoctorName.Text = dtDoc.Rows[0]["fullName"].ToString();
                    //ltFee.Text = dt.Rows[0]["fee"].ToString();
                    DataTable dtfee = addPatient.getfee(Session["userId"].ToString());
                    if (dtfee.Rows.Count > 0)
                    {
                        txtConsultationFee.Text = dtfee.Rows[0]["fee"].ToString();
                        txtFee.Text = dtfee.Rows[0]["fee"].ToString();
                    }
                    else
                    {
                        txtConsultationFee.Text = "0";
                        txtFee.Text = "0";
                    }

                }
                dt = _addPatient.getPatientDetails(Session["userId"].ToString());
                //DayPilotCalendarWeek.DayBeginsHour = 9;
                //DayPilotCalendarWeek.DayEndsHour = 21;
                //DayPilotCalendarWeek.TimeHeaderCellDuration = 60;
                //DayPilotCalendarWeek.CellHeight = 90;
                //DayPilotCalendarWeek.DataSource = DbSelectEvents(DayPilotCalendarWeek.StartDate, DayPilotCalendarWeek.EndDate.AddDays(1));
                //DayPilotCalendarWeek.DataBind();
                ////LoadDoctors();
                //LoadNavigatorData();
                //LoadCalendarData();
                DataList2.DataSource = dt;
                DataList2.DataBind();
                LoadAppointmentsDataForCalender();

            }
            else
            {

            }
        }
        else
        {
            LblCreateStart.Text = Request.Form[hdnCreateStart.UniqueID];
            LblCreateEnd.Text = Request.Form[hdnCreateEnd.UniqueID];
        }
    }


    public void LoadAppointmentsDataForCalender()
    {
        dtPatientAppointmentDetails = new DataTable();
        dtPatientAppointmentDetails = _addPatient.getPatientAppointmentDetails(Session["userId"].ToString());
        //DataTable dt = new DataTable();
        //dt.Columns.Add("title", typeof(string));
        //dt.Columns.Add("start", typeof(string));
        //dt.Columns.Add("end", typeof(string));    
        //dt.Rows.Add("Satinder Singh", "2017-12-01", "2017-12-05");
        //dt.Rows.Add("Amit Sarna", "2017-12-04", "2017-12-05");     


        var data = JsonConvert.SerializeObject(dtPatientAppointmentDetails);
        hdnDataForCalender.Value = data;

    }

    /*protected void DayPilotCalendarWeek_Command(object sender, DayPilot.Web.Ui.Events.CommandEventArgs e)
    {
        switch (e.Command)
        {
            case "navigate":
                DayPilotCalendarWeek.StartDate = (DateTime)e.Data["day"];
                DayPilotCalendarWeek.DataSource = DbSelectEvents(DayPilotCalendarWeek.StartDate, DayPilotCalendarWeek.EndDate.AddDays(1));
                DayPilotCalendarWeek.DataBind();
                DayPilotCalendarWeek.Update();
                LoadNavigatorData();
                break;
            case "refresh":
                LoadNavigatorData();
                break;

        }
    }

    protected void DayPilotCalendarWeek_OnTimeRangeSelected(object sender, TimeRangeSelectedEventArgs e)
    {
        // populate the fields
        //TextBoxCreateName.Text = "New Event";
        DateTime starttime = Convert.ToDateTime(e.Start.ToString());
        if (starttime < DateTime.Now)
        {
            DayPilotCalendarWeek.UpdateWithMessage("You Cannot Create a Previous Appointment");
            noty.Error_Display("You Cannot Create a Previous Appointment", Page);

        }
        else
        {
            Session["StartTime"] = e.Start.ToString("M/d/yyyy HH:mm");
            Session["EndTime"] = e.End.ToString("M/d/yyyy HH:mm");


            TextBoxCreateStart.Text = e.Start.ToString("M/d/yyyy HH:mm tt");
            TextBoxCreateEnd.Text = e.End.ToString("HH:mm tt");
            UpdatePanelCreate.Update();
            ModalPopupCreate.Show();
        }
    }*/

    //Below method added by Ram
    private string GetEmailtemplate(string UserId, string Password)
    {
        string sTemplate = string.Empty;
        System.IO.StreamReader sreamreader = null;
        var strLocation = System.Web.HttpContext.Current.Server.MapPath("EmailTemplates/AppointmentConfirmation.html");
        try
        {
            sreamreader = new System.IO.StreamReader(strLocation);
            sTemplate = sreamreader.ReadToEnd();
            sreamreader.Close();
            sTemplate = sTemplate.Replace("{UserName}", UserId);
            sTemplate = sTemplate.Replace("{Password}", Password);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return sTemplate;
    }

    protected void ButtonCreateSave_Click(object sender, EventArgs e)
    {

        //DateTime start = DateTime.ParseExact(TextBoxCreateStart.Text, "M/d/yyyy HH:mm", Thread.CurrentThread.CurrentCulture);
        //DateTime end = DateTime.ParseExact(TextBoxCreateEnd.Text, "M/d/yyyy HH:mm", Thread.CurrentThread.CurrentCulture);
        //ModalPopupCreate.Dispose();
        //ModalPopupCreate.Hide();
        //DateTime D = DateTime.Now;

        //DateTime start = DateTime.ParseExact(LblCreateStart.Text.ToString(), "MM/DD/yyyy HH:mm", Thread.CurrentThread.CurrentCulture);
        DateTime start = Convert.ToDateTime(LblCreateStart.Text.ToString());
        //DateTime end = DateTime.ParseExact(LblCreateEnd.Text.ToString(), "MM/DD/yyyy HH:mm", Thread.CurrentThread.CurrentCulture);
        DateTime end = Convert.ToDateTime(LblCreateEnd.Text.ToString());
        string name = TextBoxCreateName.Text;
        string randomId = rdn.getRandomUniqueNumber();
        string ExistingrandomId = null;


        cmd = dac.GetCommand("sp_getRegisteredPatientDetails");
        SqlParameter[] par = {
                new SqlParameter("@email", txtEmailId.Text)
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        if (ds.Tables[0].Rows.Count > 0)
        {
            randomId = ds.Tables[0].Rows[0][0].ToString();
            ExistingrandomId = randomId;
        }
        else
        {
            _userDal.insertRegistrationDetails(randomId, TextBoxCreateName.Text, txtEmailId.Text, txtMobileNo.Text, randomId, DateTime.Now, true, false, false, "", 2);
        }
        //if (ExistingrandomId == null)
        //{
        //Commoncode for new and existing registered user
        //userModules.InsertUsersVsModules(randomId, 7, 0);
        //addPatient.InsertAddPatient(randomId, ddlsalutation, txtAge, radmar, radgen, txtOccupation, txtChiefComplaint, txtConsultationFee, txtAddress, Session["userId"].ToString());
        //}
        if (ExistingrandomId != null)
        {
            if (hdnAppointmentID.Value.ToString() != "[object Object]")
            {
                appointmentId = Convert.ToInt32(hdnAppointmentID.Value.ToString());
                Session["appointmentIds"] = appointmentId;
            }
        }
        //if (Convert.ToInt32(Session["appointmentIds"].ToString())!= 0)
        if (appointmentId != 0)
        {
            // _app.updateappointments(Convert.ToInt32(Session["appointmentIds"].ToString()), randomId, DropDownListStatus.SelectedItem.Value);
            _app.updateappointments(appointmentId, randomId, DropDownListStatus.SelectedItem.Value);
            userModules.InsertUsersVsModules(randomId, 7, 0);
            addPatient.UpdateAddPatientDetails(appointmentId, ddlsalutation, txtAge, radmar, radgen, txtOccupation, txtChiefComplaint, txtConsultationFee, txtAddress, Session["userId"].ToString());
        }
        else
        {
            userModules.InsertUsersVsModules(randomId, 7, 0);
            addPatient.InsertAddPatient(randomId, ddlsalutation, txtAge, radmar, radgen, txtOccupation, txtChiefComplaint, txtConsultationFee, txtAddress, Session["userId"].ToString());
            _app.insertappointments(start, end, Session["userId"].ToString(), randomId, DropDownListStatus.SelectedItem.Value);
         }
        //Ravi todo
        //Ravi G commnetyed for kalysn sir code  // For Local Testing

        //var fromEmail = "mail2raviadabala@gmail.com";
        //var password = "ravi6500";

        //using (var mm = new MailMessage(fromEmail, txtEmailId.Text))
        //{
        //    mm.Subject = "No Reply - Appointment Confirmation From DiCatalyst";
        //    //Below line commented by Ram
        //    //mm.Body = "Please login to your account to manage your appointment, http://www.dicatalyst.com/login.aspx" + "<br />" + "Username: " + txtEmailId.Text + "<br />Your Tempororary Password is: " + randomId;
        //    mm.Body = GetEmailtemplate(txtEmailId.Text.Trim(), randomId);
        //    mm.IsBodyHtml = true;
        //    var smtp = new SmtpClient();
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.EnableSsl = true;
        //    var networkCred = new NetworkCredential(fromEmail, password);
        //    smtp.UseDefaultCredentials = true;
        //    smtp.Credentials = networkCred;
        //    smtp.Port = 587;
        //    smtp.Send(mm);
        //}

        //Ravi G commnetyed for kalysn sir code  // For Local Testing
        
        var fromEmail = "info@Dicatalyst.com";
        var password = "India@206$";

        using (var mm = new MailMessage(fromEmail, txtEmailId.Text))
        {
            mm.Subject = "No Reply - Appointment Confirmation From DiCatalyst";
            //Below line commented by Ram
            //mm.Body = "Please login to your account to manage your appointment, http://www.dicatalyst.com/login.aspx" + "<br />" + "Username: " + txtEmailId.Text + "<br />Your Tempororary Password is: " + randomId;
            mm.Body = GetEmailtemplate(txtEmailId.Text.Trim(), randomId);
            mm.IsBodyHtml = true;
            var smtp = new SmtpClient("relay-hosting.secureserver.net", 25);

            smtp.EnableSsl = false;

            var networkCred = new NetworkCredential(fromEmail, password);
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = networkCred;
            smtp.Send(mm);
        }

        //DayPilotCalendarWeek.DataSource = DbSelectEvents(DayPilotCalendarWeek.StartDate, DayPilotCalendarWeek.EndDate.AddDays(1));
        //DayPilotCalendarWeek.DataBind();
        //UpdatePanelCalendar.Update();
            dt = _addPatient.getPatientDetails(Session["userId"].ToString());
            DataList2.DataSource = dt;
            DataList2.DataBind();
            LoadAppointmentsDataForCalender();
            Response.Write("<script>alert('New appointment has been created successfully');</script>");
            Response.Redirect("~/Dentist/Appointments.aspx");
            hdnIsValidSave.Value = "0";
    }

    //protected void ButtonCreateCancel_Click(object sender, EventArgs e)
    //{
    //    ModalPopupCreate.Hide();
    //}

    //protected void DayPilotCalendarWeek_OnEventClick(object sender, EventClickEventArgs e)
    //{
    //    // populate the fields
    //    int hours = Convert.ToInt32(DateTime.Now.Hour);
    //    if (e.End > DateTime.Today || (e.End == DateTime.Today && DateTime.Now.TimeOfDay.Hours < hours))  // must checkout before 10 am
    //    {

    //        ltlPatientId.Text = e.Text;
    //        int appointmentId = Convert.ToInt32(e.Id);
    //        Session["appointmentIds"] = appointmentId;



    //        cmd = dac.GetCommand("sp_GetPatientDetailsForAppointments");
    //        SqlParameter[] par = {
    //            new SqlParameter("@AppointmentId", appointmentId)
    //        };

    //        for (int i = 0; i < par.Length; i++)
    //        {
    //            cmd.Parameters.Add(par[i]);
    //        }

    //        ds = dac.ExecuteNonQuery_selectQuery(cmd);
    //        if (ds.Tables[0].Rows.Count > 0)
    //        {

    //            Session["StartTime"] = ltlStart.Text = e.Start.ToString("M/d/yyyy HH:mm");
    //            Session["EndTime"] = ltlEnd.Text = e.End.ToString("M/d/yyyy HH:mm");
    //            DropDownList4.SelectedValue = ds.Tables[0].Rows[0]["salutation"].ToString();
    //            TextBox3.Text = ds.Tables[0].Rows[0]["fullName"].ToString();
    //            TextBox4.Text = ds.Tables[0].Rows[0]["age"].ToString();
    //            RadioButtonList2.SelectedValue = ds.Tables[0].Rows[0]["maritalStatus"].ToString();
    //            RadioButtonList3.SelectedValue = ds.Tables[0].Rows[0]["gender"].ToString();
    //            TextBox5.Text = ds.Tables[0].Rows[0]["contactNumber"].ToString();
    //            TextBox6.Text = ds.Tables[0].Rows[0]["email"].ToString();
    //            TextBox7.Text = ds.Tables[0].Rows[0]["address"].ToString();
    //            TextBox12.Text = ds.Tables[0].Rows[0]["occupation"].ToString();
    //            TextBox13.Text = ds.Tables[0].Rows[0]["chiefComplaint"].ToString();
    //            TextBox14.Text = ds.Tables[0].Rows[0]["consultationFee"].ToString();
    //            Literal3.Text = ds.Tables[0].Rows[0]["doctorName"].ToString();
    //            HiddenEditId.Value = appointmentId.ToString();
    //            UpdatePanelEdit.Update();
    //            ModalPopupEdit.Show();
    //        }
    //        else
    //        {                Session["StartTime"] = TextBoxCreateStart.Text = e.Start.ToString("M/d/yyyy HH:mm");
    //            Session["EndTime"] = TextBoxCreateEnd.Text = e.End.ToString("M/d/yyyy HH:mm");
    //            ModalPopupCreate.Show();
    //        }
    //    }

    //}

    protected void ButtonEditSave_Click(object sender, EventArgs e)
    {

        cmd = dac.GetCommand("sp_UpdatePatientAppointmentDetails");
        SqlParameter[] par = {
                new SqlParameter("@AppointmentId", HiddenEditId.Value) ,
                new SqlParameter("@AppointmentStatus",DropDownList3.SelectedItem.Value)

            };
        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }
        dac.EnsureOpen();
        cmd.ExecuteScalar();


        //DateTime start = DateTime.ParseExact(ltlStart.Text, "M/d/yyyy HH:mm", Thread.CurrentThread.CurrentCulture);
        //DateTime end = DateTime.ParseExact(ltlEnd.Text, "M/d/yyyy HH:mm", Thread.CurrentThread.CurrentCulture);
        //string name = TextBox3.Text;
        //string id = HiddenEditId.Value;

        //DbUpdateEvent(id, start, end, name);

        ModalPopupEdit.Hide();

        //DayPilotCalendarWeek.DataSource = DbSelectEvents(DayPilotCalendarWeek.StartDate, DayPilotCalendarWeek.EndDate.AddDays(1));
        //DayPilotCalendarWeek.DataBind();
        //UpdatePanelCalendar.Update();

    }

    protected void ButtonEditCancel_Click(object sender, EventArgs e)
    {
        ModalPopupEdit.Hide();
    }

    protected void ButtonFind_Click(object sender, EventArgs e)
    {

    }


    private DataTable DbSelectEvents(DateTime start, DateTime end)
    {

        //SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [Appointment] WHERE NOT (([AppointmentEnd] <= @start) OR ([AppointmentStart] >= @end))", ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        //da.SelectCommand.Parameters.AddWithValue("start", start);
        //da.SelectCommand.Parameters.AddWithValue("end", end);
        DataTable dt = new DataTable();
        //da.Fill(dt);
        dt = _appBAL.getAppointments(Session["userId"].ToString(), start, end);
        return dt;
    }

    private void DbInsertEvent(DateTime start, DateTime end, string name)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["daypilot"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [event] (eventstart, eventend, name) VALUES(@start, @end, @name)", con);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("name", name);
            cmd.ExecuteNonQuery();
        }
    }

    private void DbUpdateEvent(string id, DateTime start, DateTime end, string name)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["daypilot"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE [event] SET eventstart = @start, eventend = @end, name = @name WHERE id = @id", con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("name", name);
            cmd.ExecuteNonQuery();
        }
    }


    /*private void LoadNavigatorData()
    {
        if (_appointments == null)
            // LoadAppointments();

            DayPilotNavigator1.DataSource = _appointments;
        DayPilotNavigator1.DataStartField = "AppointmentStart";
        DayPilotNavigator1.DataEndField = "AppointmentEnd";
        DayPilotNavigator1.DataIdField = "AppointmentId";
        DayPilotNavigator1.DataBind();
    }*/





    /*protected void DayPilotCalendar1_OnBeforeCellRender(object sender, DayPilot.Web.Ui.Events.BeforeCellRenderEventArgs e)
    {

        if (e.Start.Hour == 13)
        {
            e.CssClass = "daypilotnonbusinesshours";

            //e.IsBusiness = false;
            //e.BackgroundColor = "red";
        }
    }

    protected void DayPilotCalendarWeek_BeforeEventRender(object sender, BeforeEventRenderEventArgs e)
    {
        var status = e.Tag["AppointmentStatus"];

        int hours = Convert.ToInt32(DateTime.Now.Hour);

        switch (status)
        {
            case "free":
                //if (e.Start < DateTime.Today || (e.Start == DateTime.Today && DateTime.Now.TimeOfDay.Hours > hours))  // must arrive before 6 pm
                //{
                //    e.DurationBarColor = "#f41616";  // red
                //    //  e.ToolTip = "Late arrival";
                //}
                //else
                if (e.End < DateTime.Today || (e.End == DateTime.Today && DateTime.Now.TimeOfDay.Hours > hours))  // must checkout before 10 am
                {
                    e.DurationBarColor = "#f41616";  // red
                }
                else
                {
                    e.DurationBarColor = "blue";
                }
                break;
            case "waiting":
                // if (e.Start < DateTime.Today || (e.Start == DateTime.Today && DateTime.Now.TimeOfDay.Hours > 18))  // must arrive before 6 pm
                //{
                //    e.DurationBarColor = "#f41616";  // red
                //    //  e.ToolTip = "Late arrival";
                //}
                //else
                if (e.End < DateTime.Today || (e.End == DateTime.Today && DateTime.Now.TimeOfDay.Hours > hours))  // must checkout before 10 am
                {
                    e.DurationBarColor = "#f41616";  // red
                }
                else
                {
                    e.DurationBarColor = "orange";
                }
                break;
            case "confirmed":
                e.DurationBarColor = "green"; // red
                break;





        }
        string patientId = e.Html.ToString();
        int appointmentId = Convert.ToInt32(e.Id);
        DataTable dtpatient = _app.GetPatientDetailsForAppointments(appointmentId);
        string text = "";
        if (dtpatient.Rows.Count > 0)
        {
            text = "<b>Name: " + dtpatient.Rows[0]["fullName"].ToString() + "</b><br /><b>Email:</b> " +
                   dtpatient.Rows[0]["email"].ToString() + "<br /><b>Mobile: </b>" +
                   dtpatient.Rows[0]["contactNumber"].ToString() +
                   "<br /><b>Chief Complaint: </b>" + dtpatient.Rows[0]["chiefComplaint"].ToString();



            //text = "<b>Name: " + dtpatient.Rows[0]["fullName"].ToString() + "</b><br /><b>Email:</b> " +
            //     dtpatient.Rows[0]["email"].ToString() + "<br /><b>Mobile: </b>" +
            //     dtpatient.Rows[0]["contactNumber"].ToString() +
            //     "<br /><b>Occ: </b>" + dtpatient.Rows[0]["occupation"].ToString() +
            //     "<br /><b>Chief Complaint: </b>" + dtpatient.Rows[0]["chiefComplaint"].ToString() +
            //     "<br /><b>Gender: </b>" + dtpatient.Rows[0]["gender"].ToString() + "&nbsp;&nbsp;<b>Age: </b>" +
            //     dtpatient.Rows[0]["age"].ToString();
        }
        e.Html = "<b>Patient Id: " + e.Html + "</b><br />" + text;
    }

    protected void DayPilotCalendarWeek_OnEventMove(object sender, EventMoveEventArgs e)
    {
        MoveAppointment(e.Id, e.NewStart, e.NewEnd);

        DayPilotCalendarWeek.DataSource = DbSelectEvents(DayPilotCalendarWeek.StartDate, DayPilotCalendarWeek.EndDate.AddDays(1));
        DayPilotCalendarWeek.DataBind();
        DayPilotCalendarWeek.UpdateWithMessage("Event moved.");
        UpdatePanelCalendar.Update();

    }*/

    public static void MoveAppointment(string id, DateTime start, DateTime end)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "UPDATE [Appointment] SET [AppointmentStart] = @start, [AppointmentEnd] = @end WHERE [AppointmentId] = @id",
                con);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
        }
    }
    //protected void LinkButton2_Click(object sender, EventArgs e)
    //{
    //    ModalPopupEdit.Hide();
    //}
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        ModalPopupEdit.Hide();
    }

    //protected void lnkDiag_Click(object sender, EventArgs e)
    //{
    //    //Get the reference of the clicked button.
    //    LinkButton button = (sender as LinkButton);

    //    //Get the command argument
    //    string commandArgument = button.CommandArgument;

    //    //Get the Repeater Item reference
    //    RepeaterItem item = button.NamingContainer as RepeaterItem;

    //    //Get the repeater item index
    //    int index = item.ItemIndex;
    //}
    protected void DataList2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Label lbl = e.Item.FindControl("Label1") as Label;
        string patientId = lbl.Text;
        Session["PId"] = patientId;
        //Modifications by Ram Start
        if (e.CommandName == "Diagnosis")
            Response.Redirect("medicalhistory.aspx");
        if (e.CommandName == "Update")
        {
            TextBox txtName = e.Item.FindControl("txtName") as TextBox;
            TextBox txtAge = e.Item.FindControl("txtAge") as TextBox;
            TextBox txtgender = e.Item.FindControl("txtGender") as TextBox;
            TextBox txtMaritalStatus = e.Item.FindControl("txtMaritalStatus") as TextBox;
            TextBox txtEmail = e.Item.FindControl("txtEmail") as TextBox;
            TextBox txtContactNo = e.Item.FindControl("txtContactNo") as TextBox;
            TextBox txtOccupation = e.Item.FindControl("txtOccupation") as TextBox;
            TextBox txtComplaint = e.Item.FindControl("txtComplaint") as TextBox;

            string Fullname = txtName.Text.Trim();
            string Age = txtAge.Text.Trim();
            string Gender = txtgender.Text.Trim();
            string MaritalStatus = txtMaritalStatus.Text.Trim();
            string Email = txtEmail.Text.Trim();
            string Contact = txtContactNo.Text.Trim();
            string Occupation = txtOccupation.Text.Trim();
            string Complaint = txtComplaint.Text.Trim();

            //OnCancel(null, null);
            _usersbal.Updatepatientdtls(patientId, Fullname, Convert.ToInt32(Age), Contact, Occupation, Complaint);
            DataTable dt = _addPatient.getPatientDetails(Session["userId"].ToString());
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }

        if (e.CommandName == "Delete")
        {
            string AppointmentId = e.CommandArgument.ToString();
            _usersbal.DeleteAppointment(Convert.ToInt32(AppointmentId));
            DataTable dt = _addPatient.getPatientDetails(Session["userId"].ToString());
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }
        //Modifications by Ram End
    }

    //Below event Added by Ram
    protected void OnEdit(object sender, EventArgs e)
    {
        RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
        this.ToggleElements(item, true);
    }

    //Below method Added by Ram
    private void ToggleElements(RepeaterItem item, bool isEdit)
    {
        //Toggle Buttons.
        item.FindControl("lnkEdit").Visible = !isEdit;
        item.FindControl("lnkUpdate").Visible = isEdit;
        item.FindControl("lnkCancel").Visible = isEdit;
        item.FindControl("lnkDelete").Visible = !isEdit;


        item.FindControl("lblName").Visible = !isEdit;
        item.FindControl("txtName").Visible = isEdit;
        item.FindControl("lblAge").Visible = !isEdit;
        item.FindControl("txtAge").Visible = isEdit;
        //item.FindControl("lblGender").Visible = !isEdit;
        //item.FindControl("txtGender").Visible = isEdit;

        //item.FindControl("lblMaritalStatus").Visible = !isEdit;
        //item.FindControl("txtMaritalStatus").Visible = isEdit;
        item.FindControl("lblContactNo").Visible = !isEdit;
        item.FindControl("txtContactNo").Visible = isEdit;
        item.FindControl("lblOccupation").Visible = !isEdit;
        item.FindControl("txtOccupation").Visible = isEdit;

        item.FindControl("lblComplaint").Visible = !isEdit;
        item.FindControl("txtComplaint").Visible = isEdit;

        //item.FindControl("lblEmail").Visible = !isEdit;
        //item.FindControl("txtEmail").Visible = isEdit;

    }

    //Below event Added by Ram
    protected void OnCancel(object sender, EventArgs e)
    {
        RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
        this.ToggleElements(item, false);
    }

    protected void btnFindUser_Click(object sender, EventArgs e)
    {

    }
    //public DataTable LoadPatientDetailsByAppointmentID(int appid)
    //{
    //    dtPatientDetails = new DataTable();
    //    dtPatientDetails = _addPatient.getPatientDetails(appid);
    //    return dtPatientDetails;
    //}

    //protected void btnPatientDetials_Click(object sender, EventArgs e)
    //{
    //    DataTable dt = new DataTable();
    //    int appID = Convert.ToInt32(hdnAppointmentID.Value.ToString());
    //    if (appID > 0)
    //    {
    //        dt = LoadPatientDetailsByAppointmentID(appID);
    //        if (dt.Rows.Count > 0)
    //        {
    //            ddlsalutation.Text = dt.Rows[0]["salutation"].ToString();
    //            TextBoxCreateName.Text = dt.Rows[0]["fullName"].ToString();
    //            radmar.SelectedIndex = dt.Rows[0]["maritalStatus"].ToString() == "Single" ? 0 : 1;
    //            radgen.SelectedIndex = dt.Rows[0]["gender"].ToString() == "Female" ? 1 : 0;
    //            txtMobileNo.Text = dt.Rows[0]["contactNumber"].ToString();
    //            txtEmailId.Text = dt.Rows[0]["email"].ToString();
    //            txtAddress.Text = dt.Rows[0]["address"].ToString();
    //            txtOccupation.Text = dt.Rows[0]["occupation"].ToString();
    //            txtChiefComplaint.Text = dt.Rows[0]["chiefComplaint"].ToString();
    //            txtConsultationFee.Text = dt.Rows[0]["consultationFee"].ToString();
    //            var data = JsonConvert.SerializeObject(dt.Rows[0]);
    //            hdnPatiendDetailsDataRow.Value = data;
    //        }
    //    }
    //}
}