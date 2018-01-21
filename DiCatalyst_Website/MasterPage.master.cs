using System;
using System.Web.UI;
using AjaxControlToolkit;
using BAL;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private readonly Users _usersbal = new Users();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                var dt = _usersbal.GetLoginUserDetails(Session["userId"].ToString());
                ltlUsername.Text = dt.Rows[0]["fullName"].ToString();
                Panel1.Visible = true;
            }
           
            else if (!string.IsNullOrEmpty(Session["P_userId"] as string))
            {
                var dt = _usersbal.GetLoginUserDetails(Session["P_userId"].ToString());
                ltlUsername.Text = dt.Rows[0]["fullName"].ToString();
                Panel1.Visible = true;
                
            }
            else
            {
                Panel1.Visible = false;
            }
        }

    }
    protected void lnkSignOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}