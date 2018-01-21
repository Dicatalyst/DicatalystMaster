using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dentist_medicalhistory : System.Web.UI.Page
{
    private readonly BAL.appointments _app = new BAL.appointments();
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    private SqlCommand cmd;
    private SqlDataAdapter da;

    private Connections dac = new Connections();
    DataTable dt;

    private SqlCommand cmd1;
    private SqlDataAdapter da1;
    DataTable dt1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Session["userId"].ToString()))
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;    
                Panel7.Visible = false;
                string patientId = Session["PId"].ToString();
                medicalhistory(patientId);

                var doctorId = Session["userId"].ToString();
                DataSet ds = new DataSet();
                cmd = dac.GetCommand("[sp_getlogoofClinic]");
                SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
                
               
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                Image1.ImageUrl = ds.Tables[0].Rows[0]["picture"].ToString();


               
                DataSet ds1 = new DataSet();
                cmd1 = dac.GetCommand("[sp_getaddressofClinic]");
                SqlParameter[] par1 = {
                new SqlParameter("@doctorId", doctorId)
                
               
            };

                for (int i = 0; i < par1.Length; i++)
                {
                    cmd1.Parameters.Add(par1[i]);
                }
                if (ds1 != null && ds1.Tables.Count > 0 && ds1.Tables[0].Rows.Count > 0) //Added by Ram
                { 
                    ds1 = dac.ExecuteNonQuery_selectQuery(cmd1);
                    Literal1.Text = ds1.Tables[0].Rows[0]["practiceName"].ToString();
                    Literal2.Text = ds1.Tables[0].Rows[0]["address"].ToString();
                    Literal3.Text = ds1.Tables[0].Rows[0]["street"].ToString() + ", " + ds1.Tables[0].Rows[0]["zipCode"].ToString();
                    Literal4.Text = ds1.Tables[0].Rows[0]["website"].ToString();
                }
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }
    }

    protected void medicalhistory(string patientId)
    {
        DataTable dt = medical.getMedicalHistory(patientId);
        foreach (DataRow dr in dt.Rows)
        {
            string temp = "";
            if (Convert.ToInt32(dr["questionId"]) == 1)
            
            {
                temp = dr["answer"].ToString();
                if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue1.SelectedValue = temp;
                txtQue1.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue1.SelectedItem.Value) == 0)
                {
                    Panel1.Visible = true;
                }
                else
                {
                    Panel1.Visible = false;
                }
            }
            if (Convert.ToInt32(dr["questionId"]) == 2)
            {
                temp = dr["answer"].ToString();
                if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue2.SelectedValue = temp;
                txtQue2.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue2.SelectedItem.Value) == 0)
                {
                    Panel2.Visible = true;
                }
                else
                {
                    Panel2.Visible = false;
                }
            }
            if (Convert.ToInt32(dr["questionId"]) == 3)
            {
                temp = dr["answer"].ToString();
                if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue3.SelectedValue = temp;
                txtQue3.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue3.SelectedItem.Value) == 0)
                {
                    Panel3.Visible = true;
                }
                else
                {
                    Panel3.Visible = false;
                }
            }
            if (Convert.ToInt32(dr["questionId"]) == 4)
            {
                temp = dr["answer"].ToString();
                if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue4.SelectedValue = temp;
                txtQue4.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue4.SelectedItem.Value) == 0)
                {
                    Panel4.Visible = true;
                }
                else
                {
                    Panel4.Visible = false;
                }
            }
            if (Convert.ToInt32(dr["questionId"]) == 5)
            {
                temp = dr["answer"].ToString();
                if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue5.SelectedValue = temp;
                txtQue5.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue5.SelectedItem.Value) == 0)
                {
                    Panel5.Visible = true;
                }
                else
                {
                    Panel5.Visible = false;
                }
            }
            if (Convert.ToInt32(dr["questionId"]) == 6)
            {
                temp = dr["answer"].ToString();
                if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue6.SelectedValue = temp;
                txtQue6.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue6.SelectedItem.Value) == 0)
                {
                    Panel6.Visible = true;
                }
                else
                {
                    Panel6.Visible = false;
                }
            }
            if (Convert.ToInt32(dr["questionId"]) == 7)
            {
                 temp = dr["answer"].ToString();
                 if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue7.SelectedValue = temp;
                //txtQue7.Text = dr["qusComments"].ToString();
                //if (Convert.ToInt32(rdlQue7.SelectedItem.Value) == 0)
                //{
                //    Panel1.Visible = true;
                //}
                //else
                //{
                //    Panel1.Visible = false;
                //}
                //rdlQue7.SelectedValue =dr["answer"].ToString();
                
            }
            if (Convert.ToInt32(dr["questionId"]) == 8)
            {
                 temp = dr["answer"].ToString();
                 if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue8.SelectedValue = temp;
                txtQue7.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue8.SelectedItem.Value) == 0)
                {
                    Panel7.Visible = true;
                }
                else
                {
                    Panel7.Visible = false;
                }
                rdlQue8.SelectedValue = dr["answer"].ToString();
               
            }
            //RAVI
            if (Convert.ToInt32(dr["questionId"]) == 9)
            {
                 temp = dr["answer"].ToString();
                 if (temp == "False")
                {
                    temp = "0";
                }
                else
                {
                    temp = "1";
                }
                rdlQue9.SelectedValue = temp;
                txtQue8.Text = dr["qusComments"].ToString();
                if (Convert.ToInt32(rdlQue9.SelectedItem.Value) == 0)
                {
                    Panel8.Visible = true;
                }
                else
                {
                    Panel8.Visible = false;
                }
                rdlQue9.SelectedValue = dr["answer"].ToString();

            }
        }
    }


    protected void btnMedical_Click(object sender, EventArgs e)
    {
        //string uniqueUserId ;
        //int questionId;
        //Session["userId"] = uniqueUserId;

        string patientId = Session["PId"].ToString();
        //string doctorId = Session["userId"].ToString();
        medical.insertMedicalHistory(1, rdlQue1, txtQue1.Text, patientId);
        medical.insertMedicalHistory(2, rdlQue2, txtQue2.Text, patientId);
        medical.insertMedicalHistory(3, rdlQue3, txtQue3.Text, patientId);
        medical.insertMedicalHistory(4, rdlQue4, txtQue4.Text, patientId);
        medical.insertMedicalHistory(5, rdlQue5, txtQue5.Text, patientId);
        medical.insertMedicalHistory(6, rdlQue6, txtQue6.Text,  patientId);
        medical.insertMedicalHistory(7, rdlQue7, "",  patientId);
        medical.insertMedicalHistory(8, rdlQue8, txtQue7.Text,  patientId);
        medical.insertMedicalHistory(9, rdlQue9, txtQue8.Text,  patientId);
        Response.Redirect(Request.RawUrl);
    }
    protected void rdlQue1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue1.SelectedItem.Value) == 0)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
    protected void rdlQue2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue2.SelectedItem.Value) == 0)
        {
            Panel2.Visible = true;
        }
        else
        {
            Panel2.Visible = false;
        }
    }
    protected void rdlQue3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue3.SelectedItem.Value) == 0)
        {
            Panel3.Visible = true;
        }
        else
        {
            Panel3.Visible = false;
        }
    }
    protected void rdlQue4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue4.SelectedItem.Value) == 0)
        {
            Panel4.Visible = true;
        }
        else
        {
            Panel4.Visible = false;
        }
    }
    protected void rdlQue5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue5.SelectedItem.Value) == 0)
        {
            Panel5.Visible = true;
        }
        else
        {
            Panel5.Visible = false;
        }
    }
    protected void rdlQue6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue6.SelectedItem.Value) == 0)
        {
            Panel6.Visible = true;
        }
        else
        {
            Panel6.Visible = false;
        }
    }
    protected void rdlQue8_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue8.SelectedItem.Value) == 0)
        {
            Panel7.Visible = true;
        }
        else
        {
            Panel7.Visible = false;
        } 
    }

    protected void rdlQue9_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(rdlQue9.SelectedItem.Value) == 0)
        {
            Panel8.Visible = true;
        }
        else
        {
            Panel8.Visible = false;
        }
    }
}