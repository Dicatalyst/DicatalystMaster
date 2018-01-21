using System;
using System.Web.UI;
using BAL;

public partial class Clinic_FreeListing : Page
{
    private readonly ClinicFreeList clinicBal = new ClinicFreeList();

    private readonly GlobalSearch loc = new GlobalSearch();

    private readonly Notify notify = new Notify();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loc.GetCountriesToDropdown(ddlSelectCountry);
            loc.GetSatesToDropdownbycountryId(98, ddlSelectState);
            loc.GetcitiesByStateId(2, ddlSelectCity);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (termsagree.Checked)
        {
            clinicBal.InsertClinicDetails(txtClinicName, txtClinicSpeciality, txttitle, txtWebsites, txtTagLine,
                txtEmail, txtmobile, txtClinicFoundedinYear, txtRegno);
            clinicBal.InsertClinicAddress(TxtAddress, ddlSelectCity, ddlSelectState, ddlSelectCountry, txtzipcode,
                txttelephone);
            clinicBal.InsertClinicServices(txtServices, txtFacilitiesAvailable, txtVaccinations);
            //clinicBal.insertclinicWorkingHours(txtServices, txtFacilitiesAvailable, txtVaccinations);
            //clinicBal.insertClinicUpload(FileUpload2, FileUpload1);
        }
        else
        {
            notify.Error_Display("Please accept the terms and conditions to proceed with registration", Page);
        }
    }
}