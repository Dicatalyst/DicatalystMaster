using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;

namespace Admin
{
    public partial class Admin_Specialities : Page
    {
        private DataTable dt;
        private readonly GlobalSearch loc = new GlobalSearch();
        private userlevels ul = new userlevels();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ul.GetPrivilages(2);

                bindDataList();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            loc.InsertSpeciality(txtName, txtDescription, txtKeywords);


            bindDataList();
        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "deleterow")
        //    {
        //        var index = Convert.ToInt32(e.CommandArgument);
        //        index = index % GridView1.PageSize;
        //        var row = GridView1.Rows[index];
        //        var lblId = (Label) row.FindControl("lblId");
        //        loc.DeleteSpeciality(Convert.ToInt32(lblId.Text));
        //        bindGridView();
        //    }
        //}

        protected void bindDataList()
        {
            dt = loc.Getspeciality();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}