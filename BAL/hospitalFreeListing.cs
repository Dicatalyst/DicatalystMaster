using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BAL
{
     public class HospitalFreeListing
    {
        private DAL.globalSearch _loc = new DAL.globalSearch();
        private DAL.hospitalFreeListing _hosBal = new DAL.hospitalFreeListing();
        private DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
        public void InsertHospitalDetails(TextBox hospitalName, TextBox hospitalSpecialities, TextBox websites, TextBox title, TextBox hospitalRegNo, TextBox email, TextBox branches,
            TextBox aboutUs)

        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _hosBal.insertHospitalDetails(randomId, hospitalName.Text, hospitalSpecialities.Text, websites.Text, title.Text, hospitalRegNo.Text, email.Text, branches.Text, aboutUs.Text);
        }



        public void InsertDoctorDetails(TextBox doctorName, TextBox qualification, TextBox specialization, TextBox consultationtype, TextBox experience, TextBox timings, FileUpload uploadPhoto
           )

        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _hosBal.insertDoctorDetails(randomId, doctorName.Text, qualification.Text, specialization.Text, consultationtype.Text, experience.Text, timings.Text, uploadPhoto.FileName);
        }

        public void InsertContactDetails(TextBox address, TextBox telephoneNo, TextBox pinCode)
        
        {
            string randomId = _ran.getRandomUniqueNumber();
            int id = _hosBal.insertContactDetails(randomId, address.Text, telephoneNo.Text, pinCode.Text);
        }

    }
}
