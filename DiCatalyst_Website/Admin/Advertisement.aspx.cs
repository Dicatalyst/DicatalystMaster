using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.IO;
using System.Data;
using BAL;
public partial class Admin_Advertisement : System.Web.UI.Page
{
    DataTable dt;
    private readonly GlobalSearch loc = new GlobalSearch();
    protected readonly BAL.advertisements ad = new BAL.advertisements();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            bindDataList();
        }

    }
    protected void btnSaveAdvertisement_Click(object sender, EventArgs e)
    {
        var serverPath="";

        if (adFile.PostedFile.ContentType == "image/jpeg")
            if (adFile.PostedFile.ContentLength < 204800)
            {
                var filename = Path.GetFileName(adFile.FileName);
                adFile.SaveAs(Server.MapPath("~/Admin/adminuserImages/") + filename);
                serverPath = "~/Admin/adminuserImages/" + filename;

        
            ad.insertGlobalAdveritsement(txtAdTitle, serverPath, txtCustomerName, txtCustomerMobileNo, txtAddress, txtEmail, txtAmountPaid, txtDuration, txtStartDate, false);


            bindDataList();
        }
        
    }

    //protected void gdGlobalAd_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdGlobalAd.PageSize;
    //        var row = gdGlobalAd.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        ad.deleteGlobalAdvertisement(Convert.ToInt32(lblId.Text));
    //        bindGridView();
    //    }
    //}

    protected void bindDataList()
    {
        dt = ad.getGlobalAdvertisements();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    //protected void gdGlobalAd_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {

    //        CheckBox chkbox = (CheckBox)e.Row.FindControl("chkIsActive");
    //        Label lblPreferred = (Label)e.Row.FindControl("lblIsActive");
    //        if (chkbox != null && lblPreferred.Text == "True")
    //        {
    //            chkbox.Checked = true;
    //        }

    //    }
    //}
}