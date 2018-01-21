using System;
using System.Web.UI;
using BAL;

public partial class Hospital_FreeListing : Page
{
    private readonly HospitalFreeListing hosBAL = new HospitalFreeListing();
    private readonly Notify notify = new Notify();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (termsagree.Checked)
        {
            hosBAL.InsertHospitalDetails(txtHospitalName, txtSpecialities, txtWebsites, txttitle, txtemail, txtreg,
                txtBranches, txtAboutUs);
            hosBAL.InsertDoctorDetails(txtDoctorName, txtQualification, txtSpecialization, txtConsultationType,
                txtExperience, txtTimings, FileUpload1);
            hosBAL.InsertContactDetails(txtAddress, txttelephone, txtpincode);
        }
        else
        {
            notify.Error_Display("Please accept the terms and conditions to proceed with registration", Page);
        }
    }
}