using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class websiteTemplate_Default : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd3 = new SqlCommand();
    DAL.Connections dac = new DAL.Connections();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                //string publicURL = Request.QueryString["wp"].ToString();
            //    string temp = publicURL.Trim();
            //    cmd3 = dac.GetCommand("sp_getwebdoctoridbypublicURL");
            //    SqlParameter[] par4 = {
            //    new SqlParameter("@publicURL", temp)
            //};
            //    for (int i = 0; i < par4.Length; i++)
            //    {
            //        cmd3.Parameters.Add(par4[i]);
            //    }
            //    ds3 = dac.ExecuteNonQuery_selectQuery(cmd3);
                


            //    string doctorId = ds3.Tables[0].Rows[0][0].ToString();
                string doctorId = Session["userId"].ToString();
                string email = "";

                cmd = dac.GetCommand("[sp_getWebPageHeader]");
                SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };
                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Image1.ImageUrl = ds.Tables[0].Rows[0]["logo"].ToString();
                    ltlTitle.Text = ds.Tables[0].Rows[0]["Title"].ToString();
                    Literal2.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                }
                cmd1 = dac.GetCommand("[sp_getWebbanner]");
                SqlParameter[] par1 = {
                    new SqlParameter("@doctorId", doctorId)
                };
                for (int i = 0; i < par1.Length; i++)
                {
                    cmd1.Parameters.Add(par1[i]);
                }
                ds1 = dac.ExecuteNonQuery_selectQuery(cmd1);
                DataListPortfolio.DataSource = ds1;
                DataListPortfolio.DataBind();

                cmd2 = dac.GetCommand("[sp_getWebProfile]");
                SqlParameter[] par2 = {
                    new SqlParameter("@doctorId", doctorId)
                };
                for (int i = 0; i < par2.Length; i++)
                {
                    cmd2.Parameters.Add(par2[i]);
                }
                ds2 = dac.ExecuteNonQuery_selectQuery(cmd2);

                ltlAbout.Text = ds2.Tables[0].Rows[0]["about"].ToString();
                Literal4.Text = ds2.Tables[0].Rows[0]["email"].ToString();
                Literal3.Text = ds2.Tables[0].Rows[0]["phone"].ToString();

            }
        }

    }
  


}