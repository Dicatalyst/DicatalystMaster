using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;

public partial class Admin_labTest : System.Web.UI.Page
{
    DataTable dt;
    private readonly BAL.manageLabInvestigations labInv = new BAL.manageLabInvestigations();
    private SqlCommand cmd;
    private SqlDataAdapter da;  
    private Connections dac = new Connections();
    private DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindDataList();
            bindSpecimen();

        }

    }
    public void bindSpecimen()
    {
            cmd = dac.GetCommand("[sp_getSpecimen]");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);

            ddlSpecimen.DataSource = ds;
            ddlSpecimen.DataTextField = "specimenName";
            ddlSpecimen.DataValueField = "id";
            ddlSpecimen.DataBind();
            ddlSpecimen.Items.Insert(0, new ListItem("--Select Specimen--", "0"));
        
    }
    protected void btnLabTest_Click(object sender, EventArgs e)
    {
        labInv.insertLabTest(txtTestName, ddlSpecimen, txtConventionalUnits, txtSiUnit, radSelect);
        bindDataList();
    }
    //protected void gdLabTest_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdLabTest.PageSize;
    //        var row = gdLabTest.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        labInv.deleteLabTest(Convert.ToInt32(lblId.Text));
    //        bindGridView();
    //    }
    //}

    protected void bindDataList()
    {
        dt = labInv.getLabTest();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}