using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;

public partial class PatientLogin : System.Web.UI.Page
{
    private readonly BAL.Notify noty = new BAL.Notify();
    private readonly BAL.Users usersbal = new BAL.Users();
    private SqlCommand cmd;
    private DataSet ds;
    private DAL.Connections dac = new Connections();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (!string.IsNullOrEmpty(Session["userId"] as string))
            //{
            //    Response.Redirect("Default.aspx");
            //}
            //else
            //{

            //}
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Convert.ToInt32(ddlModule.SelectedItem.Value) == 0 || Convert.ToInt32(ddlModule.SelectedItem.Value) == 2)
        {
            var dt = usersbal.GetLoginDetails(txtEmail, txtPassword, ddlModule);
            if (dt.Rows.Count > 0)
            {

                bool active = Convert.ToBoolean(dt.Rows[0]["isActive"].ToString());
                int userType = Convert.ToInt32(dt.Rows[0]["userType"].ToString());
                if (active == false)
                {
                    Response.Redirect("register2.aspx");
                }
                else if (true)
                {
                    if (userType == 0)
                    {
                        Session["userId"] = dt.Rows[0][1].ToString();
                        Session["userEmail"] = dt.Rows[0]["email"].ToString();
                        Response.Redirect("Packages.aspx");
                    }

                    if (userType == 2)
                    {
                        Session["P_userId"] = dt.Rows[0][1].ToString();
                        Session["P_userEmail"] = dt.Rows[0]["email"].ToString();
                        Session["userType"] = 2;   
                        Modal.Close(this);
                    }
                }
            }
            else
            {
                noty.Error_Display("Please check your login details or Activate your account by verifying your email",
              Page);
            }
        }
        else if (Convert.ToInt32(ddlModule.SelectedItem.Value) == 1)
        {
            cmd = dac.GetCommand("[sp_getReceptionist]");
            SqlParameter[] par = {
                new SqlParameter("@email", txtEmail.Text),
                 new SqlParameter("@Password", txtPassword.Text)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);

            DataSet ds1 = new DataSet();
            SqlCommand cmd1 = new SqlCommand();

            cmd1 = dac.GetCommand("[sp_checkDoctor]");
            SqlParameter[] par1 = {
                new SqlParameter("@doctorId", ds.Tables[0].Rows[0]["doctorId"].ToString())
            };

            for (int i = 0; i < par1.Length; i++)
            {
                cmd1.Parameters.Add(par1[i]);
            }
            ds1 = dac.ExecuteNonQuery_selectQuery(cmd1);

            if (ds.Tables[0].Rows.Count > 0 && ds1.Tables[0].Rows.Count > 0)
            {
                Session["userType"] = 1;
                Session["receptionId"] = ds.Tables[0].Rows[0]["id"].ToString();
                Session["receptionDoctorId"] = ds.Tables[0].Rows[0]["doctorId"].ToString();
                Session["userId"] = ds.Tables[0].Rows[0]["doctorId"].ToString();
                Response.Redirect("~/dentist/Appointments.aspx");
            }
            else
            {
                noty.Error_Display("Please check your login details or Activate your account by verifying your email",
                              Page);
            }
        }
        else
        {
            noty.Error_Display("Please check your login details or Activate your account by verifying your email",
                Page);
        }
    }
}