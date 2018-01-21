using System;
using System.Data;
using System.Web.UI;
using BAL;

public partial class activateUser : Page
{
    private readonly Users usersbal = new Users();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Abandon();
            DataTable dt;
            var temp = Request.QueryString["id"];
            var uniqueUserId = temp.Substring(0, 10);
            ActivateUsers(uniqueUserId);
            dt = usersbal.GetActivatedUserDetails(uniqueUserId);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    public void ActivateUsers(string uniqueUserId)
    {
        usersbal.ActivateUsers(uniqueUserId);
    }
}