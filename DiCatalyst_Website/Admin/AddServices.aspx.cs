using System;
using System.Web.UI;
using BAL;

public partial class Admin_AddServices : Page
{
    private readonly GlobalSearch _loc = new GlobalSearch();
    private userlevels ul = new userlevels();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            ul.GetPrivilages(3);
            _loc.GetSpecialityForDropdown(ddlspeciality);

        }
         
    }

    protected void btnSaveServices_Click(object sender, EventArgs e)
    {
        _loc.InsertServices(ddlspeciality, txtservicename);
    }
}