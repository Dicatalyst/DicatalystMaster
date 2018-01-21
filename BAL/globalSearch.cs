using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace BAL
{
   public class GlobalSearch
    {
       private readonly DAL.globalSearch _loc = new DAL.globalSearch();
       public void GetCountriesToDropdown(DropDownList ddlCountries)
       {
           ddlCountries.DataSource = _loc.getCountries();
           ddlCountries.DataTextField = "name";
           ddlCountries.DataValueField = "id_countries";
           ddlCountries.DataBind();
           ddlCountries.Items.Insert(0, new ListItem("--Select Country--", "0"));
       }

       public void GetSatesToDropdownbycountryId(int countryId, DropDownList ddlState)
       {
           ddlState.DataSource = _loc.getStatesByCountry(countryId);
           ddlState.DataTextField = "state";
           ddlState.DataValueField = "id";
           ddlState.DataBind();
           ddlState.Items.Insert(0, new ListItem("--Select State--", "0"));
       }

       public void GetcitiesByStateId(int stateId, DropDownList ddlCity)
       {
           ddlCity.DataSource = _loc.getcitiesByStateId(stateId);
           ddlCity.DataTextField = "cityName";
           ddlCity.DataValueField = "id";
           ddlCity.DataBind();
           ddlCity.Items.Insert(0, new ListItem("--Select City--", "0"));
       }
       public DataTable getcities(int stateId, DropDownList ddlCity)
        {
           DataTable dt = _loc.getcitiesByStateId(stateId);
            return dt;
        }
       public DataTable getLocation(int ddlCity)
        {
            DataTable dt = _loc.getLocalityByCity(ddlCity);
            return dt;


            
        }
        
       public void GetLocalityByCity(int cityId, DropDownList ddlLocality)
       {
           ddlLocality.DataSource = _loc.getLocalityByCity(cityId);
           ddlLocality.DataTextField = "locationName";
           ddlLocality.DataValueField = "id";
           ddlLocality.DataBind();
           ddlLocality.Items.Insert(0, new ListItem("--Select Locality--", "0"));
       }
       public void GetLocalityByCityforCheckbox(int cityId, CheckBoxList chkLocality)
        {
            chkLocality.DataSource = _loc.getLocalityByCity(cityId);
            chkLocality.DataTextField = "locationName";
            chkLocality.DataValueField = "id";
            chkLocality.DataBind();
           
        }


        public void EmailFeedback(string fromEmail, string toEmail, string body)
        { 
                var password = "ravi6500";
                using (var mm = new MailMessage(fromEmail, toEmail))
                {
                    mm.Subject = "Enquiry Form";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    var client = new SmtpClient("smtpout.asia.secureserver.net");
                    client.Port = 3535;
                    client.EnableSsl = false;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential(fromEmail, password);
                    client.Send(mm);

                }
           
        }


        public void InsertCities(TextBox city, DropDownList ddlState)
       {
           _loc.insertCities(city.Text, Convert.ToInt32(ddlState.SelectedItem.Value));
       }
       public void Insertlocations(TextBox locality, DropDownList ddlcity1)
       {
           _loc.insertlocations(locality.Text, Convert.ToInt32(ddlcity1.SelectedItem.Value));
       }
       public void InsertSpeciality(TextBox name, TextBox description, TextBox keywords)
       {
           _loc.insertSpeciality(name.Text, description.Text, keywords.Text);
       }
       public DataTable Getspeciality()
       {

           DataTable dt = _loc.getspeciality();
           return dt;
       }

       public void GetSpecialityForDropdown(DropDownList ddlSpecialities)
       {
           ddlSpecialities.DataSource = _loc.getspeciality();
           ddlSpecialities.DataTextField = "name";
           ddlSpecialities.DataValueField = "id";
           ddlSpecialities.DataBind();
           ddlSpecialities.Items.Insert(0, new ListItem("--Select Speciality--", "0"));
 
       }

       public void DeleteSpeciality(int id)
       {
           _loc.deleteSpeciality(id);


       }
       public DataTable GetSpecialityKeywords(int specialityid)
       {

           DataTable dt = _loc.getSpecialityKeywords(specialityid);
           return dt;
       }
       public DataTable GetDoctorSearchResults(string speciality, string locality)
       {

           DataTable dt = _loc.getDoctorSearchResults(speciality, locality);
           return dt;
       }

       public DataTable GetDoctorSearchResultsbypreferred(string speciality, string locality)
        {

            DataTable dt = _loc.GetDoctorSearchResultsbypreferred(speciality, locality);
            return dt;
        }

        
       public void InsertServices(DropDownList ddlspeciality, TextBox txtservicename)
       {
           _loc.insertServices(Convert.ToInt32(ddlspeciality.SelectedItem.Value), txtservicename.Text);
       }

       public void GetServicesbySpecialityId(int ddlspeciality, CheckBoxList chkServices)
       {
         //chkServices.DataSource = _loc.getServicesbySpecialityId(Convert.ToInt32(ddlspeciality.SelectedItem.Value));
           chkServices.DataSource = _loc.getServicesbySpecialityId(ddlspeciality);
         chkServices.DataTextField = "serviceName";
         chkServices.DataValueField = "id";
         chkServices.DataBind();
       }

       public DataTable GetServiceNameByServiceId(int id)
       {

           DataTable dt = _loc.getServiceNameByServiceId(id);
           return dt;
       }
    
    }
}
