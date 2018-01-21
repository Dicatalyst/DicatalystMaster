using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_labInvestigationProfile : System.Web.UI.Page
{
    DataTable dt;
    private readonly BAL.manageLabInvestigations labInv = new BAL.manageLabInvestigations();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindDataList();
        }

    }
    protected void btnSaveInvProfile_Click(object sender, EventArgs e)
    {
        labInv.insertLabInvestigationProfile(txtProfileName);
        bindDataList();

    }
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{

    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % GridView1.PageSize;
    //        var row = GridView1.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        labInv.deleteLabInvestigationProfile(Convert.ToInt32(lblId.Text));
    //        bindGridView();
    //    }
    //}

    protected void bindDataList()
    {
        dt = labInv.getLabInvestigationProfile();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}