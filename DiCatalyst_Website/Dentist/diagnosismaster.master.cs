using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dentist_diagnosismaster : System.Web.UI.MasterPage
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
            ltlFullName.Text = dt.Rows[0]["fullName"].ToString();
            ltlEmail.Text = dt.Rows[0]["email"].ToString();
            ltlMobile.Text = dt.Rows[0]["contactNumber"].ToString();
            ltlOccupation.Text = dt.Rows[0]["occupation"].ToString();
            ltlPatientId.Text = dt.Rows[0]["uniqueRandomId"].ToString();
            ltlGender.Text = dt.Rows[0]["gender"].ToString();
            ltlMaritalStatus.Text = dt.Rows[0]["maritalStatus"].ToString();
            ltlChiefComplaint.Text = dt.Rows[0]["chiefComplaint"].ToString();
            ltlAge.Text = dt.Rows[0]["age"].ToString();

        }
        else
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        //BindDummyRow();
    }
}
