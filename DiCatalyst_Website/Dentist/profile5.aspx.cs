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

public partial class Dentist_profile5 : System.Web.UI.Page
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
          
            DataTable dtProfile = _mngmod.getDoctorProfile(Session["userId"].ToString());
            if (dtProfile.Rows.Count > 0)
            {
               
                location.Text = dtProfile.Rows[0]["address"].ToString();
                route.Text = dtProfile.Rows[0]["street"].ToString();
                txtLocality.Text = dtProfile.Rows[0]["city"].ToString();
                setting_state.Text = dtProfile.Rows[0]["state"].ToString();
                ltlCountryCode.Text = dtProfile.Rows[0]["countryId"].ToString();
                txtZipCode.Text = dtProfile.Rows[0]["zipCode"].ToString();               
                setting_latitude.Text = dtProfile.Rows[0]["latitude"].ToString();
                setting_longitude.Text = dtProfile.Rows[0]["longitude"].ToString();
                setting_country.Text = "India";
            }
            //flPicture.FileName = dtProfile.Rows[0]["picture"].ToString();
        }

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userid = Session["userId"].ToString();
       _mngmod.updateDoctorProfile5(userid, location, route, setting_state, txtLocality, ltlCountryCode, txtZipCode, setting_latitude, setting_longitude);

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