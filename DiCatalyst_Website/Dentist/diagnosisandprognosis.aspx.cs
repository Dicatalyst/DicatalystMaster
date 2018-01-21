using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dentist_diagnosisandprognosis : System.Web.UI.Page
{
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindPrognosisGrid();
        }
    }
    protected void btnDiagnosis1_Click(object sender, EventArgs e)
    {
        var doctorId = Session["userId"].ToString();
        var patientId = Session["PId"].ToString();
        foreach (GridViewRow row in gdDiagnosisPrognosis.Rows)
        {
            Label txtToothNo = (Label)row.FindControl("txtToothNo");
            Label txtExaminationName = (Label)row.FindControl("txtExaminationName");
            TextBox txtDescription = (TextBox)row.FindControl("txtDescription");
            DropDownList ddlPrognosis = (DropDownList)row.FindControl("ddlPrognosis");
            TextBox txtAdditionalNotes = (TextBox)row.FindControl("txtAdditionalNotes");
            TextBox txtdateTime = (TextBox)row.FindControl("txtdateTime");

            medical.insertDiagnosisPrognosis(doctorId, patientId, txtToothNo, txtExaminationName, txtDescription, ddlPrognosis, txtAdditionalNotes, txtdateTime);
        }

        bindPrognosisGrid();
    }
    protected void bindPrognosisGrid()
    {

        var doctorId = Session["userId"].ToString();
        var patientId = Session["PId"].ToString();
        dt = medical.getDiagnosisPrognosis(doctorId, patientId);
        gdDiagnosisPrognosis.DataSource = dt;
        gdDiagnosisPrognosis.DataBind();
    }
}