using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BAL;

public partial class Dentist_PHR : System.Web.UI.Page
{
    private readonly BAL.dentistDiagnosis med=new dentistDiagnosis();
    private DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        //dt = med.getMedicalHistory();
        //Repeater1.DataSource = dt;
        //Repeater1.DataBind();


      //  dt = med.getInvestigation();
        Repeater2.DataSource = dt;
        Repeater2.DataBind();




        //dt = med.getDiagnosisPrognosis();
        //Repeater3.DataSource = dt;
        //Repeater3.DataBind();



      //  dt = med.getTreatmentPlan();
        Repeater4.DataSource = dt;
        Repeater4.DataBind();

       // dt = med.getClinicalHistory();
        ClinicalHistory.DataSource = dt;
        ClinicalHistory.DataBind();
    }
}