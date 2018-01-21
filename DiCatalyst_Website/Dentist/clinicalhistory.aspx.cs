using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
using System.Data.SqlClient;

public partial class Dentist_clinicalhistory : System.Web.UI.Page
{
    private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DAL.Connections dac = new Connections();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            panyes.Visible = false;
            Panel1.Visible = false;

            string patientId = Session["PId"].ToString();
            string doctorId = Session["userId"].ToString();

            cmd = dac.GetCommand("[sp_getClinicalHistory]");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtWeight.Text = ds.Tables[0].Rows[0]["weight"].ToString();
                txtBP.Text = ds.Tables[0].Rows[0]["bp"].ToString();
                txtTemperature.Text = ds.Tables[0].Rows[0]["temperature"].ToString();
                txtPulse.Text = ds.Tables[0].Rows[0]["pulse"].ToString();
                txtOralHabits.Text = ds.Tables[0].Rows[0]["oralHabits"].ToString();
                txtCurrentMedications.Text = ds.Tables[0].Rows[0]["currentMedications"].ToString();
                txtAllergies.Text = ds.Tables[0].Rows[0]["allergies"].ToString();
            }
            getclinicalhistory2();
            if (radBleeding.SelectedValue == "0")
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
            if (radpalpable.SelectedValue == "0")
            {
                panyes.Visible = true;
            }
            else
            {
                panyes.Visible = false;
            }
            // getclinicalhistory3();
        }
    }
    protected void clinicalHistory_Click(object sender, EventArgs e)
    {
        string patientId = Session["PId"].ToString();
        string doctorId = Session["userId"].ToString();
        int basicClinicalHistoryId = 1;

        string chktmjvalue = "";
        foreach (ListItem ls in chktmj.Items)
        {
            if (ls.Selected)
            {
                chktmjvalue = chktmjvalue + "," + ls.Text;
            }
        }



        string chkrightvalue = "";
        foreach (ListItem ls in chkright.Items)
        {
            if (ls.Selected)
            {
                chkrightvalue = chkrightvalue + "," + ls.Text;
            }
        }


        string chkleftvalue = "";
        foreach (ListItem ls in chkleft.Items)
        {
            if (ls.Selected)
            {
                chkleftvalue = chkleftvalue + "," + ls.Text;
            }
        }


        string chkdeviationvalue = "";
        foreach (ListItem ls in chkdeviation.Items)
        {
            if (ls.Selected)
            {
                chkdeviationvalue = chkdeviationvalue + "," + ls.Text;
            }
        }


        medical.insertBasicInfoClinicalHistory(doctorId, patientId, txtWeight, txtBP, txtTemperature, txtPulse, txtOralHabits, txtCurrentMedications, txtAllergies);


        medical.insertIntraOralExamination(basicClinicalHistoryId, txtPharynx, txtTonsils, txtSoftPalate, txtHardPalate, txtTongue, txtFloorOfMouth, txtBuccalMucosa,
            txtLipsSkin, radOral, radCalculus, radPlaque, radCervical, radBleeding, bleedingOnProbingComments, radpalpable, txtPalpableLymphNodeComment, chktmjvalue, chkrightvalue, chkleftvalue, txtMuscles, chkdeviationvalue, doctorId, patientId);

        // medical.insertExtraOralExaminationClinicalHistory(txtTooth.Text, Convert.ToDateTime(txtDatePlaced.Text), txtcondition3.Text, doctorId, patientId);

    }
    public void getclinicalhistory2()
    {
        string patientId = Session["PId"].ToString();
        string doctorId = Session["userId"].ToString();

        cmd = dac.GetCommand("[sp_getClinicalHistory2]");
        SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }
        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtPharynx.Text = ds.Tables[0].Rows[0]["pharynx"].ToString();
            txtTonsils.Text = ds.Tables[0].Rows[0]["tonsils"].ToString();
            txtSoftPalate.Text = ds.Tables[0].Rows[0]["softPalate"].ToString();
            txtHardPalate.Text = ds.Tables[0].Rows[0]["hardPalate"].ToString();
            txtTongue.Text = ds.Tables[0].Rows[0]["tongue"].ToString();
            txtFloorOfMouth.Text = ds.Tables[0].Rows[0]["floorOfMouth"].ToString();
            txtBuccalMucosa.Text = ds.Tables[0].Rows[0]["buccalMucosa"].ToString();
            txtLipsSkin.Text = ds.Tables[0].Rows[0]["lipsSkin"].ToString();
            radOral.SelectedValue = ds.Tables[0].Rows[0]["oralHygiene"].ToString();
            radCalculus.SelectedValue = ds.Tables[0].Rows[0]["calculus"].ToString();
            radPlaque.SelectedValue = ds.Tables[0].Rows[0]["plaque"].ToString();
            radCervical.SelectedValue = ds.Tables[0].Rows[0]["cervicalBleeding"].ToString();
            radBleeding.SelectedValue = ds.Tables[0].Rows[0]["bleedingOnProbing"].ToString();
            radpalpable.SelectedValue = ds.Tables[0].Rows[0]["palpable"].ToString();
            if (radpalpable.SelectedValue == "0")
            {
                panyes.Visible = true;
            }
            else
            {
                panyes.Visible = false;
            }
            txtPalpableLymphNodeComment.Text = ds.Tables[0].Rows[0]["palpableComments"].ToString();
            //chktmj.SelectedValue = ds.Tables[0].Rows[0]["tmj"].ToString();
            //chkright.SelectedValue = ds.Tables[0].Rows[0]["tdpRight"].ToString();
            //chkleft.SelectedValue = ds.Tables[0].Rows[0]["tdpLeft"].ToString();
            txtMuscles.Text = ds.Tables[0].Rows[0]["tdpMuscles"].ToString();

            bleedingOnProbingComments.Text = ds.Tables[0].Rows[0]["bleedingOnProbingComments"].ToString(); 
            //chkdeviation.SelectedValue = ds.Tables[0].Rows[0]["tdpDOC"].ToString();


            assigncheckboxes(ds.Tables[0].Rows[0]["tmj"].ToString(), chktmj);
            assigncheckboxes(ds.Tables[0].Rows[0]["tdpRight"].ToString(), chkright);
            assigncheckboxes(ds.Tables[0].Rows[0]["tdpLeft"].ToString(), chkleft);
            assigncheckboxes(ds.Tables[0].Rows[0]["tdpDOC"].ToString(), chkdeviation);

        }

    }

    public void assigncheckboxes(string stringChk, CheckBoxList chekboxl)
    {

        string str = null;
        string[] strArr = null;
        int count = 0;
        str = stringChk;
        char[] splitchar = { ',' };
        strArr = str.Split(splitchar);

        foreach (string s in strArr)
        {
            foreach (ListItem item in chekboxl.Items)
            {
                if (item.Value == s.Trim())
                {
                    item.Selected = true;
                }
            }

        }
    }

    //public void getclinicalhistory3()
    //{
    //    string patientId = Session["PId"].ToString();
    //    string doctorId = Session["userId"].ToString();

    //    cmd = dac.GetCommand("[sp_getClinicalHistory3]");
    //    SqlParameter[] par = {
    //                                 new SqlParameter("@doctorId", doctorId),
    //                                 new SqlParameter("@patientId", patientId)
    //                             };

    //    for (int i = 0; i < par.Length; i++)
    //    {
    //        cmd.Parameters.Add(par[i]);
    //    }
    //    ds = dac.ExecuteNonQuery_selectQuery(cmd);
    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        txtTooth.Text = ds.Tables[0].Rows[0]["toothNumber"].ToString();
    //        txtDatePlaced.Text = ds.Tables[0].Rows[0]["dateplace"].ToString();
    //        txtcondition3.Text = ds.Tables[0].Rows[0]["condition"].ToString();
    //    }
    //}
    protected void radpalpable_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radpalpable.SelectedValue == "0")
        {
            panyes.Visible = true;
        }
        else
        {
            panyes.Visible = false;
        }

    }
    protected void radBleeding_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radBleeding.SelectedValue == "0")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }

    }
}