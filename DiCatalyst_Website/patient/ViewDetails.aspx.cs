using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using DayPilot.Web.Ui.Events.Calendar;
using DayPilot.Web.Ui.Events.Navigator;
using CommandEventArgs = DayPilot.Web.Ui.Events.CommandEventArgs;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Reflection;
using AjaxControlToolkit;
using System.Web;
using Newtonsoft.Json;

public partial class patient_ViewDetails : System.Web.UI.Page
{
    private DataTable _appointments;


    private string _doctorid;
    private readonly GlobalSearch _glb = new GlobalSearch();
    private readonly ManageModules _mngModules = new ManageModules();
    private readonly Notify noty = new Notify();
    private readonly Users _user = new Users();
    protected BAL.AddPatient _addPatient = new BAL.AddPatient();
    private readonly BAL.UsersVsModules userModules = new UsersVsModules();
    private readonly DAL.appointments _app = new DAL.appointments();
    private readonly BAL.Users _usersbal = new BAL.Users();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //noty.Warning_Display("Please Login to give Rating", Page);
            _doctorid = Request.QueryString["did"];

            Session["doctorid"] = _doctorid;
           

                //PropertyInfo isreadonly =
                //    typeof(System.Collections.Specialized.NameValueCollection).GetProperty(
                //        "IsReadOnly", BindingFlags.Instance | BindingFlags.NonPublic);
                //// make collection editable
                //if (isreadonly != null) isreadonly.SetValue(this.Request.QueryString, false, null);
                //// remove
                //this.Request.QueryString.Remove("did");
                DataSet ds = Binddata();
            LoadAppointments();
            loadData();
            //LoadCalendarData();
            //LoadNavigatorData();
            if (!string.IsNullOrEmpty(Session["specialistId"] as string))
            {

                var specialistid = Session["specialistId"].ToString();
                BindDatabySpecialistId(specialistid);


                DataList1.DataSource = ds;
                DataList1.DataBind();
                //txtDestination.Text = ds.Tables[0].Rows[0]["address"].ToString();
                DataList2.DataSource = ds;
                DataList2.DataBind();

                //You must specify Google Map API Key for this component. You can obtain this key from http://code.google.com/apis/maps/signup.html
                //For samples to run properly, set GoogleAPIKey in Web.Config file.
                GoogleMapForASPNet1.GoogleMapObject.APIKey = ConfigurationManager.AppSettings["GoogleAPIKey"];

                //Specify width and height for map. You can specify either in pixels or in percentage relative to it's container.
                GoogleMapForASPNet1.GoogleMapObject.Width = "100%"; // You can also specify percentage(e.g. 80%) here
                GoogleMapForASPNet1.GoogleMapObject.Height = "400px";

                //Specify initial Zoom level.
                GoogleMapForASPNet1.GoogleMapObject.ZoomLevel = 14;

                //Specify Center Point for map. Map will be centered on this point.
                //GoogleMapForASPNet1.GoogleMapObject.CenterPoint = new GooglePoint("1", 17.3850, 78.4867);

                //Add pushpins for map. 
                //This should be done with intialization of GooglePoint class. 
                //ID is to identify a pushpin. It must be unique for each pin. Type is string.
                //Other properties latitude and longitude.
                GooglePoint GP = new GooglePoint();
                GP.Latitude = cCommon.GetNumericValue(ds.Tables[0].Rows[0]["latitude"].ToString());
                GP.Longitude = cCommon.GetNumericValue(ds.Tables[0].Rows[0]["longitude"].ToString());
                if (GP.ReverseGeocode())
                {
                    //Once GP is geocoded, you can add it to google map.
                    GP.InfoHTML = GP.Address;
                    //txtAddress.Text = GP.Address;
                    //lblError.Text = "";

                    //Set GP as center point.
                    GoogleMapForASPNet1.GoogleMapObject.CenterPoint = GP;

                    //Clear any existing
                    GoogleMapForASPNet1.GoogleMapObject.Points.Clear();
                    //Add geocoded GP to GoogleMapObject
                    GoogleMapForASPNet1.GoogleMapObject.Points.Add(GP);
                    GoogleMapForASPNet1.GoogleMapObject.RecenterMap = true;

                    //Recenter map to GP.
                }
                else
                {
                    //txtAddress.Text = "Unable to reverse geocode this lat/lng";
                    //lblError.Text = "Unable to reverse geocode this lat/lng";
                }




                GooglePoint GP1 = new GooglePoint();
                GP1.Latitude = cCommon.GetNumericValue(Session["latit"].ToString());
                GP1.Longitude = cCommon.GetNumericValue(Session["longit"].ToString());

                if (GP1.ReverseGeocode())
                {
                    //Once GP is geocoded, you can add it to google map.
                    GP1.InfoHTML = GP.Address;
                    string sourceAddress = GP1.Address;
                    txtSource.Text = sourceAddress;
                }

                //GeocodeAddress() function will geocode address and set Latitude and Longitude of GP(GooglePoint) to it's respected value.

                GoogleMapForASPNet1.GoogleMapObject.Points.Clear();
                GoogleMapForASPNet1.GoogleMapObject.Directions.Addresses.Clear();
                GoogleMapForASPNet1.GoogleMapObject.Directions.ShowDirectionInstructions = true;

                GoogleMapForASPNet1.GoogleMapObject.Directions.PolylineColor = "#0d84ff";
                GoogleMapForASPNet1.GoogleMapObject.Directions.PolylineWeight = int.Parse("4");
                GoogleMapForASPNet1.GoogleMapObject.Directions.PolylineOpacity = double.Parse("0.8");
                //Provide addresses or postal codes in following lines


                GoogleMapForASPNet1.GoogleMapObject.Directions.Addresses.Add(GP.Address);
                GoogleMapForASPNet1.GoogleMapObject.Directions.Addresses.Add(GP1.Address);

            }
        }
        loadData();

    }

    private void loadData()
        {
        if (!string.IsNullOrEmpty(Session["doctorid"] as string))
        {
            var dtDoc = _usersbal.GetLoginUserDetails(Session["doctorid"].ToString());
            if (dtDoc.Rows.Count > 0)
            {
                ltlDoctorName.Text = dtDoc.Rows[0]["fullName"].ToString();
                //ltFee.Text = dt.Rows[0]["fee"].ToString();
                DataTable dtfee = _addPatient.getfee(Session["doctorid"].ToString());
                if (dtfee.Rows.Count > 0)
                {
                    txtConsultationFee.Text = dtfee.Rows[0]["fee"].ToString();
                }
                else
                {
                    txtConsultationFee.Text = "0";
                }
            }
        }
    }

    private DataSet Binddata()
    {
        var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        var ds = new DataSet();
        if (!string.IsNullOrEmpty(Session["doctorid"] as string))
        {
            _doctorid = Session["doctorid"].ToString();

            var query = "Select * from doctorsearchview where uniqueRandomId ='" + _doctorid + "'";

            var cmd = new SqlCommand(query, con);

            var da = new SqlDataAdapter(cmd);
            da.Fill(ds);

        }
        return ds;
    }


    protected void BindDatabySpecialistId(string specialistid)
    {
        var dt = _glb.GetSpecialityKeywords(Convert.ToInt32(specialistid));


        //conn.Open();
        //string cmdspl = @"select * from specialityKeywords where specialityId=" + specialistid;
        //SqlCommand cmd1 = new SqlCommand(cmdspl, conn);
        //SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
        //adp1.Fill(dt);

        var ds = new DataSet();
        var dt1 = new DataTable();
        var locality = Session["locality"].ToString();
        foreach (DataRow dr in dt.Rows)
        {
            //string cmdstr = @"select top 10 id,doctorName,qualification,experience,speciality,address,mobileNo,mailId, picture from doctors_Data where speciality like '%"+ dr[1].ToString()+"%' and address like '%" + locality + "%'";
            //SqlCommand cmd = new SqlCommand(cmdstr, conn);
            //SqlDataAdapter adp = new SqlDataAdapter();
            dt1 = _glb.GetDoctorSearchResults(dr[1].ToString(), locality);
            ds.Merge(dt1);
        }

        //        string cmdstr = @"Select top 10 d.id,d.doctorName,d.qualification,d.experience,d.speciality,d.address,d.mobileNo,d.mailId from doctors_Data d 
        //                        inner join speciality s on s.name = d.speciality where s.id=" + specialistid;
        var distinctTable = ds.Tables[0].DefaultView.ToTable( /*distinct*/ true);
        _doctorid = Session["doctorid"].ToString();
        for (var i = 0; i < distinctTable.Rows.Count; i++)
        {
            var dr1 = distinctTable.Rows[i];
            if (dr1["id"].ToString() == _doctorid)
            {
                dr1.Delete();
                distinctTable.AcceptChanges();
            }
        }

        var str = new StringBuilder();
        str.Append("<ul class='similarDoctors'>");
        for (var i = 0; i < distinctTable.Rows.Count; i++)
        {
            var imagepath = distinctTable.Rows[i][25].ToString().Substring(2);
            var name = distinctTable.Rows[i][0].ToString();
            var speciality = distinctTable.Rows[i]["speciality"].ToString();
            var exp = distinctTable.Rows[i][8].ToString();
            var id = distinctTable.Rows[i]["id"].ToString();
            str.Append("<li><img class='img-circle' src='" + imagepath + "'/> <br /><b>" + name + "</b> <br />" +
                       speciality + " <br />" + exp + "Years of Experience<br /><br /><a href='ViewDetails.aspx?did=" + id + "' class='btn btn-info'>View Details</a></li>");

        }
        str.Append("</ul>");
        ltlTicker.Text = str.ToString();


        //if (distinctTable.Rows.Count == 0)
        //{
        //    noty.Warning_Display("There are no results found in this search criteria. Please try another area", Page);
        //}
    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            // use the item's DataItem property or the DataList's DataSource property directly
            //DataTable tbl = ((DataRowView)e.Item.DataItem).Row.Table;
            //if (e.Item.ItemIndex == tbl.Rows.Count)
            //{
            var img = (Image)e.Item.FindControl("imgDoctor");
            DataSet ds = Binddata();
            string _doctor = ds.Tables[0].Rows[0]["uniqueRandomId"].ToString();
            var gdvTimings = (GridView)e.Item.FindControl("gdvTimings");
            DataTable dt = _mngModules.GetDoctorTimings(_doctor);

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string test = "";
                string testday = "";
                for (int j = 1; j < dt.Rows.Count; j++)
                {

                    if (dt.Rows[i]["fFrom"].ToString() == dt.Rows[j]["fFrom"].ToString())
                    {
                        test = dt.Rows[i]["fFrom"].ToString() + dt.Rows[j]["fFrom"].ToString();
                        testday = dt.Rows[i]["day"].ToString() + ":" + dt.Rows[i]["fFrom"].ToString();
                    }
                    if (dt.Rows[i]["fTo"].ToString() == dt.Rows[j]["fTo"].ToString())
                    {
                        test = dt.Rows[i]["fTo"].ToString() + dt.Rows[j]["fTo"].ToString();
                        testday = testday + "To" + dt.Rows[i]["fTo"].ToString();
                    }

                }

            }


            gdvTimings.DataSource = _mngModules.GetDoctorTimings(_doctor);
            gdvTimings.DataBind();

            if (string.IsNullOrEmpty(img.ImageUrl))
            {
                img.ImageUrl = "images/doctor.png";
            }
            Rating ra = (Rating)e.Item.FindControl("Rating1");
            ra.CurrentRating = _user.GetRating(Session["doctorid"].ToString());


            //}
        }
    }


    //private void LoadNavigatorData()
    //{
    //    if (_appointments == null)
    //        LoadAppointments();

    //    ////DayPilotNavigator1.DataSource = _appointments;
    //    ////DayPilotNavigator1.DataStartField = "AppointmentStart";
    //    ////DayPilotNavigator1.DataEndField = "AppointmentEnd";
    //    ////DayPilotNavigator1.DataIdField = "AppointmentId";
    //    ////DayPilotNavigator1.DataBind();
    //}

    //private void LoadCalendarData()
    //{
    //    if (_appointments == null)
    //        LoadAppointments();

    //    ////DayPilotCalendar1.DataSource = _appointments;
    //    ////DayPilotCalendar1.DataStartField = "AppointmentStart";
    //    ////DayPilotCalendar1.DataEndField = "AppointmentEnd";
    //    ////DayPilotCalendar1.DataIdField = "AppointmentId";
    //    ////DayPilotCalendar1.DataTextField = "AppointmentPatientId";
    //    ////DayPilotCalendar1.DataTagFields = "AppointmentStatus";
    //    ////DayPilotCalendar1.DataBind();
    //    ////DayPilotCalendar1.Update();
    //}

    private void LoadAppointments()
    {
        // var id = Session["doctorid"].ToString(); // basic validation
        if (!string.IsNullOrEmpty(Session["doctorid"] as string))
        {
            _appointments = _addPatient.getAllPatientAppointmentDetails(Session["doctorid"].ToString(), Session["P_userId"].ToString());
            //LoadAppointmentsbyUserLoginId(Session["doctorid"].ToString(), Session["userId"].ToString());
            var data = JsonConvert.SerializeObject(_appointments);
            hdnDataForCalender.Value = data;
            ////_appointments = LoadAppointmentsbyUserLoginId(Session["doctorid"].ToString(), DayPilotNavigator1.VisibleStart,
            ////    DayPilotNavigator1.VisibleEnd);
        }
    }

    public static DataTable LoadFreeAndMyAppointments(DateTime start, DateTime end)
    {
        ////var da = new SqlDataAdapter(
        ////    "SELECT * FROM [Appointment] WHERE ([AppointmentStatus] = 'free' OR ([AppointmentStatus] <> 'free')) AND NOT (([AppointmentEnd] <= @start) OR ([AppointmentStart] >= @end))",
        ////    ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        var da = new SqlDataAdapter(
            "SELECT * FROM [Appointment] WHERE ([AppointmentStatus] = 'free')",
            ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        da.SelectCommand.Parameters.AddWithValue("start", start);
        da.SelectCommand.Parameters.AddWithValue("end", end);
        var dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    //public static DataTable LoadAppointmentsbyUserLoginId(string loginUserId, DateTime start, DateTime end)
    //public static DataTable LoadAppointmentsbyUserLoginId(string doctorId, string loginUserId)
    //{

    //    getAllPatientAppointmentDetails(doctorId, userId);
    //    //var da = new SqlDataAdapter(
    //    //    "SELECT * FROM [Appointment] WHERE ([AppointmentStatus] = 'free') AND (DoctorId=@doctorId) union  select * from Appointment where AppointmentPatientId = @loginUserId",
    //    //    ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
    //    //da.SelectCommand.Parameters.AddWithValue("@loginUserId", loginUserId);
    //    //da.SelectCommand.Parameters.AddWithValue("@doctorId", doctorId);
    //    //var dt = new DataTable();
    //    //da.Fill(dt);

    //    //return dt;
    //}

    //protected void DayPilotCalendar1_OnCommand(object sender, CommandEventArgs e)
    //{
    //    switch (e.Command)
    //    {
    //        case "navigate":
    //            ////DayPilotCalendar1.StartDate = (DateTime)e.Data["day"];
    //            LoadCalendarData();
    //            break;
    //        case "refresh":
    //            LoadCalendarData();
    //            break;
    //    }
    //}

    protected void DayPilotNavigator1_OnBeforeCellRender(object sender, BeforeCellRenderEventArgs e)
    {
    }

    protected void DayPilotCalendar1_OnBeforeEventRender(object sender, BeforeEventRenderEventArgs e)
    {
        var status = e.Tag["AppointmentStatus"];

        switch (status)
        {
            case "free":
                e.DurationBarColor = "green";
                e.Html = "Available";
                e.ToolTip = "Click to Request This Time Slot";
                break;
            case "waiting":
                e.DurationBarColor = "orange";
                e.Html = "Your appointment, waiting for confirmation";
                break;
            case "confirmed":
                e.DurationBarColor = "#f41616";
                e.Html = "Your appointment, confirmed";
                break;
        }
    }


    protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            // use the item's DataItem property or the DataList's DataSource property directly
            //DataTable tbl = ((DataRowView)e.Item.DataItem).Row.Table;
            //if (e.Item.ItemIndex == tbl.Rows.Count)
            //{
            var ltlServices = (Literal)e.Item.FindControl("ltlServices");
            var services = ltlServices.Text;
            if (!string.IsNullOrEmpty(services))
            {

                var str = new StringBuilder();
                str.Append("<ul>");
                var serviceName = "";
                var value = services.Split(',');
                for (var i = 0; i < value.Length; i++)
                {
                    var s = Convert.ToInt32(value[i]);
                    serviceName = _glb.GetServiceNameByServiceId(s).Rows[0][0].ToString();

                    str.Append("<li>" + serviceName + "</li>");
                }
                str.Append("</ul>");
                ltlServices.Text = str.ToString();
            }
        }
    }

    protected void DataList3_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            // use the item's DataItem property or the DataList's DataSource property directly
            //DataTable tbl = ((DataRowView)e.Item.DataItem).Row.Table;
            //if (e.Item.ItemIndex == tbl.Rows.Count)
            //{
            var img = (Image)e.Item.FindControl("imgDoctor");

            if (string.IsNullOrEmpty(img.ImageUrl))
                img.ImageUrl = "images/doctor.png";
            //}
        }
    }

    protected void GetRoute(object sender, EventArgs e)
    {

    }
    protected void btnMovePin1_Click(object sender, EventArgs e)
    {
        //Note that buttons are placed inside an Ajax UpdatePanel. This is to prevent postback of the page.
        //Change latitude and longitude for point 1
        GoogleMapForASPNet1.GoogleMapObject.Points["1"].Latitude += 0.003;
        GoogleMapForASPNet1.GoogleMapObject.Points["1"].Longitude += 0.003;
    }
    protected void btnMovePin2_Click(object sender, EventArgs e)
    {
        //Change latitude and longitude for point 2
        GoogleMapForASPNet1.GoogleMapObject.Points["2"].Latitude += 0.003;
        GoogleMapForASPNet1.GoogleMapObject.Points["2"].Longitude -= 0.003;
    }

    protected void lnkGetDirections_Click(object sender, EventArgs e)
    {
        GoogleMapForASPNet1.GoogleMapObject.Points.Clear();
        GoogleMapForASPNet1.GoogleMapObject.Directions.Addresses.Clear();
        GoogleMapForASPNet1.GoogleMapObject.Directions.ShowDirectionInstructions = true;

        GoogleMapForASPNet1.GoogleMapObject.Directions.PolylineColor = "#0d84ff";
        GoogleMapForASPNet1.GoogleMapObject.Directions.PolylineWeight = int.Parse("4");
        GoogleMapForASPNet1.GoogleMapObject.Directions.PolylineOpacity = double.Parse("0.8");
        //Provide addresses or postal codes in following lines
        DataSet ds = Binddata();

        GoogleMapForASPNet1.GoogleMapObject.Directions.Addresses.Add(ds.Tables[0].Rows[0]["address"].ToString());
        GoogleMapForASPNet1.GoogleMapObject.Directions.Addresses.Add(txtSource.Text);

    }
    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        if (!string.IsNullOrEmpty(Session["userId"] as string))
        {
            int rowIndex = ((sender as Rating).NamingContainer as DataListItem).ItemIndex;
            string constr = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
            string userId = Session["doctorid"].ToString();
            string ratedBy = Session["userId"].ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO rating VALUES(@rating, @userId, @ratedBy)"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;

                        cmd.Parameters.AddWithValue("@rating", e.Value);
                        cmd.Parameters.AddWithValue("@userId", userId);
                        cmd.Parameters.AddWithValue("@ratedBy", ratedBy);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }

        }
        else
        {
            noty.Warning_Display("Please Login to give Rating", Page);
            foreach (DataListItem dl in DataList1.Items)
            {
                Rating ra = (Rating)dl.FindControl("Rating1");
                ra.CurrentRating = _user.GetRating(Session["doctorid"].ToString());
            }
        }

    }

    protected void btnCreateAppointment_Click(object sender, EventArgs e)
    {
        DateTime start = Convert.ToDateTime(hdnAppStartDate.Value);
        DateTime end = Convert.ToDateTime(hdnAppEndDate.Value);
        string name = TextBoxCreateName.Text;
        //string randomId = rdn.getRandomUniqueNumber();
        string salutation, occupation, chiefComplaint, address;
        string patientID = Session["P_userId"].ToString();
        string DoctorID = Session["doctorid"].ToString();
        int appointmentId = Convert.ToInt32(hdnAppointmentId.Value);
        salutation = ddlsalutation.SelectedValue;
        int Age, consultationFee, maritalStatus, gender = 0;
        Age = Convert.ToInt32(txtAge.Text);
        maritalStatus = radmar.SelectedIndex;
        gender = radgen.SelectedIndex;
        occupation = txtOccupation.Text;
        chiefComplaint = txtChiefComplaint.Text;
        address = txtAddress.Text;
        consultationFee = Convert.ToInt32(txtConsultationFee.Text);
        if (appointmentId>0)
        {
            _app.updateappointments(appointmentId, patientID, DropDownListStatus.SelectedItem.Value);
            userModules.InsertUsersVsModules(patientID, 7, 0);
            _addPatient.InsertPatientFromPatient(patientID, salutation, Age, maritalStatus, gender, occupation, chiefComplaint, consultationFee, address, DoctorID, appointmentId);
        }
        LoadAppointments();
    }
}