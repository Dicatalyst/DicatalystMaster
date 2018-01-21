using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;


namespace BAL
{
    public class advertisements
    {
        private readonly DAL.globalSearch _loc = new DAL.globalSearch();
        private readonly DAL.advertisements ad = new DAL.advertisements();
        public void insertGlobalAdveritsement(TextBox adTitle,string serverPath,TextBox customerName,TextBox customerMobile,TextBox customerAddress,TextBox customerEmail,TextBox customerAmountPaid,TextBox adDuration,TextBox adStartDate,bool isActive)
        {

            ad.insertGlobalAdveritsement(adTitle.Text,serverPath,customerName.Text,customerMobile.Text,customerAddress.Text,customerEmail.Text,Convert.ToInt32(customerAmountPaid.Text),Convert.ToInt32(adDuration.Text),Convert.ToDateTime(adStartDate.Text),false);

        }
        public void insertSpecialityLocationSpecificAd(DropDownList specialityId, DropDownList countryId, DropDownList stateId, DropDownList cityId, DropDownList localityId, TextBox adTitle, string serverPath1, TextBox customerName, TextBox customerMobile, TextBox customerAddress, TextBox customerEmail, TextBox customerAmountPaid, TextBox adDuration, TextBox adStartDate, bool isActive)
        {

            ad.insertSpecialityLocationSpecificAd(Convert.ToInt32(specialityId.SelectedItem.Value), Convert.ToInt32(countryId.SelectedItem.Value), Convert.ToInt32(stateId.SelectedItem.Value), Convert.ToInt32(cityId.SelectedItem.Value), Convert.ToInt32(localityId.SelectedItem.Value), adTitle.Text, serverPath1, customerName.Text, customerMobile.Text, customerAddress.Text, customerEmail.Text, Convert.ToInt32(customerAmountPaid.Text), Convert.ToInt32(adDuration.Text), Convert.ToDateTime(adStartDate.Text), false);

        }


        public DataTable getGlobalAdvertisements()
        {

            DataTable dt = ad.getGlobalAdvertisements();
            return dt;
        }
        public void deleteGlobalAdvertisement(int id)
        {
            ad.deleteGlobalAdvertisement(id);



        }
        public DataTable getLocationSpecificAdvertisements()
        {

            DataTable dt = ad.getLocationSpecificAdvertisements();
            return dt;
        }
        public void deleteLocationSpecificAdvertisements(int id)
        {
            ad.deleteLocationSpecificAdvertisements(id);



        }
    
        

    }
}
