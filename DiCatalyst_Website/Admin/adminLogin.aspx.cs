using System;
using System.Web.UI;
using BAL;
using System.Data;

public partial class Admin_adminLogin : Page
{
    private readonly Notify _noty = new Notify();

    private readonly userLogin _usersbal = new userLogin();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void AdminLoginClick(object sender, EventArgs e)
    {


        DataTable dt = _usersbal.GetAdminUsersLoginDetails(txtUsername, txtPassword);

        if (dt != null && dt.Rows.Count > 0)
        {

            Session["username"] = dt.Rows[0][1].ToString();
            Session["adminuserId"] = dt.Rows[0][0].ToString();

            Session["userTypeId"] = dt.Rows[0][2].ToString();

            Response.Redirect("adminDashboard.aspx");

        }

        else
        {
            _noty.Error_Display("Please check your login details or Activate your account by verifying your email", Page);
        }

    }
}