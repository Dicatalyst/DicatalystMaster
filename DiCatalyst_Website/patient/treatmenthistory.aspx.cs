using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;

public partial class patient_treatmenthistory : Page
{
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private SqlCommand cmd1;
    private SqlDataAdapter da1;
    private SqlCommand cmd2;
    private SqlDataAdapter da2;
    private Connections dac = new Connections();
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    DataTable dt;
    DataTable dt1;
    int totalAmount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            totalAmount = 0;
            //    GridViewHelper helper = new GridViewHelper(this.GridView1);
            //    helper.RegisterSummary("fee", SummaryOperation.Sum);

            var patientId = Session["P_userId"].ToString();
            DataSet ds = new DataSet();
            cmd = dac.GetCommand("[sp_getDentistInvoiceIdforPatient]");
            SqlParameter[] par = {               
                new SqlParameter("@patientId", patientId)
               
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            if (ds.Tables[0].Rows.Count > 0)
            {
                invoiceIdLabel.Text = ds.Tables[0].Rows[0][0].ToString();
                bindInvoice();
                bindAccountGrid();
                txtdue.Text = getdueamount().ToString();
            }
        }
    }

    private int getdueamount()
    {
        DataSet ds = new DataSet();
        var patientId = Session["P_userId"].ToString();
        cmd = dac.GetCommand("[sp_getDentistInvoiceDueAmountforpatient]");
        SqlParameter[] par = {
                new SqlParameter("@invoiceId", invoiceIdLabel.Text),
             
         new SqlParameter("@patientId", patientId)
               
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        if (ds.Tables[0].Rows.Count > 0)
        {
            return Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
        }
        else
        {
            return Convert.ToInt32(lblTotalAmount.Text);
        }

    }
    private void bindInvoice()
    {
        DataSet ds = new DataSet();
        cmd = dac.GetCommand("[sp_getDentistInvoices]");
        SqlParameter[] par = {
                new SqlParameter("@invoiceId", invoiceIdLabel.Text)
               
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void btnAccounts_Click(object sender, EventArgs e)
    {

//        var patientId = Session["P_userId"].ToString();
//        string total = txtdue.Text;

//        bool paidbit = true;
//        if (getdueamount() == Convert.ToInt32(lblTotalAmount.Text))
//        {
//            cmd = dac.GetCommand("[sp_insertDentistAccountsPaidforpatient]");
//            SqlParameter[] par = {
//         //new SqlParameter("@totalAmount", Convert.ToInt32(txttotal.Text)),
//         new SqlParameter("@paid", Convert.ToInt32(txtpaid.Text)),
//         new SqlParameter("@due", Convert.ToInt32(txtdue.Text)),
//         new SqlParameter("@patientId", patientId),
//        new SqlParameter("@paidbit", paidbit),
//          new SqlParameter("@datetime", DateTime.Now),
//new SqlParameter("@invoiceId", invoiceIdLabel.Text)
     
//            };

//            for (int i = 0; i < par.Length; i++)
//            {
//                cmd.Parameters.Add(par[i]);
//            }

//            dac.EnsureOpen();

//            cmd.ExecuteNonQuery();

//            dac.Close();
//        }
//        else
//        {
//            cmd2 = dac.GetCommand("[sp_UpdateDentistAccountsPaidforPatient]");
//            SqlParameter[] par2 = {
//         //new SqlParameter("@totalAmount", Convert.ToInt32(txttotal.Text)),
       
//         new SqlParameter("@due", Convert.ToInt32(txtdue.Text)),
       
//         new SqlParameter("@patientId", patientId),        
//new SqlParameter("@invoiceId", invoiceIdLabel.Text)
     
//            };

//            for (int i = 0; i < par2.Length; i++)
//            {
//                cmd2.Parameters.Add(par2[i]);
//            }

//            dac.EnsureOpen();

//            cmd2.ExecuteNonQuery();

//            dac.Close();
//        }
//        paidbit = false;

//        cmd1 = dac.GetCommand("[sp_insertDentistAccountsPaidforpatient]");
//        SqlParameter[] par1 = {
//         //new SqlParameter("@totalAmount", Convert.ToInt32(txttotal.Text)),
//         new SqlParameter("@paid", Convert.ToInt32(txtpaid.Text)),
//         new SqlParameter("@due", (Convert.ToInt32(txtdue.Text) - Convert.ToInt32(txtpaid.Text))),
        
//         new SqlParameter("@patientId", patientId),
//        new SqlParameter("@paidbit", paidbit),
//          new SqlParameter("@datetime", DateTime.Now),
//new SqlParameter("@invoiceId", invoiceIdLabel.Text)
     
//            };

//        for (int i = 0; i < par1.Length; i++)
//        {
//            cmd1.Parameters.Add(par1[i]);
//        }

//        dac.EnsureOpen();

//        cmd1.ExecuteNonQuery();

//        dac.Close();

//        Response.Redirect(Request.RawUrl);

    }
    protected void gdAccounts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "deleterow")
        //{
        //    var index = Convert.ToInt32(e.CommandArgument);
        //    index = index % gdAccounts.PageSize;
        //    var row = gdAccounts.Rows[index];
        //    var lblId = (Label)row.FindControl("lblId");
        //    medical.deleteAccounts(Convert.ToInt32(lblId.Text));
        //    bindAccountGrid();
        //}
    }
    protected void bindAccountGrid()
    {
        string patientId = Session["P_userId"].ToString();
        dt = medical.getAccountsForPatients( patientId, lblTotalAmount.Text);
        gdAccounts.DataSource = dt;
        gdAccounts.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //int totalAmount = 0;
            //foreach (GridViewRow row in GridView1)
            //{
            totalAmount = totalAmount + Convert.ToInt32(e.Row.Cells[3].Text);
            lblTotalAmount.Text = totalAmount.ToString();

            //}

        }
    }
    //protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    //{
    //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
    //    {
    //        GridView grvAccounts = (GridView)e.Item.FindControl("GridView1");
    //        Label invoiceIdLabel = (Label)e.Item.FindControl("invoiceIdLabel");



    //    }
    //}
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}