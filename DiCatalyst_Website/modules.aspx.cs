using System;
using System.Web.UI;
using BAL;

public partial class modules : Page
{
    private readonly BAL.UsersVsModules usermodules = new UsersVsModules();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void lnkPatient_Click(object sender, EventArgs e)
    {
        var userId = Session["userId"].ToString();
        usermodules.InsertUsersVsModules(userId, 7, 0);
        Response.Redirect("~/Patient/Default.aspx");
    }
}