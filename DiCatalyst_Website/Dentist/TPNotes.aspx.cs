using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;
using System.Drawing;

public partial class Dentist_TPNotes : System.Web.UI.Page
{
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private Connections dac = new Connections();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getTPNotes();
            GridViewHelper helper = new GridViewHelper(this.gdTPNotes);
            helper.RegisterGroup("startDateNotes", true, true);
            helper.GroupHeader += new GroupEvent(helper_GroupHeader);
            helper.ApplyGroupSort();
        }

    }
    private void helper_GroupHeader(string groupName, object[] values, GridViewRow row)
    {
        if (groupName == "startDateNotes")
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
    protected void btnTpNotes_Click(object sender, EventArgs e)
    {

        var doctorId = Session["userId"].ToString();
        var patientId = Session["PId"].ToString();


        //DateTime startdate = Convert.ToDateTime(txtStartDateNotes.Text);
        //DateTime nextvisitdate = Convert.ToDateTime(txtEndDateNotes.Text);

        cmd = dac.GetCommand("sp_insertTPNotes");
        SqlParameter[] par = {
         new SqlParameter("@doctorId", doctorId),       
         new SqlParameter("@patientId", patientId), 
         new SqlParameter("@toothNo", txtToothNoNotes.Text),           
         new SqlParameter("@treatmentNotes", txtTreatmentNotes.Text), 
         new SqlParameter("@observationNotes", txtObservationNotes.Text),
         new SqlParameter("@anesthesiaNotes", txtAnesthesiaNotes.Text),
         new SqlParameter("@newMedicationNotes", txtNewMedicationNotes.Text),
         new SqlParameter("@adrenalineNotes", txtAdrenalineNotes.Text),
         new SqlParameter("@startDateNotes", DateTime.Now),
             new SqlParameter("@endDateNotes", txtEndDateNotes.Text),
         new SqlParameter("@purpose", txtpurpose.Text),
         //new SqlParameter("@discountNotes", txtDiscountNotes.Text),
         //new SqlParameter("@amountNotes", txtAmountNotes.Text),
         new SqlParameter("@notestoReceptionistNotes", txtnotestoReceptionistNotes.Text) 
                                   
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }


        dac.EnsureOpen();

        cmd.ExecuteNonQuery();

        dac.Close();
        gdTPNotes.DataBind();
        //   medical.insertTPNotes(patientId, doctorId, txtDate1, txtToothNo1, txtTreatment1, txtFee2, txtDiscount2, txtAmount1, txtNextVisitDate, txtNotes1);
        //  bindTPNotes();
        Response.Redirect(Request.RawUrl);

    }

    private void getTPNotes()
    {
        DataSet dstooth = new DataSet();
        cmd = dac.GetCommand("[sp_getTreatmentPlanForTPNotes]");
        SqlParameter[] par = {
                new SqlParameter("@doctorId", Session["userId"].ToString()),
                new SqlParameter("@patientId", Session["PId"].ToString())
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dstooth = dac.ExecuteNonQuery_selectQuery(cmd);

        GridView1.DataSource = dstooth;
        GridView1.DataBind();
        //return dstooth;
    }
}