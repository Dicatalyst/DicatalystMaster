using System;
using System.Web.UI;
using BAL;

public partial class Pharma_FreeListing : Page
{
    private readonly PharmaFreeListing clinicBal = new PharmaFreeListing();

    private readonly GlobalSearch loc = new GlobalSearch();

    private readonly Notify notify = new Notify();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loc.GetCountriesToDropdown(ddlcountry);
            loc.GetSatesToDropdownbycountryId(98, ddlstate);
            loc.GetcitiesByStateId(2, ddlcity);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (termsagree.Checked)
        {
            clinicBal.InsertPharmacyDetails(txtPharmaName, txtRegistationNumber, txtLicenseNumber, txtWebsiteURL,
                txtVATTAXRate, txtVATTAXNumber, txtBranches);

            clinicBal.InsertPharmacyAddress(TxtAddress, ddlcity, ddlstate, ddlcountry, txtPinCode);
        }
        else
        {
            notify.Error_Display("Please accept the terms and conditions to proceed with registration", Page);
        }
    }
}