using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Dentist_OpeningStockEntry : Page
{
    private readonly BAL.inventory inv = new BAL.inventory();
    DataTable dt;
    string doctorId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindOpeningStockEntry();
        }

        doctorId = Session["userId"].ToString();
    }

   
    protected void btnOpeningStock_Click(object sender, EventArgs e)
    {
        //var doctorId="4561ASFDF12";
        if (string.IsNullOrEmpty(DelID.Text))
        {
            inv.insertDentOpeningStockEntry(doctorId, ddlDepartment, txtFinancialYear, txtProductName, txtCategory, txtCode, txtBatchNo, txtExpiryDate, txtQuantity, txtPackSize, txtFree, txtRackNo, txtGST, txtCostPrice, txtMRP, txtSalePrice, txtTotalStock);
        }
        else
        {
            inv.UpdateDentOpeningStockEntry(DelID, doctorId, ddlDepartment, txtFinancialYear, txtProductName, txtCategory, txtCode, txtBatchNo, txtExpiryDate, txtQuantity, txtPackSize, txtFree, txtRackNo, txtGST, txtCostPrice, txtMRP, txtSalePrice, txtTotalStock);

        }
        bindOpeningStockEntry();

    }
    //protected void gdOpeningStockEntry_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdOpeningStockEntry.PageSize;
    //        var row = gdOpeningStockEntry.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentOpeningStockEntry(Convert.ToInt32(lblId.Text));
    //        bindOpeningStockEntry();
    //    }
    //}
    protected void bindOpeningStockEntry()
    {
        dt = inv.getDentOpeningStockEntry();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtFinancialYear.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("FinancialYear"))).InnerText;
            txtProductName.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("ProductName"))).InnerText;
            txtCategory.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Category"))).InnerText;
            txtCode.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Code"))).InnerText;

            txtBatchNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("BatchNo"))).InnerText;
            txtExpiryDate.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("ExpiryDate"))).InnerText;
            txtQuantity.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Quantity"))).InnerText;
            txtPackSize.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("PackSize"))).InnerText;

            txtFree.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Free"))).InnerText;
            txtRackNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("RackNo"))).InnerText;
            txtGST.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("GST"))).InnerText;
            txtCostPrice.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("CostPrice"))).InnerText;

            txtMRP.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("MRP"))).InnerText;
            txtSalePrice.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("SalePrice"))).InnerText;
            txtTotalStock.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("TotalStock"))).InnerText;

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            inv.deleteDentOpeningStockEntry(Convert.ToInt32(lblID));
            bindOpeningStockEntry();
            

        }
    }
}
