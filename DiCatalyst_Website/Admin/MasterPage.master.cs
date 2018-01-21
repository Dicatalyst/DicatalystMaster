using System;
using System.Web.UI;

namespace Admin
{
    public partial class Admin_MasterPage : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["adminuserId"] as string))
                {

                }
                else
                {
                    Session.Abandon();
                    Response.Redirect("adminLogin.aspx");
                }

            }
        }


        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["adminuserId"] == null)
            {
                Session.Abandon();
                Response.Redirect("adminLogin.aspx");
            }
        }
        protected void lnkSignOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
              Response.Redirect("adminLogin.aspx");
        }
}
}