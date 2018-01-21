using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using BAL;

public partial class Admin_LocationSpecificAd : System.Web.UI.Page
{
    DataTable dt;
    private readonly GlobalSearch loc = new GlobalSearch();
    protected readonly BAL.advertisements ad = new BAL.advertisements();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //dt = ad.getLocationSpecificAdvertisements();
            //gdLocAd.DataSource = dt;
            //gdLocAd.DataBind();

            bindDataBind();


            loc.GetSpecialityForDropdown(ddlSpeciality);

            loc.GetCountriesToDropdown(ddlCountry1);
        }
    }
    protected void ddlCountry1_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry1.SelectedItem.Value), ddlState1);
    }
    protected void ddlState1_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetcitiesByStateId(Convert.ToInt32(ddlState1.SelectedItem.Value), ddlcity1);
    }
    protected void ddlcity1_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetLocalityByCity(Convert.ToInt32(ddlcity1.SelectedItem.Value), ddlLocality);
    }


    protected void btnSaveLocSpecificAd_Click(object sender, EventArgs e)
    {
        var serverPath1 = "";
        if (adFile1.HasFile)
        {
            var filename = Path.GetFileName(adFile1.FileName);
            adFile1.SaveAs(Server.MapPath("~/Admin/File/") + filename);
            serverPath1 = "~/Admin/File/" + filename;

            ad.insertSpecialityLocationSpecificAd(ddlSpeciality, ddlCountry1, ddlState1, ddlcity1, ddlLocality, txtAdTitle1, serverPath1, txtCustomerName1, txtCustomerMobileNo1, txtAddress1, txtEmail1, txtAmountPaid1, txtDuration1, txtStartDate1, false);
            bindDataBind();
        }

    }

    //protected void gdLocAd_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdLocAd.PageSize;
    //        var row = gdLocAd.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        ad.deleteLocationSpecificAdvertisements(Convert.ToInt32(lblId.Text));
    //        bindGridView();
    //    }
    //}
    protected void bindDataBind()
    {
        dt = ad.getLocationSpecificAdvertisements();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    //protected void gdLocAd_RowDataBound(object sender, GridViewRowEventArgs e)
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