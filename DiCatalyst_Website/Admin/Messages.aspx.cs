using System;
using System.Web.UI;
using BAL;
namespace Admin
{
    public partial class Admin_Messages : Page
    {
        private userlevels ul = new userlevels();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ul.GetPrivilages(7);
            }
        }
    }
}