using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Dentist_StockAdjustments : Page
{
    DataTable dt;
    private readonly BAL.inventory inv = new BAL.inventory();
    string doctorId;
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack)
        {
            bindStockAdjustment();
        }

        doctorId = Session["userId"].ToString();
    }

   
    protected void btnStock_Click(object sender, EventArgs e)
    {
        //string doctorId="djkhsfgkjs";

        if (string.IsNullOrEmpty(DelID.Text))
        {
            inv.insertDentistStockAdjustment(doctorId, ddlProduct, ddlSearch, txtFieldValue);

        }

        else
        {
            inv.UpdateDentistStockAdjustment(DelID, doctorId, ddlProduct, ddlSearch, txtFieldValue);

        }


        bindStockAdjustment();
    }
    //protected void gdStockAdj_RowCommand(object sender, GridViewCommandEventArgs e)
    //{


    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdStockAdj.PageSize;
    //        var row = gdStockAdj.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentistStockAdjustment(Convert.ToInt32(lblId.Text));
    //        bindStockAdjustment();
    //    }
    //}

    protected void bindStockAdjustment()
    {
        dt = inv.getDentistStockAdjustment();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtFieldValue.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("fieldValue"))).InnerText;
            //txtForm21B.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("form21B"))).InnerText;
         
            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            inv.deleteDentistStockAdjustment(Convert.ToInt32(lblID));
            bindStockAdjustment();


        }
    }
}