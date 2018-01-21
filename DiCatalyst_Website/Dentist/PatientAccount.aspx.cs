using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dentist_PatientAccount : Page
{
    private readonly BAL.Financials fin = new BAL.Financials();
    DataTable dt;
    string doctorId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindPatientsinfo();
        }
        //doctorId = Session["userId"].ToString();

    }

    //protected void bindPatients()
    //{
    //    dt = fin.getPatients();
    //    DataList1.DataSource = dt;
    //    DataList1.DataBind();
    //}

    protected void BindPatientsinfo()
    {
        doctorId = Session["userId"].ToString();

        //dt = fin.GetPatientsinfo();
        dt = fin.GetPatientsinfo(doctorId);

        //getPatientDetails(Session["userId"].ToString());
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}