using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dentist_BillRegistar : Page
{
    private readonly BAL.Financials fin = new BAL.Financials();
    DataTable dt;
    string doctorId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            BindPatientsBillinfo();
        }
        //doctorId = Session["userId"].ToString();
    }

    protected void BindPatientsBillinfo()
    {
        //dt = fin.GetPatientsinfo();
        doctorId = Session["userId"].ToString();

        dt = fin.GetPatientsBillinfo(doctorId);

        //getPatientDetails(Session["userId"].ToString());
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    }
}