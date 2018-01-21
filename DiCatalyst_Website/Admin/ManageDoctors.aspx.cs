using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;

public partial class AdminManageDoctors : Page
{
    private DataTable _dt;
    private readonly GlobalSearch _loc = new GlobalSearch();
    private userlevels ul = new userlevels();


    private readonly ManageModules _mngmod = new ManageModules();
    private readonly DAL.manageModules mnddal = new DAL.manageModules();
    private readonly Notify _noty = new Notify();
    public string Location = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DataTable privilageDt = ul.GetPrivilages(9);

            _dt = _mngmod.getDoctorDataForManageDoctor();
            GridView1.DataSource = _dt;
            GridView1.DataBind();
            _loc.GetSpecialityForDropdown(ddlSpeciality);


            gdTimings.DataSource = _mngmod.Getdays();
            gdTimings.DataBind();
            setUserAccess(privilageDt);
        }
    }

    protected void setUserAccess(DataTable dt)
    {
        if (Convert.ToBoolean(dt.Rows[0]["write"].ToString()) == false)
        {
            btnSaveAddedDoctorData.Enabled = false;
        }
        if (Convert.ToBoolean(dt.Rows[0]["edit"].ToString()) == false)
        {

            foreach (GridViewRow gr in GridView1.Controls)
            {
                LinkButton lnkEdit = (LinkButton)gr.FindControl("lnkEdit");
                lnkEdit.Enabled = false;
            }

        }
        if (Convert.ToBoolean(dt.Rows[0]["delete"].ToString()) == false)
        {
            foreach (GridViewRow gr in GridView1.Controls)
            {
                LinkButton lnkDelete = (LinkButton)gr.FindControl("lnkDelete");
                lnkDelete.Visible = false;
            }
        }
    }

    protected void Button1_click(object sender, EventArgs e)
    {
        //Upload and save the file
        var excelPath = Server.MapPath("~/Admin/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(excelPath);

        var conString = string.Empty;
        var extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
        switch (extension)
        {
            case ".xls": //Excel 97-03
                conString = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                break;
            case ".xlsx": //Excel 07 or higher
                conString = ConfigurationManager.ConnectionStrings["Excel07+ConString"].ConnectionString;
                break;
        }
        conString = string.Format(conString, excelPath);
        using (var excelCon = new OleDbConnection(conString))
        {
            excelCon.Open();
            var dtExcelData = new DataTable();
            var oleDbSchemaTable = excelCon.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            if (oleDbSchemaTable != null)
            {
                var sheet1 = oleDbSchemaTable.Rows[0]["TABLE_NAME"].ToString();


                //[OPTIONAL]: It is recommended as otherwise the data will be considered as String by default.
                //dtExcelData.Columns.AddRange(new DataColumn[13] { 

                //    new DataColumn("doctorName", typeof(string)),
                //    new DataColumn("qualification",typeof(string)) ,
                //    new DataColumn("mobileNo", typeof(string)),
                //    new DataColumn("mailId",typeof(string)), 
                //    new DataColumn("medicalRegNo", typeof(string)),
                //    new DataColumn("experience",typeof(string)), 
                //    new DataColumn("fee", typeof(int)),
                //    new DataColumn("address",typeof(string)),
                //    new DataColumn("cityId", typeof(string)),

                //    new DataColumn("pincode",typeof(string)),
                //    new DataColumn("speciality", typeof(string)),
                //    new DataColumn("servicesFacilities",typeof(string)),
                //    new DataColumn("keywords",typeof(string)),
                //});

                using (var oda = new OleDbDataAdapter("SELECT * FROM [" + sheet1 + "]", excelCon))
                {
                    oda.Fill(dtExcelData);
                }
            }
            excelCon.Close();


            foreach (DataRow dr in dtExcelData.Rows)
            {
                var uniqueUserId = _mngmod.InsertRegistrationDetailsExcel(dr["doctorName"].ToString(), dr["email"].ToString(), dr["mobileNo"].ToString(), "password");
                if (!string.IsNullOrEmpty(uniqueUserId))
                {
                    _mngmod.InsertDoctorDataExcel(uniqueUserId, dr["aboutMe"].ToString(), dr["yearOfExperience"].ToString(), dr["designation"].ToString(),
                         dr["address"].ToString(), "", dr["education"].ToString(), dr["awardsRecognitions"].ToString(), dr["memberships"].ToString(), dr["registrations"].ToString(), dr["fee"].ToString(),
                        dr["practiceName"].ToString(), dr["speciality"].ToString(), "", dr["state"].ToString(), dr["city"].ToString(), dr["countryId"].ToString(), dr["zipcode"].ToString(), dr["latitude"].ToString(), dr["longitude"].ToString(), dr["website"].ToString(), "false", dr["picture"].ToString());
                }
            }


            //string consString = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(consString))
            //{
            //    using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
            //    {
            //        //Set the database table name
            //        sqlBulkCopy.DestinationTableName = "dbo.doctors_Data";

            //        //[OPTIONAL]: Map the Excel columns with that of the database table

            //        sqlBulkCopy.ColumnMappings.Add("[Doctors Name]", "doctorName");
            //        sqlBulkCopy.ColumnMappings.Add("Qualification", "qualification");

            //        sqlBulkCopy.ColumnMappings.Add("[Mobile Number]", "mobileNo");

            //        sqlBulkCopy.ColumnMappings.Add("[Mail Id]", "mailId");
            //        sqlBulkCopy.ColumnMappings.Add("[Medical Reg No]", "medicalRegNo");

            //        sqlBulkCopy.ColumnMappings.Add("Exp", "experience");
            //        sqlBulkCopy.ColumnMappings.Add("Fee", "fee");
            //        sqlBulkCopy.ColumnMappings.Add("Address", "address");

            //        //sqlBulkCopy.ColumnMappings.Add("City", "cityId");

            //        sqlBulkCopy.ColumnMappings.Add("Pincode", "pincode");
            //        sqlBulkCopy.ColumnMappings.Add("Speciality", "speciality");

            //        con.Open();
            //        sqlBulkCopy.WriteToServer(dtExcelData);


            //        con.Close();
            //    }
            //}
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleterow")
        {
            var index = Convert.ToInt32(e.CommandArgument);
            index = index % GridView1.PageSize;
            var row = GridView1.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            _mngmod.DeleteDoctorData(Convert.ToInt32(lblId.Text));
            BindGridView();
        }

        if (e.CommandName == "updateRow")
        {
            var index = Convert.ToInt32(e.CommandArgument);
            index = index % GridView1.PageSize;
            var row = GridView1.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            _mngmod.editManageDoctor(Convert.ToInt32(lblId.Text), txtDoctorName, txtExperience, txtDesignation, route, txtFee, txtMobileNo, txtEmail, txtPracticeName, ddlSpeciality, txtWebsite);
            BindGridView();
        }
        else if (e.CommandName == "editRow")
        {
            var index = Convert.ToInt32(e.CommandArgument);
            index = index % GridView1.PageSize;
            var row = GridView1.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            _dt = _mngmod.getEditDoctorData(Convert.ToInt32(lblId.Text));
            txtDoctorName.Text = _dt.Rows[0]["fullName"].ToString();
            txtAboutDoctor.Text = _dt.Rows[0]["aboutMe"].ToString();
            txtExperience.Text = _dt.Rows[0]["yearOfExperience"].ToString();
            txtDesignation.Text = _dt.Rows[0]["designation"].ToString();
            location.Text = _dt.Rows[0]["address"].ToString();
            txtFee.Text = _dt.Rows[0]["fee"].ToString();
            txtPracticeName.Text = _dt.Rows[0]["practiceName"].ToString();
            ddlSpeciality.SelectedItem.Value = _dt.Rows[0]["speciality"].ToString();
            txtWebsite.Text = _dt.Rows[0]["website"].ToString();
            txtEducation.Text = _dt.Rows[0]["education"].ToString();
            txtAwardsRecognitions.Text = _dt.Rows[0]["awardsRecognitions"].ToString();
            txtMemberships.Text = _dt.Rows[0]["memberships"].ToString();
            txtRegistrations.Text = _dt.Rows[0]["registrations"].ToString();
            chkSpecialityServices.Text = _dt.Rows[0]["services"].ToString();
            setting_state.Text = _dt.Rows[0]["state"].ToString();
            txtLocality.Text = _dt.Rows[0]["city"].ToString();
            txtZipCode.Text = _dt.Rows[0]["zipCode"].ToString();
            setting_latitude.Text = _dt.Rows[0]["latitude"].ToString();
            setting_longitude.Text = _dt.Rows[0]["longitude"].ToString();
            string randomId = _dt.Rows[0]["uniqueRandomId"].ToString();
            DataTable timings = _mngmod.GetDoctorTimings(randomId);
            if (timings.Rows.Count > 0)
            {
                for (int j = 0; j < timings.Rows.Count; j++)
                {
                    int dayid = Convert.ToInt32(timings.Rows[j]["dayId"].ToString());

                    for (var i = 0; i < gdTimings.Rows.Count; i++)
                    {
                        var lbldayId = (Label)gdTimings.Rows[i].Cells[1].FindControl("lblId");
                        int grdDayId = Convert.ToInt32(lbldayId.Text);
                        if (dayid == grdDayId)
                        {
                            var chkDay = (CheckBox)gdTimings.Rows[i].Cells[1].FindControl("chkDay");
                            chkDay.Checked = true;
                            var txtFFrom = (TextBox)gdTimings.Rows[i].Cells[2].FindControl("txtFFrom");
                            var txtFTo = (TextBox)gdTimings.Rows[i].Cells[3].FindControl("txtFTo");
                            var txtsFrom = (TextBox)gdTimings.Rows[i].Cells[4].FindControl("txtsFrom");
                            var txtsTo = (TextBox)gdTimings.Rows[i].Cells[5].FindControl("txtsTo");
                            txtFFrom.Text = timings.Rows[j]["fFrom"].ToString();
                            txtFTo.Text = timings.Rows[j]["fTo"].ToString();
                            txtsFrom.Text = timings.Rows[j]["sFrom"].ToString();
                            txtsTo.Text = timings.Rows[j]["sTo"].ToString();
                        }
                    }
                }
            }
            //txtFFrom.Text = _dt.Rows[0]["day"].ToString();
            //txtFFrom.Text = _dt.Rows[0]["fFrom"].ToString();
            //txtFTo.Text = _dt.Rows[0]["fTo"].ToString();
            //txtsFrom.Text = _dt.Rows[0]["sFrom"].ToString();
            //txtsTo.Text = _dt.Rows[0]["sTo"].ToString();





        }
    }

    protected void BindGridView()
    {
        _dt = _mngmod.getDoctorDataForManageDoctor();
        GridView1.DataSource = _dt;
        GridView1.DataBind();
    }


    protected void ddlSpeciality_SelectedIndexChanged(object sender, EventArgs e)
    {
       // _loc.GetServicesbySpecialityId(ddlSpeciality, chkSpecialityServices);
    }

    protected void btnSaveAddedDoctorData_Click(object sender, EventArgs e)
    {
        var serverPath = "";
        if (flPicture.HasFile)
        {
            try
            {
                string fileExtention = flPicture.PostedFile.ContentType;
                if (fileExtention == "image/png" || fileExtention == "image/jpeg" || fileExtention == "image/x-png" || fileExtention == "image/jpg" || fileExtention == "image/bmp")
                {
                    if (flPicture.PostedFile.ContentLength < 204800)
                    {
                        var filename = Path.GetFileName(flPicture.FileName);
                        flPicture.SaveAs(Server.MapPath("~/Admin/doctorImages/") + filename);
                        serverPath = "~/Admin/doctorImages/" + filename;
                        var uniqueUserId =
                            _mngmod.InsertRegistrationDetails(txtDoctorName, txtEmail, txtMobileNo, "password", serverPath);
                        _mngmod.InsertDoctorData(uniqueUserId, txtAboutDoctor, txtExperience, txtDesignation,
                            location, route, txtEducation, txtAwardsRecognitions, txtMemberships, txtRegistrations,
                            txtFee,
                            txtPracticeName, ddlSpeciality, chkSpecialityServices, setting_state, txtLocality,
                            ltlCountryCode, txtZipCode, setting_latitude, setting_longitude, txtWebsite, chkPreDoctor,
                            serverPath);

                        for (var i = 0; i < gdTimings.Rows.Count; i++)
                        {
                            var chkDay = (CheckBox)gdTimings.Rows[i].Cells[1].FindControl("chkDay");
                            if (chkDay.Checked)
                            {
                                var lblId = (Label)gdTimings.Rows[i].Cells[1].FindControl("lblId");
                                var txtFFrom = (TextBox)gdTimings.Rows[i].Cells[2].FindControl("txtFFrom");
                                var txtFTo = (TextBox)gdTimings.Rows[i].Cells[3].FindControl("txtFTo");
                                var txtsFrom = (TextBox)gdTimings.Rows[i].Cells[4].FindControl("txtsFrom");
                                var txtsTo = (TextBox)gdTimings.Rows[i].Cells[5].FindControl("txtsTo");
                                var txtFFr = txtFFrom.Text;
                                var txtFt = txtFTo.Text;
                                var txtSFr = txtsFrom.Text;
                                var txtSt = txtsTo.Text;
                                var dayId = Convert.ToInt32(lblId.Text);
                                _mngmod.InsertDoctorTimings(uniqueUserId, dayId, txtFFr, txtFt, txtSFr, txtSt);
                            }
                        }
                        _noty.Success_Display("Doctor Record Saved Successfully", Page);
                    }


                    else
                    {
                        _noty.Error_Display("Picture upload status: The file has to be less than 200 kb!", Page);
                    }
                }
                else
                {
                    _noty.Error_Display("Upload status: Please upload a valid image file!", Page);
                }
            }
            catch (Exception ex)
            {
                _noty.Error_Display("Upload status: The file could not be uploaded. The following error occured:", Page);
            }
        }
        else
        {
            var uniqueUserId = _mngmod.InsertRegistrationDetails(txtDoctorName, txtEmail, txtMobileNo, "password", serverPath);
            _mngmod.InsertDoctorData(uniqueUserId, txtAboutDoctor, txtExperience, txtDesignation,
                location, route, txtEducation, txtAwardsRecognitions, txtMemberships, txtRegistrations, txtFee,
                txtPracticeName, ddlSpeciality, chkSpecialityServices, setting_state, txtLocality, ltlCountryCode, txtZipCode, setting_latitude, setting_longitude, txtWebsite, chkPreDoctor, serverPath);
            _noty.Success_Display("Doctor Record Saved Successfully, Please update the picture later", Page);
        }
    }



    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {



    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            CheckBox chkbox = (CheckBox)e.Row.FindControl("chkPreferred");
            Label lblPreferred = (Label)e.Row.FindControl("lblPreferred");
            if (chkbox != null && lblPreferred.Text == "True")
            {
                chkbox.Checked = true;
            }

        }
    }



}