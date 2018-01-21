using System;
using System.Web.UI;
using System.IO;
using  System.Data;
using System.Web.UI.WebControls;
using BAL;

public partial class Dentist_FreeListing : Page
{
    private DataTable _dt;
    private readonly GlobalSearch _loc = new GlobalSearch();



    private readonly ManageModules _mngmod = new ManageModules();
    private readonly Notify _noty = new Notify();
    public string Location = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //dt = mngmod.getDoctorData();
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            _loc.GetSpecialityForDropdown(ddlSpeciality);


            gdTimings.DataSource = _mngmod.Getdays();
            gdTimings.DataBind();
        }
    }
    protected void ddlSpeciality_SelectedIndexChanged1(object sender, EventArgs e)
    {
       // _loc.GetServicesbySpecialityId(ddlSpeciality, chkSpecialityServices);
    }
    protected void btnSaveAddedDentistData_Click(object sender, EventArgs e)
    {
        var serverPath = "";
        if (flPicture.HasFile)
        {
            try
            {
                if (flPicture.PostedFile.ContentType == "image/jpeg")
                    if (flPicture.PostedFile.ContentLength < 204800)
                    {
                        var filename = Path.GetFileName(flPicture.FileName);
                        flPicture.SaveAs(Server.MapPath("~/Admin/doctorImages/") + filename);
                        serverPath = "~/Admin/doctorImages/" + filename;
                        var uniqueUserId =
                            _mngmod.InsertRegistrationDetails(txtDoctorName, txtEmail, txtMobileNo, "password", serverPath);
                        //_mngmod.InsertDoctorData(uniqueUserId, txtAboutDoctor, txtExperience, txtDesignation,
                        //    location, route, txtEducation, txtAwardsRecognitions, txtMemberships, txtRegistrations, txtFee,
                        //    txtPracticeName, ddlSpeciality, chkSpecialityServices, setting_state, txtLocality, ltlCountryCode, txtZipCode, setting_latitude, setting_longitude, txtWebsite, chkPreDoctor, serverPath);

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
                else
                    _noty.Error_Display("Upload status: Only JPEG files are accepted!", Page);
            }
            catch (Exception ex)
            {
                _noty.Error_Display("Upload status: The file could not be uploaded. The following error occured:", Page);
            }
        }
        else
        {
            var uniqueUserId = _mngmod.InsertRegistrationDetails(txtDoctorName, txtEmail, txtMobileNo, "password", "");
            //_mngmod.InsertDoctorData(uniqueUserId, txtAboutDoctor, txtExperience, txtDesignation,
            //    location, route, txtEducation, txtAwardsRecognitions, txtMemberships, txtRegistrations, txtFee,
            //    txtPracticeName, ddlSpeciality, chkSpecialityServices, setting_state, txtLocality, ltlCountryCode, txtZipCode, setting_latitude, setting_longitude, txtWebsite, chkPreDoctor, serverPath);
            //_noty.Success_Display("Doctor Record Saved Successfully, Please update the picture later", Page);
        }

    }

   
    protected void gdTimings_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        throw new NotImplementedException();
    }
   
}