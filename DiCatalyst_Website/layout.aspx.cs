using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Web.Services;
using System.Configuration;
using System.Web.Script.Services;

public partial class layout : System.Web.UI.Page
{
    
    public string Location = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
           
           
        
        }



       
    }


    [WebMethod]
    public static plotdetails populatelayoutcontent(string toothNo)
    {
        plotdetails c = new plotdetails();
        string connect = "Data Source=sreepuuramm.db.10501631.hostedresource.com; Initial Catalog=sreepuuramm; User ID=sreepuuramm; Password='J@isriram123'";
        string query = "SELECT description, image, plotno from plots where plotno = @plotno";
        if (toothNo != null)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("plotno", toothNo);
                    conn.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            c.description = rdr["description"].ToString();
                            c.image = rdr["image"].ToString();
                            c.plotno = rdr["plotno"].ToString();
                        }
                    }
                }
            }
        }
        return c;


        //string msg = string.Empty;

        //DataSet ds = new DataSet();

        //string constr = ConfigurationManager.ConnectionStrings["luminous"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(constr))
        //{
        //    using (SqlCommand cmd = new SqlCommand("SELECT * from plots where plotno = '" + plotno + "'"))
        //    {
        //        using (SqlDataAdapter sda = new SqlDataAdapter())
        //        {
        //            cmd.Connection = con;
        //            sda.SelectCommand = cmd;
        //            using (DataTable dt = new DataTable())
        //            {
        //                sda.Fill(dt);
        //                //GridView1.DataSource = dt;
        //                //GridView1.DataBind();  

        //            }
        //        }
        //    }
        //}
        //msg = ds.Tables[0].Rows[0]["description"].ToString();

        //return msg;
        //DataTable dt = plotsbal.getplotsbyId(plotno);
        //ArrayList list = new ArrayList();

        //foreach (DataRow row in loc.getStatesToDropdown(continentId).Rows)
        //{
        //    list.Add(new State { id = Convert.ToInt32(row["id"]), state = row["state"].ToString() });
        //}

    }

    public class plotdetails
    {
        public string description { get; set; }
        public string image { get; set; }
        public string plotno { get; set; }


    }

    protected void Page_Init(object sender, EventArgs e)
    {

        // Your Code Here
    }
}