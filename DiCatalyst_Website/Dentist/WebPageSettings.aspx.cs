using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using DAL;

public partial class Dentist_WebPageSettings : Page
{
    private SqlCommand cmd;
    private DataSet ds;
    private DAL.Connections dac = new Connections();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            getWebHeader();
            getwebpagebanner();
            getwebpageProfile();
            getwebpagePublicURL();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        savewebpageheader();
    }
    public void savewebpageheader()
    {
        string doctorId = Session["userId"].ToString();

       

          var serverPath = "";

            if (FileUpload1.HasFile)
            {
                var filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Dentist/Files/") + filename);
                serverPath = "~/Dentist/Files/" + filename;
            }


            cmd = dac.GetCommand("[sp_insertwebpageheader]");
            SqlParameter[] par = {
                                     new SqlParameter("@Title",txtTitle.Text),
                                     new SqlParameter("@Address",txtAddress.Text),
                                     new SqlParameter("@MapCode",txtMapCode.Text),
                                     new SqlParameter("@logo",serverPath),
                new SqlParameter("@doctorId", doctorId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.ExecuteNonQuery(cmd);

            //using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
            //{
            //    con.Open();

            //    SqlCommand cmd1 = new SqlCommand("INSERT INTO [webpageHeader] (Title, Address, MapCode, logo, doctorId) VALUES(@Title, @Address, @MapCode, @logo, @doctorId)", con);
            //    cmd1.Parameters.AddWithValue("@Title", txtTitle.Text);
            //    cmd1.Parameters.AddWithValue("@Address", txtAddress.Text);
            //    cmd1.Parameters.AddWithValue("@MapCode", txtMapCode.Text);
            //    cmd1.Parameters.AddWithValue("@logo", serverPath);
            //    cmd1.Parameters.AddWithValue("@doctorId", doctorId);
            //    cmd1.ExecuteNonQuery();

            //}
        
    }
    private void getWebHeader()
    {
        string doctorId = Session["userId"].ToString();

        cmd = dac.GetCommand("[sp_getgetwebpageheader]");
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
            string img = ds.Tables[0].Rows[0]["logo"].ToString();
            Image1.ImageUrl = img;
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        else
        {
            Image1.ImageUrl = "../images/logo_dummy.png";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        var serverPath = "";
        if (FileUpload2.HasFile)
        {
            var filename = Path.GetFileName(FileUpload2.FileName);
            FileUpload2.SaveAs(Server.MapPath("../Dentist/Files/") + filename);
            serverPath = "../Dentist/Files/" + filename;
        }
        string doctorId = Session["userId"].ToString();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [webpagebanners] (caption, banner, doctorId) VALUES(@caption, @banner, @doctorId)", con);
            cmd.Parameters.AddWithValue("@caption", txtCaption.Text);
            cmd.Parameters.AddWithValue("@banner", serverPath);
            cmd.Parameters.AddWithValue("@doctorId", doctorId);
            cmd.ExecuteNonQuery();
        }
    }

    protected void getwebpagebanner()
    {       
        string doctorId = Session["userId"].ToString();
        cmd = dac.GetCommand("[sp_getWebbanner]");
        SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };
        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }
        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void getwebpageProfile()
    {
        string doctorId = Session["userId"].ToString();
        cmd = dac.GetCommand("[sp_getwebpageprofile]");
        SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };
        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }
        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        GridView3.DataSource = ds;
        GridView3.DataBind();
    }
    protected void getwebpagePublicURL()
    {
        string doctorId = Session["userId"].ToString();
        cmd = dac.GetCommand("[sp_getwebPublicURL]");
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
            txtpublicurl.Text = ds.Tables[0].Rows[0]["publicURL"].ToString();
        }
    }
   

    protected void Button2_Click(object sender, EventArgs e)
    {
       
        string doctorId = Session["userId"].ToString();
        cmd = dac.GetCommand("[sp_getwebpageprofile]");
        SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };
        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }
        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        if (ds.Tables[0].Rows.Count == 0)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [webpageprofile] (email, phone, hotline, about, doctorId) VALUES(@email, @phone, @hotline, @about, @doctorId)", con);
                cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd1.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmd1.Parameters.AddWithValue("@hotline", txtHotline.Text);
                cmd1.Parameters.AddWithValue("@about", txtAbout.Text);
                cmd1.Parameters.AddWithValue("@doctorId", doctorId);
                cmd1.ExecuteNonQuery();
            }
        }     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string doctorId = Session["userId"].ToString();
        cmd = dac.GetCommand("[sp_getSocialLinks]");
        SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };
        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }
        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        if (ds.Tables[0].Rows.Count == 0)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [webpagesociallinks] (facebook, google, twitter, linkedIn, youtube, doctorId) VALUES(@facebook, @google, @twitter, @linkedIn, @youtube, @doctorId)", con);
                cmd1.Parameters.AddWithValue("@facebook", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@google", Google.Text);
                cmd1.Parameters.AddWithValue("@twitter", txtTwitter.Text);
                cmd1.Parameters.AddWithValue("@linkedIn", txtLinkedIn.Text);
                cmd1.Parameters.AddWithValue("@youtube", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@doctorId", doctorId);
                cmd1.ExecuteNonQuery();
            }
        }       
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string doctorId = Session["userId"].ToString();
        cmd = dac.GetCommand("[sp_insertwebPublicURL]");
        SqlParameter[] par = {
                                    
                new SqlParameter("@doctorId", doctorId),
                new SqlParameter("@publicURL", txtpublicurl.Text)
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }
        dac.ExecuteNonQuery(cmd);
    }
}