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

public partial class Dentist_profile3 : System.Web.UI.Page
{
    private DataTable _dt;
    private readonly GlobalSearch _loc = new GlobalSearch();
    private readonly DAL.randomUniqueNumber rn = new DAL.randomUniqueNumber();

    private readonly ManageModules _mngmod = new ManageModules();
    private readonly Notify _noty = new Notify();
    public string Location = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            


            DataTable dtProfile = _mngmod.getDoctorProfile(Session["userId"].ToString());
            if (dtProfile.Rows.Count > 0)
            {
                txtDoctorName.Text = dtProfile.Rows[0]["fullName"].ToString();
               
                txtMobileNo.Text = dtProfile.Rows[0]["contactNumber"].ToString();
                txtEmail.Text = dtProfile.Rows[0]["email"].ToString();
                //flPicture.FileName = dtProfile.Rows[0]["picture"].ToString();
                Image1.ImageUrl = dtProfile.Rows[0]["picture"].ToString();
            }
            
        }

    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userid = Session["userId"].ToString();
        string dbfilepath = "";
        if (flPicture.HasFile)
        {
            try
            {
                string fileBase = Path.GetFileNameWithoutExtension(flPicture.FileName);
                string ext = Path.GetExtension(flPicture.FileName);
                string filename = fileBase + rn.getRandomUniqueNumber() + ext;

                string filePath = MapPath("~/Admin/adminuserImages/") + filename;
                flPicture.SaveAs(filePath);
                dbfilepath = "~/Admin/adminuserImages/" + filename;
            }
            catch (Exception)
            {
            }
        }
        else if (!string.IsNullOrEmpty(Image1.ImageUrl))
        {
            dbfilepath = Image1.ImageUrl;
        }
        //_mngmod.updateDoctorProfile(userid, txtDoctorName, txtMobileNo, dbfilepath);
        _mngmod.updateDoctorProfile3(userid, txtDoctorName, txtMobileNo, dbfilepath);
        Response.Redirect(Request.RawUrl);

    }

   


  

  
}