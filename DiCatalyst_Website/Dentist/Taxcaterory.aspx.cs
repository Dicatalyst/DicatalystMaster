using System;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;


public partial class Dentist_Taxcaterory : Page
{

    private readonly BAL.Financials fin = new BAL.Financials();
    DataTable dt;
    string doctorId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindTaxCategory();
        }
        doctorId = Session["userId"].ToString();

    }

    //protected void gdTaxCategory_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdTaxCategory.PageSize;
    //        var row = gdTaxCategory.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        fin.deleteTaxCategory(Convert.ToInt32(lblId.Text));
    //        bindTaxCategory();
    //    }
    //}
    protected void btnTaxCategory_Click(object sender, EventArgs e)
    {
        //string doctorId = "cxzvxvcxxc";


        if (string.IsNullOrEmpty(DelID.Text))
        {
            fin.insertTaxCategory(doctorId, txtTaxName, txtTaxPercentage);

        }
        else
        {
            fin.UpdateTaxCategory(DelID, doctorId, txtTaxName, txtTaxPercentage);

        }

        bindTaxCategory();
        ClearTextBoxes(Controls);
    }

    private void ClearTextBoxes(ControlCollection cc)
    {
        foreach (Control ctrl in cc)
        {
            TextBox tb = ctrl as TextBox;
            if (tb != null)
                tb.Text = "";
            else
                ClearTextBoxes(ctrl.Controls);
        }
    }

    protected void bindTaxCategory()
    {
        dt = fin.getTaxCategory();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }


    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtTaxName.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("taxName"))).InnerText;
            txtTaxPercentage.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("taxPercentage"))).InnerText;


            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            fin.deleteTaxCategory(Convert.ToInt32(lblID));
            bindTaxCategory();

        }
    }
}