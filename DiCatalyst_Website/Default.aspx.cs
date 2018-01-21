using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using AjaxControlToolkit;
using BAL;
using System.Web;

public partial class _Default : Page
{
    private readonly GlobalSearch loc = new GlobalSearch();
    private readonly Notify notify = new Notify();
    private readonly Users _usersbal = new Users();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            if ((HttpContext.Current.Session["userId"] != null && Session["userId"] as string != null))
            {
                var dt = _usersbal.GetLoginUserDetails(Session["userId"].ToString());
                ltlUsername.Text = dt.Rows[0]["fullName"].ToString();
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                notify.Information_topRight("You are already logged In", Page);
            }
            else
            {
                notify.Information_topRight("Please Sign up to start with", Page);

            }
            
            loc.GetcitiesByStateId(2, ddlCity);

            //_usersbal.GetLoginUserDetails(uniqueRandomId);
        }
    }

    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetLocalityByCity(Convert.ToInt32(ddlCity.SelectedItem.Value), ddlLocality);
    }

    //[System.Web.Script.Services.ScriptMethod()]
    //[System.Web.Services.WebMethod]
    //public static List<string> SearchCustomers(string prefixText, int count)
    //{
    //    using (SqlConnection conn = new SqlConnection())
    //    {
    //        conn.ConnectionString = ConfigurationManager
    //                .ConnectionStrings["dicatalyst"].ConnectionString;
    //        using (SqlCommand cmd = new SqlCommand())
    //        {
    //            cmd.CommandText = "select name, from speciality where " +
    //            "name like @SearchText + '%'";
    //            cmd.Parameters.AddWithValue("@SearchText", prefixText);
    //            cmd.Connection = conn;
    //            conn.Open();
    //            List<string> customers = new List<string>();
    //            using (SqlDataReader sdr = cmd.ExecuteReader())
    //            {
    //                while (sdr.Read())
    //                {
    //                    customers.Add(sdr["name"].ToString());
    //                }
    //            }
    //            conn.Close();
    //            return customers;
    //        }
    //    }
    //}

    [ScriptMethod]
    [WebMethod]
    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (var conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
            using (var cmd = new SqlCommand())
            {
                cmd.CommandText =
                    "select top 10 id as specialityid, UPPER(name) as keyword from speciality where " +
                    "keywords like '%' + @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                var customers = new List<string>();
                using (var sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        var item = AutoCompleteExtender.CreateAutoCompleteItem(sdr["keyword"].ToString(),
                            sdr["specialityid"].ToString());
                        customers.Add(item);
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }

    //[WebService(Namespace = "http://tempuri.org/")]
    //[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    //// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
    //[System.Web.Script.Services.ScriptService]
    //public class Cities : System.Web.Services.WebService
    //{
    //    [WebMethod]
    //    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //    public string[] getspeciality(string SearchText)
    //    {
    //        List<string> CityList = new List<string>();
    //        using (SqlConnection con = new SqlConnection())
    //        {
    //            con.ConnectionString = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
    //            using (SqlCommand cmd = new SqlCommand("sp_getSpecialities", con))
    //            {
    //                cmd.CommandType = CommandType.StoredProcedure;
    //                cmd.Parameters.AddWithValue("@SearchText", SearchText);

    //                cmd.Connection = con;
    //                con.Open();
    //                using (SqlDataReader dr = cmd.ExecuteReader())
    //                {
    //                    while (dr.Read())
    //                    {
    //                        CityList.Add(dr["name"].ToString());
    //                    }
    //                }
    //                con.Close();
    //            }
    //            return CityList.ToArray();
    //        }
    //    }
    //}


    //[WebMethod]
    //public static List<string> getspeciality(string name)
    //{
    //    List<string> empResult = new List<string>();
    //    using (SqlConnection con = new SqlConnection(@"Data Source=THECSS;Initial Catalog=dicatalyst;Integrated Security=True"))
    //    {
    //        using (SqlCommand cmd = new SqlCommand())
    //        {
    //            cmd.CommandText = "select Top 10 name from speciality where name LIKE ''+@SearchEmpName+'%'";
    //            cmd.Connection = con;
    //            con.Open();
    //            cmd.Parameters.AddWithValue("@SearchEmpName", name);
    //            SqlDataReader dr = cmd.ExecuteReader();
    //            while (dr.Read())
    //            {
    //                empResult.Add(dr["name"].ToString());
    //            }
    //            con.Close();
    //            return empResult;
    //        }
    //    }
    //}

    protected void lnkSearch_Click(object sender, EventArgs e)
    {
        var id = Request.Form[hfCustomerId.UniqueID];
        var name = Request.Form[txtSpeciality.UniqueID];
        //Ravi
        //var locality = ddlLocality.SelectedItem.Text;
        Session["locality"] = txtLocality.Text;
        Response.Redirect("~/SearchResult.aspx?id=" + id);
    }
    protected void lnkSignOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}