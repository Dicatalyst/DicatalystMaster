using System;
using System.Web.UI;
using BAL;

public partial class adminLogin : Page

{
    private readonly Notify noty = new Notify();

    private readonly Users usersbal = new Users();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void adminLoginClick(object sender, EventArgs e)
    {
        var dt = usersbal.GetAdminLoginDetails(txtEmail, txtPassword);


        if (dt.Rows.Count > 0)
        {
            Session["userId"] = dt.Rows[0][1].ToString();
            Response.Redirect("~/Admin/Default.aspx");
        }
        else
        {
            noty.Error_Display("Please check your login details or Activate your account by verifying your email",
                Page);
        }
    }
}