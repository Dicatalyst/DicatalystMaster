using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;

namespace BAL
{
    public class ClinicFreeList 
    {
        private DAL.globalSearch _loc = new DAL.globalSearch();
        private readonly DAL.clinicFreeList _clinicBal = new DAL.clinicFreeList();
        private readonly DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
        public void InsertClinicDetails(TextBox clinicName, TextBox clinicSpeciality, TextBox clinicTitle, TextBox website, TextBox tagline, TextBox email, TextBox mobileNumber,
            TextBox clinicFoundedInYear, TextBox clinicRegNo)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _clinicBal.insertClinicDetails(randomId, clinicName.Text, clinicSpeciality.Text, clinicTitle.Text, website.Text, tagline.Text, email.Text, mobileNumber.Text, Convert.ToInt32(clinicFoundedInYear.Text), clinicRegNo.Text);
        }
        public void InsertClinicAddress(TextBox address, DropDownList city, DropDownList state, DropDownList country, TextBox zipCode, TextBox telNum)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int id = _clinicBal.insertClinicAddress(randomId, address.Text, Convert.ToInt32(city.SelectedItem.Value), Convert.ToInt32(state.SelectedItem.Value), Convert.ToInt32(country.SelectedItem.Value), zipCode.Text, telNum.Text);
        }



        public void InsertClinicServices(TextBox services, TextBox facilitiesAvailable, TextBox vaccinations)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int id1 = _clinicBal.insertClinicServices(randomId, services.Text, facilitiesAvailable.Text, vaccinations.Text);
        }



        //public void insertclinicWorkingHours(TextBox day, TextBox first_Half, TextBox second_half)
        //{
        //    string randomId = ran.getRandomUniqueNumber();
        //    int Id1 = clinicBal.insertclinicWorkingHours(randomId, day.Text, first_Half.Text, second_half.Text);
        //}





        public void InsertClinicUpload(FileUpload uploadPhoto, FileUpload uploadGallery)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int id1 = _clinicBal.insertClinicUpload(randomId, uploadPhoto.FileName, uploadGallery.FileName);
        }

    }
}
