using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;

public partial class Dentist_StockReturns : Page
{
    DataTable dt;
    string doctorId;

    private readonly BAL.inventory inv = new BAL.inventory();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindStock();
        }
        doctorId = Session["userId"].ToString();
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string doctorId="xdfzxd";
        

        if (string.IsNullOrEmpty(DelID.Text))
        {
            inv.insertDentistStockReturns(doctorId, txtFinancialYear, txtDepartment, txtReturnType, txtPurchaseBillNo, txtAdjustedPurchaseBillNo, txtTotalAmount, txtDiscountReturn,
            txtDiscountReturnAmount, txtTotalTax, txtNetAmount, txtTotalCostPrice
            );
        }
        else
        {
            inv.UpdateDentistStockReturns(DelID,doctorId, txtFinancialYear, txtDepartment, txtReturnType, txtPurchaseBillNo, txtAdjustedPurchaseBillNo, txtTotalAmount, txtDiscountReturn,
            txtDiscountReturnAmount, txtTotalTax, txtNetAmount, txtTotalCostPrice
            );
        }

        bindStock();

    }
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{



    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % GridView1.PageSize;
    //        var row = GridView1.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentistStockReturns(Convert.ToInt32(lblId.Text));
    //        bindStock();
    //    }
    //}

    protected void bindStock()
    {
        dt = inv.getDentistStockReturns();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtFinancialYear.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("financialYear"))).InnerText;
            txtDepartment.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("department"))).InnerText;
            txtReturnType.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("returnType"))).InnerText;
            txtPurchaseBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("PurchaseBillNo"))).InnerText;

            txtAdjustedPurchaseBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("adjustedPurchaseBillNo"))).InnerText;
            txtTotalAmount.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("totalAmount"))).InnerText;
            txtDiscountReturn.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("discountReturn"))).InnerText;
            txtDiscountReturnAmount.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("discountReturnAmount"))).InnerText;
            txtTotalTax.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("totalTax"))).InnerText;

            txtNetAmount.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("netAmount"))).InnerText;
            txtTotalCostPrice.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("totalCostPrice"))).InnerText;
            

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            inv.deleteDentistStockReturns(Convert.ToInt32(lblID));
            bindStock();


        }
    }
}