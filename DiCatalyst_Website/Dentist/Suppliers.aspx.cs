using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BAL;

public partial class Dentist_Suppliers : Page
{
    private readonly GlobalSearch loc = new GlobalSearch();
    private readonly BAL.inventory inv = new BAL.inventory();
    DataTable dt;
    string doctorId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindStockist();

            loc.GetCountriesToDropdown(ddlCountry);

        }
        doctorId = Session["userId"].ToString();
    }

    
    

    //protected void gdStockist_RowCommand(object sender, GridViewCommandEventArgs e)
    //{

    
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdStockist.PageSize;
    //        var row = gdStockist.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentStockist(Convert.ToInt32(lblId.Text));
    //        bindStockist();
    //    }
    //}
    protected void bindStockist()
    {
        dt = inv.getDentStockist();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void btnStockist_Click(object sender, EventArgs e)
    {
        //var doctorId = "4561ASFDF12";
       
        if (string.IsNullOrEmpty(DelID.Text))
        {
            inv.insertDentStockist(doctorId, txtSupplierName, txtAPGSTRegNo, txtCSTNo, txtTINNo, txtForm20B, txtForm21B, txtAddress, ddlCity, ddlArea, ddlstate, txtZipCode, txtTelephoneNo, txtFaxNo, txtContactPerson,
           txtAvailableProducts, txtMobileNo, txtDesignation, txtDepartment, txtWebsite, txtEmail, txtTotalProducts, ddlCountry);
        }
        else
        {
            inv.UpdateDentStockist(DelID,doctorId, txtSupplierName, txtAPGSTRegNo, txtCSTNo, txtTINNo, txtForm20B, txtForm21B, txtAddress, ddlCity, ddlArea, ddlstate, txtZipCode, txtTelephoneNo, txtFaxNo, txtContactPerson,
           txtAvailableProducts, txtMobileNo, txtDesignation, txtDepartment, txtWebsite, txtEmail, txtTotalProducts, ddlCountry);
        }

        bindStockist();
    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry.SelectedItem.Value), ddlstate);
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetcitiesByStateId(Convert.ToInt32(ddlstate.SelectedItem.Value), ddlCity);
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetLocalityByCity(Convert.ToInt32(ddlCity.SelectedItem.Value), ddlArea);
    }

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtSupplierName.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("supplierName"))).InnerText;
            txtAPGSTRegNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("apgstRegNo"))).InnerText;
            txtCSTNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("cstNo"))).InnerText;
            txtTINNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("tinNo"))).InnerText;

            txtForm20B.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("form20B"))).InnerText;
            txtForm21B.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("form21B"))).InnerText;
            txtAddress.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("address"))).InnerText;
            txtZipCode.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("ZipCode"))).InnerText;

            txtTelephoneNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("telephoneNo"))).InnerText;
            txtFaxNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("faxNo"))).InnerText;
            txtMobileNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("MobileNo"))).InnerText;
            txtContactPerson.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("contactPerson"))).InnerText;


            txtAvailableProducts.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("AvailablePerson"))).InnerText;
            //txtMobileNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("MobileNo"))).InnerText;
            txtDesignation.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("designation"))).InnerText;
            txtDepartment.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("department"))).InnerText;

            txtWebsite.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("website"))).InnerText;
            txtEmail.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("email"))).InnerText;
            txtTotalProducts.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("TotalProducts"))).InnerText;

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            inv.deleteDentStockist(Convert.ToInt32(lblID));
            bindStockist();


        }
    }
}