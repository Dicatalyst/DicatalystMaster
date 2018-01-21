using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;

public partial class Patient_treatmentplan : System.Web.UI.Page
{
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    private SqlCommand cmd;
    private SqlCommand cmd1;
    private SqlDataAdapter da;
    private SqlDataAdapter da1;
    private Connections dac = new Connections();
    DataTable dt;
    DataTable dt1;
    private DAL.randomUniqueNumber rn = new DAL.randomUniqueNumber();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindTreatmantPlan();
        }
    }
    protected void lnkTreatmentPlan_Click(object sender, EventArgs e)
    {
        var doctorId = Session["userId"].ToString();
        var patientId = Session["PId"].ToString();
        string InoviceId = "DC" + rn.getRandomUniqueNumber();
        foreach (GridViewRow row in gdTreatmentPlan.Rows)
        {
            Label txtToothNo = (Label)row.FindControl("txtToothNo");
            Label txtExaminationName = (Label)row.FindControl("txtExaminationName");
            TextBox txtTreatmentAdvice = (TextBox)row.FindControl("txtTreatmentAdvice");
            TextBox txtDuration = (TextBox)row.FindControl("txtDuration");
            TextBox txtFee = (TextBox)row.FindControl("txtFee");
            TextBox txtDiscount = (TextBox)row.FindControl("txtDiscount");
            //TextBox txtAmount = (TextBox)row.FindControl("txtAmount");
            TextBox txtNotestoReceptionist = (TextBox)row.FindControl("txtNotestoReceptionist");
            CheckBox chkbox = (CheckBox)row.FindControl("chkTreatmenTaken");
            int value;
            if (chkbox.Checked)
            {
                value = 1;
            }
            else
            {
                value = 0;
            }
            cmd = dac.GetCommand("sp_updateTreatmentPlan");
            SqlParameter[] par = {
                                        new SqlParameter("@doctorId", doctorId),       
                                     new SqlParameter("@patientId", patientId), 
     new SqlParameter("@toothNo", txtToothNo.Text),  
      new SqlParameter("@examinationName", txtExaminationName.Text),  
       new SqlParameter("@treatmentAdvice", txtTreatmentAdvice.Text),  
        new SqlParameter("@duration", txtDuration.Text),  
        new SqlParameter("@fee", txtFee.Text),  
        new SqlParameter("@discount", txtDiscount.Text),  
 
     new SqlParameter("@notestoReceptionist", txtNotestoReceptionist.Text),
     new SqlParameter ("@isActive", Convert.ToBoolean(value))
                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }


            dac.EnsureOpen();

            cmd.ExecuteNonQuery();

            dac.Close();

            if (chkbox.Checked)
            {

               

                cmd1 = dac.GetCommand("[sp_insertDentistAccounts]");
                SqlParameter[] par1 = {
        
         new SqlParameter("@treatmentName", txtTreatmentAdvice.Text),           
         new SqlParameter("@fee", Convert.ToInt32(txtFee.Text)), 
         new SqlParameter("@discount",Convert.ToInt32(txtDiscount.Text)),
         new SqlParameter("@totalAmount", Convert.ToInt32(txtFee.Text) - (Convert.ToInt32(txtFee.Text) * Convert.ToInt32(txtDiscount.Text) / 100)),
         new SqlParameter("@doctorId", doctorId),
         new SqlParameter("@patientId", patientId),
          new SqlParameter("@datetime", DateTime.Now),
          new SqlParameter("@invoiceId", InoviceId)
     
            };

                for (int i = 0; i < par1.Length; i++)
                {
                    cmd1.Parameters.Add(par1[i]);
                }

                dac.EnsureOpen();

                cmd1.ExecuteNonQuery();

                dac.Close();





            }

        }

        bindTreatmantPlan();
    }
    protected void bindTreatmantPlan()
    {
        //var doctorId = Session["userId"].ToString();
        var patientId = Session["p_userId"].ToString();
        dt = medical.getTreatmentPlan(DBNull.Value.ToString(), patientId);
        gdTreatmentPlan.DataSource = dt;
        gdTreatmentPlan.DataBind();
    }

}