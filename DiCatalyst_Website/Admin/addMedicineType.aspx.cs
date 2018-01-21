using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using  System.Data;
using BAL;
public partial class Admin_addMedicineType : System.Web.UI.Page

{
    private ManageModules mngmod = new ManageModules();
    private DataTable dt;
    private userlevels ul = new userlevels();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ul.GetPrivilages(15);
            bindDataList();

        }
           
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mngmod.insertMedicineType(txtMedicineType, txtDose);

        bindDataList();
    }

    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % GridView1.PageSize;
    //        var row = GridView1.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        mngmod.deleteMedicineType(Convert.ToInt32(lblId.Text));
    //        bindGridView();
    //    }
        
    //}
    protected void bindDataList()
    {
        dt = mngmod.getMedicineType();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}