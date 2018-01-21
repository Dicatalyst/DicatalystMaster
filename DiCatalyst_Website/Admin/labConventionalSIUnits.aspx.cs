using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_labConventionalSIUnits : System.Web.UI.Page
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
    protected void btnUnits_Click(object sender, EventArgs e)
    {
        labInv.insertLabConventionalUnits(txtAgent,txtConventionalUnit,txtConversionFactor,txtSiUnit);

        bindDataList();
    }
    //protected void gdLabUnits_RowCommand(object sender, GridViewCommandEventArgs e)
    //{

    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdLabUnits.PageSize;
    //        var row = gdLabUnits.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        labInv.deleteLabConventionalSIUnits(Convert.ToInt32(lblId.Text));
    //        bindGridView();
    //    }
    //}

    protected void bindDataList()
    {
        dt = labInv.getLabConventionalUnits();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}