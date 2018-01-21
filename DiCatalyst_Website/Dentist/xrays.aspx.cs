using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Dentist_xrays : System.Web.UI.Page
{
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnXrayDetails_Click(object sender, EventArgs e)
    {
        var doctorId = Session["userId"].ToString();
        var patientId = Session["PId"].ToString();

        var serverPath = "";
        if (xrayFile.HasFile)
        {
            var filename = Path.GetFileName(xrayFile.FileName);
            xrayFile.SaveAs(Server.MapPath("~/Dentist/Files/") + filename);
            serverPath = "~/Dentist/Files/" + filename;

            medical.insertXrayDetails(doctorId, patientId, txtPurpose, txtXRayDate, txtDoctorName, txtMobileNo3, ddlXRayType, serverPath);
        }
    }
}