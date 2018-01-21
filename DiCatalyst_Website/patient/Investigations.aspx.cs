using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class patient_Investigations : System.Web.UI.Page
{

    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!this.IsPostBack)
        {
           
            bindInvestigation();
            
        }

    }




    protected void gdInvestigation_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        if (e.CommandName == "deleterow")
        {
            var index = Convert.ToInt32(e.CommandArgument);
            index = index % gdInvestigation.PageSize;
            var row = gdInvestigation.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            medical.deleteInvestigation(Convert.ToInt32(lblId.Text));
            bindInvestigation();
        }


    }


    protected void bindInvestigation()
    {
        string patientId = Session["P_userId"].ToString();
        //string doctorId = Session["userId"].ToString();
        dt = medical.getInvestigationforPatient(patientId);

        gdInvestigation.DataSource = dt;
        gdInvestigation.DataBind();
    }




}