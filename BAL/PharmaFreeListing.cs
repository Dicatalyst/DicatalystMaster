using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;


namespace BAL
{
    public class PharmaFreeListing
    {
        private DAL.globalSearch _loc = new DAL.globalSearch();
        private DAL.PharmaFreeListing _clinicBal = new DAL.PharmaFreeListing();
        private DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
        public void InsertPharmacyDetails(TextBox pharmacyName, TextBox regNum, TextBox licenseNum, TextBox websiteUrl, TextBox vatTaxRate, TextBox vatTaxNum, TextBox branches)
           
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _clinicBal.insertPharmacyDetails(randomId, pharmacyName.Text, regNum.Text, licenseNum.Text, websiteUrl.Text, vatTaxRate.Text, vatTaxNum.Text, branches.Text);
        }

        public void InsertPharmacyAddress(TextBox address, DropDownList city, DropDownList state, DropDownList country, TextBox zipCode)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int id = _clinicBal.insertPharmacyAddress(randomId, address.Text, Convert.ToInt32(city.SelectedItem.Value), Convert.ToInt32(state.SelectedItem.Value), Convert.ToInt32(country.SelectedItem.Value), zipCode.Text);
        }


    }
}
