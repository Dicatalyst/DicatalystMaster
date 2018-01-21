using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dentist_ViewDetails : System.Web.UI.Page
{
    private readonly BAL.appointments _app = new BAL.appointments();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Session["userId"].ToString()))
        {
            //Session["PId"] = Request.QueryString["id"].ToString(); 
            var doctorId = Session["userId"].ToString();
            var patientId = Session["PId"].ToString();

            DataTable dt = _app.getPatientDetailsofDiagnosis(patientId);
            txtPatientId.Text = dt.Rows[0]["uniqueRandomId"].ToString();
            txtPatientName.Text = dt.Rows[0]["fullName"].ToString();
            txtAge.Text = dt.Rows[0]["age"].ToString();
            txtGender.Text = dt.Rows[0]["gender"].ToString();
            txtMaritalStatus.Text = dt.Rows[0]["maritalStatus"].ToString();
            txtOccupation.Text = dt.Rows[0]["occupation"].ToString();
            txtChiefComplaint.Text = dt.Rows[0]["chiefComplaint"].ToString();
            txtAddress.Text = dt.Rows[0]["address"].ToString();
            txtMobile.Text = dt.Rows[0]["contactNumber"].ToString();
            txtEmail.Text = dt.Rows[0]["email"].ToString();

            //imgPatient.ImageUrl = "../images/Patients/" + txtPatientId.Text + ".jpg";
            imgPatient.ImageUrl = "../images/Patients/Patient.jpg";
        }
    }
}