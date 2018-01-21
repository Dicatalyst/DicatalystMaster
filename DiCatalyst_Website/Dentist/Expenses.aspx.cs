using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dentist_Expenses : Page
{


    private readonly BAL.Financials fin = new BAL.Financials();
    DataTable dt;
    string doctorId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindExpenses();
        }
        doctorId = Session["userId"].ToString();

    }


    protected void bindExpenses()
    {
        dt = fin.getExpenses();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    //gdExpenses.DataSource = dt;
    //gdExpenses.DataBind();

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtPaidTo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Paidto"))).InnerText;
            txtPaidBy.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Paidby"))).InnerText;
            txtPaidAmount.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("PaidAmount"))).InnerText;
            txtPurposRemarks.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("PurposeRemarks"))).InnerText;

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            fin.deleteExpenses(Convert.ToInt32(lblID));
            bindExpenses();

        }
    }

    protected void btnExpenses_Click(object sender, EventArgs e)
    {

        if (string.IsNullOrEmpty(DelID.Text))
        {
            fin.insertExpenses(doctorId, txtPaidTo, txtPaidBy, txtPaidAmount, txtPurposRemarks);

        }
        else
        {
            fin.UpdateExpenses(DelID, doctorId, txtPaidTo, txtPaidBy, txtPaidAmount, txtPurposRemarks);

        }
        bindExpenses();
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
}

//protected void gdExpenses_RowCommand(object sender, GridViewCommandEventArgs e)
//    {

//        if (e.CommandName == "deleterow")
//        {
//            var index = Convert.ToInt32(e.CommandArgument);
//            index = index % gdExpenses.PageSize;
//            var row = gdExpenses.Rows[index];
//            var lblId = (Label)row.FindControl("lblId");
//            fin.deleteExpenses(Convert.ToInt32(lblId.Text));
//            bindExpenses();
//        }


//    }
//protected void btnExpenses_Click(object sender, EventArgs e)
//    {
//        //string doctorId = "cxzvxvcxxc";

//        //fin.insertExpenses(doctorId, txtPaidTo, txtPaidBy, txtPaidAmount, txtPurposRemarks);
//        //bindExpenses();


//}
//}