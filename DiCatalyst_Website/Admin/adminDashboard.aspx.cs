using System;
using System.Web.UI;
using BAL;
public partial class Admin_adminDashboard : Page
{

    private readonly userlevels _ul = new userlevels();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            _ul.GetPrivilages(1);
        }


    }
}