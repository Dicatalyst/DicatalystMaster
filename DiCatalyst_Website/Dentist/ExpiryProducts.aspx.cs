using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;

public partial class Dentist_ExpiryProducts : Page
{

    DataTable dt;


    string doctorId;
    private readonly BAL.inventory inv = new BAL.inventory();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //bindOpeningStockEntry();
        }

        doctorId = Session["userId"].ToString();
    }

    protected void bindOpeningStockEntry()
    {
        dt = inv.getDentOpeningStockEntry();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }


    protected void btnExpiry_Click(object sender, EventArgs e)
    {
        //string doctorId="fjkdzshfk";
        //if (string.IsNullOrEmpty(DelID.Text))
        //{
        //    inv.insertDentistExpiryProduct(doctorId, ddlSearch, txtFieldValue);

        //}

        //else
        //{
        //    inv.UpdateDentistExpiryProduct(DelID,doctorId, ddlSearch, txtFieldValue);

        //}
        //bindProducts();
    }
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{

    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % GridView1.PageSize;
    //        var row = GridView1.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        inv.deleteDentistExpiryProduct(Convert.ToInt32(lblId.Text));
    //        bindProducts();
    //    }
    //}

    //protected void bindProducts()
    //{
    //    dt = inv.getDentistExpiryProduct();
    //    DataList1.DataSource = dt;
    //    DataList1.DataBind();
    //}

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //if (e.CommandName == "update")
        //{
        //    txtFieldValue.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("fieldValue"))).InnerText;
        //    //txtForm21B.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("form21B"))).InnerText;
         
        //    DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        //}
        //if (e.CommandName == "delete")
        //{

        //    string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

        //    inv.deleteDentistExpiryProduct(Convert.ToInt32(lblID));

        //}
        //bindProducts();

    }
}