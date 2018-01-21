using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dentist_Purchases : Page
{
     private readonly BAL.inventory inv = new BAL.inventory();
     DataTable dt;
    string doctorId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            bindPurchase();
        }
        doctorId = Session["userId"].ToString();
    }

   

    protected void btnPurchases_Click(object sender, EventArgs e)
    {
        //var doctorId = "ZXCV1234QW";
        if (string.IsNullOrEmpty(DelID.Text))
        {
            inv.insertDentPurchases(doctorId, txtPurchaseBillNo, txtInvoiceNo, txtInvoiceDate, txtSupplier, txtReceivingDate, txtDepartment, txtFinancialYear, radSelectPurchases, txtDuePaidBillNo);

        }
        else
        {
            inv.UpdateDentPurchases(DelID,doctorId, txtPurchaseBillNo, txtInvoiceNo, txtInvoiceDate, txtSupplier, txtReceivingDate, txtDepartment, txtFinancialYear, radSelectPurchases, txtDuePaidBillNo);

        }

        bindPurchase();
    }
    //protected void gdPurchases_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdPurchases.PageSize;
    //        var row = gdPurchases.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentPurchases(Convert.ToInt32(lblId.Text));
    //        bindPurchaseGrid();
    //    }
    //}
    protected void bindPurchase()
    {
        dt = inv.getDentPurchases();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtPurchaseBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("PurchaseBillNo"))).InnerText;
            txtInvoiceNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("InvoiceNo"))).InnerText;
            txtSupplier.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("suppiler"))).InnerText;
            txtInvoiceDate.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("InvoiceDate"))).InnerText;
             
            txtReceivingDate.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("recevingDate"))).InnerText;
            txtDepartment.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Department"))).InnerText;
            txtFinancialYear.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("FinancialYear"))).InnerText;
            txtDuePaidBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DuePaidBillNo"))).InnerText;

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            inv.deleteDentPurchases(Convert.ToInt32(lblID));
            bindPurchase();


        }
    }
}