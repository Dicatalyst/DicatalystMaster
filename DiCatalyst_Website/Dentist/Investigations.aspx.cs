using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;
using System.Web.Services;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;


public partial class Dentist_Investigations : System.Web.UI.Page
{
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    DataTable dt;
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private Connections dac = new Connections();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindInvestigation();
            GridViewHelper helper = new GridViewHelper(this.gdInvestigation);
            helper.RegisterGroup("datetime", true, true);
            helper.GroupHeader += new GroupEvent(helper_GroupHeader);
            helper.ApplyGroupSort();
        }
    }

    protected void gdInvestigation_Sorting(object sender, GridViewSortEventArgs e)
    {

        gdInvestigation.DataBind();

    }
    

    private void helper_GroupHeader(string groupName, object[] values, GridViewRow row)
    {
        if (groupName == "datetime")
        {
            row.BackColor = Color.DodgerBlue;
            row.ForeColor = Color.White;
            row.Cells[0].Text = "&nbsp;&nbsp;" + row.Cells[0].Text;
        }
        //else if (groupName == "ShipName")
        //{
        //    row.BackColor = Color.FromArgb(236, 236, 236);
        //    row.Cells[0].Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + row.Cells[0].Text;
        //}
    }
    //protected void gdInvestigation_RowCommand(object sender, GridViewCommandEventArgs e)
    //{


    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdInvestigation.PageSize;
    //        var row = gdInvestigation.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        medical.deleteInvestigation(Convert.ToInt32(lblId.Text));
    //        bindInvestigation();
    //    }


    //}
   

    protected void btnInvestigation_Click(object sender, EventArgs e)
    {

        string patientId = Session["PId"].ToString();
        string doctorId = Session["userId"].ToString();
        cmd = dac.GetCommand("sp_insertInvestigation");
        SqlParameter[] par = {
                                           new SqlParameter("@patientId", patientId),
                                               new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@investigationName", txtInvestigationName.Text),
                                     new SqlParameter("datetime", DateTime.Now)
                                   
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dac.EnsureOpen();
        cmd.ExecuteNonQuery();
        dac.Close();
        //medical.insertInvestigation(patientId, doctorId, txtInvestgationcode, txtInvestigationName);

        bindInvestigation();
        GridViewHelper helper = new GridViewHelper(this.gdInvestigation);
        helper.RegisterGroup("datetime", true, true);
        helper.GroupHeader += new GroupEvent(helper_GroupHeader);
        helper.ApplyGroupSort();
        Response.Redirect(Request.RawUrl);

    }
    
    protected void bindInvestigation()
    {
        string patientId = Session["PId"].ToString();
        string doctorId = Session["userId"].ToString();
        dt = medical.getInvestigation(doctorId, patientId);
        gdInvestigation.DataSource = dt;
        gdInvestigation.DataBind();
    }


    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetInvestigations(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["dicatalyst"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select testName from labTest where " +
                "testName like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["testName"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
}