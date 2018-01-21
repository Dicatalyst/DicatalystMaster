using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class Admin_Access_Restricted : System.Web.UI.Page
{
    private readonly DAL.userlevels ul = new DAL.userlevels();
    private readonly BAL.Users usr = new BAL.Users();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = ul.getAdminTypeId(Convert.ToInt32(HttpContext.Current.Session["adminuserId"]));
            int adminTypeId = Convert.ToInt32(dt.Rows[0][0]);
            DataTable pdt = usr.getUserAccessPermissionsToDisplay(adminTypeId);
            GridView1.DataSource = pdt;
            GridView1.DataBind();
        }
    }
}