using System;
using System.Web.UI;
using BAL;
using System.Data.SqlClient;
using DAL;
using System.Data;
namespace Admin
{
    public partial class Admin_Manage_Packages : Page
    {
        private BAL.userlevels ul = new BAL.userlevels();
     private SqlCommand cmd;
            private DataSet ds;
            private DAL.Connections dac = new Connections();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ul.GetPrivilages(14);
                SqlDataSource1.DataBind();

            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            cmd = dac.GetCommand("sp_insertDentistPackages");
                SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@packageName", txtPackageName.Text),
                                     new SqlParameter("@packageCost",Convert.ToInt32(txtPackageCost.Text)),
                                        new SqlParameter("@DurationInMonths", Convert.ToInt32(txtDuration.Text)),
                                         new SqlParameter("@Description", txtDescription.Text)
                                    
            };
                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

                dac.EnsureOpen();
                cmd.ExecuteNonQuery();
                dac.Close();


        }
}
}