using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dentist_BankAccount : Page
{

    private readonly BAL.Financials fin = new BAL.Financials();
    DataTable dt;
    string doctorId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindBankAccount();
        }
        doctorId = Session["userId"].ToString();

    }



    //protected void gdBankAccount_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdBankAccount.PageSize;
    //        var row = gdBankAccount.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        fin.deleteBankAccount(Convert.ToInt32(lblId.Text));
    //        bindBankAccount();
    //    }
    //}


    protected void btnBankAccount_Click(object sender, EventArgs e)
    {
        //string doctorId = "cxzvxvcxxc";
       
        if (string.IsNullOrEmpty(DelID.Text))
        {
            fin.insertBankAccount(doctorId, txtBankName, txtAccountNo);
        }
        else
        {
            fin.UpdateBankAccount(DelID, doctorId, txtBankName, txtAccountNo);

        }
        bindBankAccount();
        ClearTextBoxes(Controls);
    }

    protected void bindBankAccount()
    {
        dt = fin.getBankAccount();
        DataList1.DataSource = dt;
        DataList1.DataBind();
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

    protected void DataList1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "update")
        {
            txtAccountNo.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("accountNo"))).InnerText; 
            txtBankName.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("bankName"))).InnerText;
            

            DelID.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;
        }
        if (e.CommandName == "delete")
        {

            string lblID = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DelID"))).InnerText;

            fin.deleteBankAccount(Convert.ToInt32(lblID));
            bindBankAccount();

        }
    }
}