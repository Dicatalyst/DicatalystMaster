using System;
using System.Web.UI;
using BAL;
public partial class Dentist_MasterPage : MasterPage
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
                
                ltName.Text = dt.Rows[0]["fullName"].ToString();
                Panel2.Visible = true;

            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
        }

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void lnkSignOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}