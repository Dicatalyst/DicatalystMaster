using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;

public partial class Dentist_StockStatus : Page
{
    DataTable dt;


    private readonly BAL.inventory inv = new BAL.inventory();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindStock();
        }   
       
    }


    protected void btnStock_Click(object sender, EventArgs e)
    {
        string doctorId="jfdshr";
        inv.insertDentistStockStatus(doctorId, ddlReport, txtFieldValue, txtSearchBy, txtProductCategory);
           bindStock();

    }
    
   

       
    
 
//    protected void gdstock_RowCommand(object sender, GridViewCommandEventArgs e)
//    {
//if (e.CommandName == "deleterow")
//        {
//            var index = Convert.ToInt32(e.CommandArgument);
//            index = index % gdstock.PageSize;
//            var row = gdstock.Rows[index];
//            var lblId = (Label)row.FindControl("lblId");
//            inv.deleteDentistStockStatus(Convert.ToInt32(lblId.Text));
//            bindStock();
//        }
//    }

    protected void bindStock()
    {
        dt = inv.getDentistStockStatus();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}