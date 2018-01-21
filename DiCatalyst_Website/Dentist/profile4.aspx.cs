using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;


using BAL;
using System.Data.SqlClient;
using System.Configuration;
public partial class Dentist_profile4 : System.Web.UI.Page
{
    private DataTable _dt;
    private readonly GlobalSearch _loc = new GlobalSearch();


    private readonly ManageModules _mngmod = new ManageModules();
    private readonly Notify _noty = new Notify();
    public string Location = String.Empty;
    string userid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            //_loc.GetSpecialityForDropdown(ddlSpeciality);

            DataTable dtProfile = _mngmod.getDoctorProfile(Session["userId"].ToString());
            if (dtProfile.Rows.Count > 0)
            {               
                txtAboutDoctor.Text = dtProfile.Rows[0]["aboutMe"].ToString();
                txtExperience.Text = dtProfile.Rows[0]["yearOfExperience"].ToString();
                txtDesignation.Text = dtProfile.Rows[0]["designation"].ToString();
                txtFee.Text = dtProfile.Rows[0]["fee"].ToString();               
                txtWebsite.Text = dtProfile.Rows[0]["website"].ToString();
                txtPracticeName.Text = dtProfile.Rows[0]["practiceName"].ToString();              
                txtEducation.Text = dtProfile.Rows[0]["education"].ToString();
                txtAwardsRecognitions.Text = dtProfile.Rows[0]["awardsRecognitions"].ToString();
                txtMemberships.Text = dtProfile.Rows[0]["memberships"].ToString();
                txtRegistrations.Text = dtProfile.Rows[0]["registrations"].ToString();
                //ddlSpeciality.SelectedItem.Text = dtProfile.Rows[0]["speciality"].ToString();
                _loc.GetServicesbySpecialityId(5, chkSpecialityServices);

            }
            //flPicture.FileName = dtProfile.Rows[0]["picture"].ToString();
        }

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        userid = Session["userId"].ToString();
        string sFileName ="" ;

        DirectoryInfo objDir = new DirectoryInfo(Server.MapPath("HospitalImages\\"));

        FileInfo[] objFI = objDir.GetFiles(userid + "*");

        foreach (FileInfo file in objFI)
        {
            sFileName = sFileName +";"+ file.Name;
        }

        _mngmod.updateDoctorProfile4(userid, txtAboutDoctor, txtExperience, txtDesignation, txtEducation, txtAwardsRecognitions, txtMemberships, txtRegistrations, txtFee, txtPracticeName, txtPracticeName.Text, txtWebsite, chkSpecialityServices, sFileName);

    }    

    protected void Upload_Files(object sender, EventArgs e)
    {
        userid = Session["userId"].ToString();
        if (FileUpload1.HasFile)     // CHECK IF ANY FILE HAS BEEN SELECTED.
        {
            int iUploadedCnt = 0;
            int iFailedCnt = 0;
            HttpFileCollection hfc = Request.Files;
            lblFileList.Text = "Select <b>" + hfc.Count + "</b> file(s)";

            if (hfc.Count <= 4)    // 4 FILES RESTRICTION.
            {
                for (int i = 0; i <= hfc.Count - 1; i++)
                {
                    HttpPostedFile hpf = hfc[i];
                    if (hpf.ContentLength > 0)
                    {
                        if (!File.Exists(Server.MapPath("HospitalImages\\") + Path.GetFileName(hpf.FileName)))
                        {
                            DirectoryInfo objDir = new DirectoryInfo(Server.MapPath("HospitalImages\\"));

                            string sFileName = Path.GetFileName(hpf.FileName);
                            string sFileExt = Path.GetExtension(hpf.FileName);

                            // CHECK FOR DUPLICATE FILES.
                            FileInfo[] objFI = objDir.GetFiles(sFileName.Replace(sFileExt, "") + ".*");

                            if (objFI.Length > 0)
                            {
                                // CHECK IF FILE WITH THE SAME NAME EXISTS (IGNORING THE EXTENTIONS).
                                foreach (FileInfo file in objFI)
                                {
                                    string sFileName1 = objFI[0].Name;
                                    string sFileExt1 = Path.GetExtension(objFI[0].Name);

                                    if (sFileName1.Replace(sFileExt1, "") == sFileName.Replace(sFileExt, ""))
                                    {
                                        iFailedCnt += 1;        // NOT ALLOWING DUPLICATE.
                                        break;
                                    }
                                }
                            }
                            else
                            {
                                // SAVE THE FILE IN A FOLDER.
                                hpf.SaveAs(Server.MapPath("HospitalImages\\") + userid + "_"+ Path.GetFileName(hpf.FileName));
                                iUploadedCnt += 1;
                            }
                        }
                    }
                }
                lblUploadStatus.Text = "<b>" + iUploadedCnt + "</b> file(s) Uploaded.";
                lblFailedStatus.Text = "<b>" + iFailedCnt + "</b> duplicate file(s) could not be uploaded.";
            }
            else
                lblUploadStatus.Text = "Max. 4 files allowed.";
        }
        else lblUploadStatus.Text = "No files selected.";
    }
    

    private DataSet Binddata()
    {
        var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        var ds = new DataSet();
        if (!string.IsNullOrEmpty(Session["userId"] as string))
        {
            var query = "Select * from doctorsearchview where uniqueRandomId ='" + Session["userId"] + "'";

            var cmd = new SqlCommand(query, con);

            var da = new SqlDataAdapter(cmd);
            da.Fill(ds);

        }
        return ds;
    }

}