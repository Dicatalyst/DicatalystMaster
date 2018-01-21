using System;
using System.Web.UI;
using BAL;

namespace Admin
{
    public partial class Admin_GeoLocations : Page
    {
        private readonly GlobalSearch loc = new GlobalSearch();
        private userlevels ul = new userlevels();
   

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ul.GetPrivilages(5);
                loc.GetCountriesToDropdown(ddlCountry);
                loc.GetCountriesToDropdown(ddlCountry1);
                            }
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            loc.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry.SelectedItem.Value), ddlState);
        }

        protected void btnSaveCity_Click(object sender, EventArgs e)
        {
            loc.InsertCities(txtCity, ddlState);
        }

        protected void ddlCountry1_SelectedIndexChanged(object sender, EventArgs e)
        {
            loc.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry1.SelectedItem.Value), ddlState1);
        }

        protected void ddlState1_SelectedIndexChanged(object sender, EventArgs e)
        {
            loc.GetcitiesByStateId(Convert.ToInt32(ddlState1.SelectedItem.Value), ddlcity1);

        }


        protected void btnSaveLocality_Click(object sender, EventArgs e)
        {
            loc.Insertlocations(txtLocality, ddlcity1);
        }
        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            gdvCitites.DataSource = loc.getcities(Convert.ToInt32(ddlState.SelectedItem.Value), ddlcity1);
            gdvCitites.DataBind();
        }

        protected void ddlcity1_SelectedIndexChanged(object sender, EventArgs e)
        {
            gdvLocation.DataSource = loc.getLocation(Convert.ToInt32(ddlcity1.SelectedItem.Value));
            gdvLocation.DataBind();

        }
}
}