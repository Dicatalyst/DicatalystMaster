using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace BAL
{
    public class userlevels
    {
        private DAL.userlevels ul = new DAL.userlevels();

        public DataTable getProjectModules()
        {
            DataTable dt = ul.getProjectModules();
            return dt;
        }

        public void InsertUserLevels(int userTypeId, int pageId, bool read, bool write, bool edit, bool delete)
        {
            ul.InsertUserLevels(userTypeId, pageId, read, write, edit, delete);
        }

        public void getUserLevels(DropDownList ddlUserLevels)
        {
            ddlUserLevels.DataSource = ul.getUserLevels();
            ddlUserLevels.DataTextField = "userTypeName";
            ddlUserLevels.DataValueField = "id";
            ddlUserLevels.DataBind();
            ddlUserLevels.Items.Insert(0, new ListItem("--Select User Type--", "0"));
        }

        public void getUserLevelsToGrid(GridView gdvUserLevels)
        {
            gdvUserLevels.DataSource = ul.getUserLevels();
            gdvUserLevels.DataBind();
        }

        public DataTable getassociatedModulestoUsertype(int id)
        {
            return ul.getassociatedModulestoUsertype(id);
        }

        public DataTable getUserLevels(int id)
        {
            return ul.getUserLevels(id);
        }

        public int insertUserTypes(string userTypeName)
        {
            int id = Convert.ToInt32(ul.insertUserTypes(userTypeName).Rows[0][0].ToString());
            return id;
        }

        public DataTable GetPrivilages(int pageid)
        {
            DataTable ds = null;
            if (!string.IsNullOrEmpty(HttpContext.Current.Session["adminuserId"] as string))
            {
                DataTable dt = ul.getAdminTypeId(Convert.ToInt32(HttpContext.Current.Session["adminuserId"]));
                int adminTypeId = 0;
                if (dt.Rows.Count > 0)
                {
                    adminTypeId = Convert.ToInt32(dt.Rows[0][0]);
                }
                ds = ul.adminprivilege(adminTypeId, pageid);
                if (ds.Rows.Count != 0)
                {
                    if (!Convert.ToBoolean(ds.Rows[0][0]))
                        HttpContext.Current.Response.Redirect("~/Admin/Access_Restricted.aspx");
                }
                else
                {
                    HttpContext.Current.Response.Redirect("~/Admin/Access_Restricted.aspx");
                }

            }
            else
            {
                HttpContext.Current.Session.Abandon();
                HttpContext.Current.Response.Redirect("adminLogin.aspx");
            }
            return ds;
        }
    }
}
