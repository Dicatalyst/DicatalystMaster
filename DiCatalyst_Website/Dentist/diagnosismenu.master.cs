using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dentist_diagnosismenu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            if(currentPage.Contains("medicalhistory"))
                acnMedical.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("clinicalhistory"))
                acnClinical.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("odontogramFinal"))
                acnOdontogram1.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("diagnosisandpro"))
                acnDiagnosis.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("treatmentplan"))
                Treatment.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("TPNotes"))
                acnTP.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("Investigations"))
                acnInvestigations.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("xrays"))
                acnRays.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("prescriptions"))
                acnPrescriptiona.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("accounts"))
                acnAccounts.Attributes.Add("class", "btn btnActive");
            else if (currentPage.Contains("diagnosismedia"))
                acnMedia.Attributes.Add("class", "btn btnActive");
            
        }
    }
}
