using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dentist_FinancialYearSetUp : Page
{

    private readonly BAL.Financials fin = new BAL.Financials();
    DataTable dt;
    string doctorId;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindFinancialYearSetup();
        }

        //string patientId = Session["PId"].ToString();
         doctorId = Session["userId"].ToString();


    }

    //protected void gdFinancialYearSetup_RowCommand(object sender, GridViewCommandEventArgs e)
    //{

    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdFinancialYearSetup.PageSize;
    //        var row = gdFinancialYearSetup.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        fin.deleteFinancialYearSetup(Convert.ToInt32(lblId.Text));
    //        bindFinancialYearSetup();
    //    }

    //}


    protected void btnFinancialYearSetup_Click(object sender, EventArgs e)
    {
        // string doctorId = "cxzvxvcxxc";

        if (string.IsNullOrEmpty(DelID.Text))
        {
            fin.insertFinancialYearSetup(doctorId, txtFinancialYear, txtPatientRegistrationSNo, txtExpiryBillNo, txtPurchaseBillNo, txtPurchaseReturnsBillNo, txtSampleCollBillNo);
        }
        else
        {
            fin.UpdateFinancialYearSetup(DelID, doctorId, txtFinancialYear, txtPatientRegistrationSNo, txtExpiryBillNo, txtPurchaseBillNo, txtPurchaseReturnsBillNo, txtSampleCollBillNo);

        }
        bindFinancialYearSetup();

        ClearTextBoxes(Controls);

    }

    protected void bindFinancialYearSetup()
    {
        dt = fin.getFinancialYearSetup();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtFinancialYear.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("financialYear"))).InnerText;
            txtPatientRegistrationSNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("patientRegistrationSNo"))).InnerText;
            txtExpiryBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("expiryBillNo"))).InnerText;
            txtPurchaseBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("purchaseBillNo"))).InnerText;
            txtPurchaseReturnsBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("purchaseReturnsBillNo"))).InnerText;
            txtSampleCollBillNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("sampleCollBillNo"))).InnerText;

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            fin.deleteFinancialYearSetup(Convert.ToInt32(lblID));
            bindFinancialYearSetup();

        }
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