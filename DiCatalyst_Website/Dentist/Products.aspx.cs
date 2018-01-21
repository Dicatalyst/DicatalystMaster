using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dentist_Products : Page
{
    private readonly BAL.inventory inv = new BAL.inventory();
    DataTable dt;
    string doctorId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindProducts();
            bindProductCategory();
            bindProductSubCategory();
           
        }
        doctorId = Session["userId"].ToString();

    }


    protected void btnProducts_Click(object sender, EventArgs e)
    {
        //var doctorId = "4561ASFDF12";
        if (string.IsNullOrEmpty(DelID.Text))
        {
            inv.insertDentProducts(doctorId, txtProductName, txtCode, ddlPackType, txtPacking, ddlGenericForm, ddlManufacturer, txtReOrderLevel, txtCostPrice, txtSalePrice, txtMaximumReOrderlevel, txtPackSize, txtTaxCategory, radSelect, txtRackNo, txtMRP, txtSchedule, ddlCST, txtDiscount);

        }
        else
        {
            inv.UpdateDentProducts(DelID, doctorId, txtProductName, txtCode, ddlPackType, txtPacking, ddlGenericForm, ddlManufacturer, txtReOrderLevel, txtCostPrice, txtSalePrice, txtMaximumReOrderlevel, txtPackSize, txtTaxCategory, radSelect, txtRackNo, txtMRP, txtSchedule, ddlCST, txtDiscount);

        }
        bindProducts();
    }
    protected void btnProductCategory_Click(object sender, EventArgs e)
    {
        //var doctorId = "4561ASFDF12";
    inv.insertDentProductCategory(doctorId, ddlCode, txtProductCategory);
    bindProductCategory();

    }
    protected void btnProductSubCategory_Click(object sender, EventArgs e)
    {
         //var doctorId = "4561ASFDF12";
         inv.insertDentProductSubCategory(doctorId,txtSelectCategory,txtProductSubCategory);
         bindProductSubCategory();
    }
    //protected void gdProductCategory_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdProductCategory.PageSize;
    //        var row = gdProductCategory.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentProductCategory(Convert.ToInt32(lblId.Text));
    //        bindProductCategoryGrid();
    //    }
    //}

    protected void bindProductCategory()
    {
        dt = inv.getDentProductCategory();
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }
    //protected void gdProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdProducts.PageSize;
    //        var row = gdProducts.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentProducts(Convert.ToInt32(lblId.Text));
    //        bindProductsGrid();
    //    }

    //}


    protected void bindProducts()
    {
        dt = inv.getDentProducts();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    //protected void gdProductSubCategory_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdProductSubCategory.PageSize;
    //        var row = gdProductSubCategory.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentProductSubCategory(Convert.ToInt32(lblId.Text));
    //        bindProductCategoryGrid();
    //    }
    //}

    protected void bindProductSubCategory()
    {
        dt = inv.getDentProductSubCategory();
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtPacking.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Packing"))).InnerText;
            txtProductName.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("ProductName"))).InnerText;
            txtReOrderLevel.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("ReOrderLevel"))).InnerText;
            txtCode.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Code"))).InnerText;

            txtCostPrice.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("CostPrice"))).InnerText;
            txtSalePrice.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("SalePrice"))).InnerText;
            txtMaximumReOrderlevel.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("MaximumReOrderlevel"))).InnerText;
            txtPackSize.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("PackSize"))).InnerText;

            txtTaxCategory.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("TaxCategory"))).InnerText;
            txtRackNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("RackNo"))).InnerText;
            txtMRP.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("MRP"))).InnerText;

            txtSchedule.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Schedule"))).InnerText;
            txtDiscount.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Discount"))).InnerText;

            //txtSalePrice.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("SalePrice"))).InnerText;
            //txtTotalStock.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("TotalStock"))).InnerText;

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            inv.deleteDentProductCategory(Convert.ToInt32(lblID));
            bindProducts();


        }
    }
}
//}