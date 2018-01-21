using System;
using System.Web.UI;
using BAL;
using System.Data;
using System.Data.SqlClient;

public partial class Packages : Page
{
    private readonly UsersVsModules usermodules = new UsersVsModules();
    private readonly GlobalSearch gbl = new GlobalSearch();
    private DAL.Connections dac = new DAL.Connections();
    DataSet ds = new DataSet();
    private SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string moduleid = Request.QueryString["modid"].ToString();

            //if (moduleid == "d")
            //{
            //    pnlDoctor.Visible = true;
            //    pnlClinic.Visible = false;
            //    pnlHospital.Visible = false;
            //    pnlLab.Visible = false;
            //    pnlPharma.Visible = false;
            //    pnlDentist.Visible = false;
            //}
            //else if (moduleid == "c")
            //{
            //    pnlDoctor.Visible = false;
            //    pnlClinic.Visible = true;
            //    pnlHospital.Visible = false;
            //    pnlLab.Visible = false;
            //    pnlPharma.Visible = false;
            //    pnlDentist.Visible = false;
            //}
            //else if (moduleid == "h")
            //{
            //    pnlDoctor.Visible = false;
            //    pnlClinic.Visible = false;
            //    pnlHospital.Visible = true;
            //    pnlLab.Visible = false;
            //    pnlPharma.Visible = false;
            //    pnlDentist.Visible = false;
            //}
            //else if (moduleid == "l")
            //{
            //    pnlDoctor.Visible = false;
            //    pnlClinic.Visible = false;
            //    pnlHospital.Visible = false;
            //    pnlLab.Visible = true;
            //    pnlPharma.Visible = false;
            //    pnlDentist.Visible = false;
            //}
            //else if (moduleid == "p")
            //{
            //    pnlDoctor.Visible = false;
            //    pnlClinic.Visible = false;
            //    pnlHospital.Visible = false;
            //    pnlLab.Visible = false;
            //    pnlPharma.Visible = true;
            //    pnlDentist.Visible = false;
            //}
            //else if (moduleid == "de")
            //{
            //    pnlDoctor.Visible = false;
            //    pnlClinic.Visible = false;
            //    pnlHospital.Visible = false;
            //    pnlLab.Visible = false;
            //    pnlPharma.Visible = false;
            //    pnlDentist.Visible = true;
            //}
            //gbl.GetSpecialityForDropdown(ddlSpecialities);

            cmd = dac.GetCommand("[sp_getDentistPackages]");  
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            dlPackages.DataSource = ds;
            dlPackages.DataBind();
            Response.Redirect("~/Dentist/Default.aspx");
        }
    }

    //protected void doctorPackage(object sender, EventArgs e)
    //{
    //    var userId = Session["userId"].ToString();
    //    int specialityid = Convert.ToInt32(ddlSpecialities.SelectedItem.Value);
    //    if (specialityid == 5)
    //    {
    //        usermodules.InsertUsersVsModules(userId, 2, 2);
    //        usermodules.insertDoctorPackageSpeciality(userId, ddlSpecialities.SelectedItem.Text);
    //        Response.Redirect("~/Dentist/Default.aspx");
    //    }
    //    else
    //    {
    //        usermodules.InsertUsersVsModules(userId, 1, 2);
    //        usermodules.insertDoctorPackageSpeciality(userId, ddlSpecialities.SelectedItem.Text);
    //        Response.Redirect("~/Doctors/Default.aspx");
    //    }
        
    //}

    //protected void clinicPackage(object sender, EventArgs e)
    //{
    //    var userId = Session["userId"].ToString();
    //    usermodules.InsertUsersVsModules(userId, 2, 2);
    //    Response.Redirect("~/Clinic/Default.aspx");
    //}

    //protected void hospitalPackage(object sender, EventArgs e)
    //{
    //    var userId = Session["userId"].ToString();
    //    usermodules.InsertUsersVsModules(userId, 3, 2);
    //    Response.Redirect("~/Hospital/Default.aspx");
    //}

    //protected void labPackage(object sender, EventArgs e)
    //{
    //    var userId = Session["userId"].ToString();
    //    usermodules.InsertUsersVsModules(userId, 4, 2);
    //    Response.Redirect("~/laboratory/Default.aspx");
    //}

    //protected void pharmaPackage(object sender, EventArgs e)
    //{
    //    var userId = Session["userId"].ToString();
    //    usermodules.InsertUsersVsModules(userId, 5, 2);
    //    Response.Redirect("~/Pharma/Default.aspx");
    //}

    protected void dentistPackage(object sender, EventArgs e)
    {
        var userId = Session["userId"].ToString();
        usermodules.InsertUsersVsModules(userId, 6, 2);
        Response.Redirect("~/Dentist/Default.aspx");
    }
}