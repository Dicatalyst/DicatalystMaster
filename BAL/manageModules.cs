using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using System.Xml.Linq;

using System.Data.SqlClient;


namespace BAL
{
    public class ManageModules
    {
        private readonly DAL.manageModules _mngmod = new DAL.manageModules();

        private readonly DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();

        public void InsertDoctorData(string uniqueRandomId, TextBox aboutMe, TextBox yearOfExperience, TextBox designation, TextBox address, TextBox street, TextBox education, TextBox awardsRecognitions, TextBox memberships, TextBox registrations, TextBox fee, TextBox practiceName, DropDownList speciality, CheckBoxList services, TextBox state, TextBox city, TextBox countryId, TextBox zipCode, TextBox latitude, TextBox longitude, TextBox website, CheckBox preferredDoctor, string picturePath)
        {
            string selectedValue = string.Empty;
            foreach (ListItem item in services.Items)
            {
                if (item.Selected)
                {
                    selectedValue = selectedValue + "," + item.Value;
                }
            }
            //selectedValue = selectedValue.Substring(1);
            bool preferred;
            if (preferredDoctor.Checked)
            {
                preferred = true;
            }
            else
            {
                preferred = false;

            }
            _mngmod.InsertDoctorData(uniqueRandomId, aboutMe.Text, Convert.ToInt32(yearOfExperience.Text), designation.Text, address.Text, street.Text, education.Text, awardsRecognitions.Text, memberships.Text, registrations.Text, Convert.ToInt32(fee.Text), practiceName.Text, speciality.SelectedItem.Text, selectedValue, state.Text, city.Text, countryId.Text, Convert.ToInt32(zipCode.Text), Math.Round(Convert.ToDecimal(latitude.Text), 6), Math.Round(Convert.ToDecimal(longitude.Text), 6), website.Text, preferred, picturePath);
        }

        public void InsertDoctorDataExcel(string uniqueRandomId, string aboutMe, string yearOfExperience, string designation, string address, string street, string education, string awardsRecognitions, string memberships, string registrations, string fee, string practiceName, string speciality, string services, string state, string city, string countryId, string zipCode, string latitude, string longitude, string website, string preferredDoctor, string picturePath)
        {
            int experience = 0;
            if (!string.IsNullOrEmpty(yearOfExperience))
            {
                experience = Convert.ToInt32(yearOfExperience);
            }
            int fee1 = 0;
            if (!string.IsNullOrEmpty(fee))
            {
                fee1 = Convert.ToInt32(fee);
            }
            int zipCode1 = 0;
            if (!string.IsNullOrEmpty(zipCode))
            {
                zipCode1 = Convert.ToInt32(zipCode);
            }
            decimal latitude1 = 0;
            if (!string.IsNullOrEmpty(latitude))
            {
                latitude1 = Math.Round(Convert.ToDecimal(latitude), 6);
            }
            decimal longitude1 = 0;
            if (!string.IsNullOrEmpty(longitude))
            {
                longitude1 = Math.Round(Convert.ToDecimal(longitude), 6);
            }

            _mngmod.InsertDoctorData(uniqueRandomId, aboutMe, experience, designation, address, street, education, awardsRecognitions, memberships, registrations,
                fee1, practiceName, speciality, "", state, city, countryId, zipCode1,
                latitude1, longitude1, website, false, picturePath);
        }
        public void InsertDoctorTimings(string uniqueRandomId, int dayId, string txtFFrom, string txtFTo, string txtsFrom, string txtsTo)
        {
            _mngmod.InsertDoctorTimings(uniqueRandomId, dayId, Convert.ToDateTime(txtFFrom), Convert.ToDateTime(txtFTo), Convert.ToDateTime(txtsFrom), Convert.ToDateTime(txtsTo));



        }


        public void insertMedicineType(TextBox medicineTypeName, TextBox dose)
        {
            _mngmod.insertMedicineType(medicineTypeName.Text, dose.Text);
        }


        public void insertDoctorPrescription(DropDownList medicineTypeId, TextBox medicineName, TextBox dose, TextBox quantity, TextBox days, TextBox perDay, TextBox comments, CheckBoxList chkDayInterval)
        {
            string selectedValue = string.Empty;
            foreach (ListItem item in chkDayInterval.Items)
            {
                if (item.Selected)
                {
                    selectedValue = selectedValue + "," + item.Value;
                }
            }
            selectedValue = selectedValue.Substring(1);
            _mngmod.insertDoctorPrescription(Convert.ToInt32(medicineTypeId.SelectedItem.Value), medicineName.Text, dose.Text, Convert.ToInt32((quantity.Text)), Convert.ToInt32((days.Text)), Convert.ToInt32((perDay.Text)), comments.Text, selectedValue);
        }


        public DataTable Getdays()
        {

            DataTable dt = _mngmod.GetDays();
            return dt;
        }
        public void GetMedicineTypeForDropdown(DropDownList ddlMedicineType)
        {
            ddlMedicineType.DataSource = _mngmod.getMedicineType();
            ddlMedicineType.DataTextField = "medicineTypeName";
            ddlMedicineType.DataValueField = "id";
            ddlMedicineType.DataBind();
            ddlMedicineType.Items.Insert(0, new ListItem("--Select Medicine Type--", "0"));

        }

        public DataTable getDoctorDataForManageDoctor()
        {

            DataTable dt = _mngmod.GetDoctorDataForManageDoctor();
            return dt;
        }







        public DataTable getDoctorProfile(string uniqueRandomId)
        {

            DataTable dt = _mngmod.getDoctorProfile(uniqueRandomId);
            return dt;
        }

        

        public DataTable GetDoctorTimings(string uniqueRandomId)
        {

            DataTable dt = _mngmod.GetDoctorTimings(uniqueRandomId);
            return dt;
        }


        public DataTable ViewDoctorTimings(string uniqueRandomId)
        {
            DataTable dt = _mngmod.ViewDoctorTimings(uniqueRandomId);
            return dt;
        }
        public DataTable GetClinicData()
        {

            DataTable dt = _mngmod.GetClinicData();
            return dt;
        }
        public DataTable GetHospitalData()
        {

            DataTable dt = _mngmod.GetHospitalData();
            return dt;
        }
        public DataTable GetLabData()
        {

            DataTable dt = _mngmod.GetLabData();
            return dt;
        }
        public DataTable GetPharmaData()
        {

            DataTable dt = _mngmod.GetPharmaData();
            return dt;
        }


        public DataTable getMedicineType()
        {

            DataTable dt = _mngmod.getMedicineType();
            return dt;
        }
        public void DeleteDoctorData(int id)
        {
            _mngmod.DeleteDoctorData(id);


        }
        public void DeleteClinictData(int id)
        {
            _mngmod.DeleteClinictData(id);


        }

        public void DeletePharmaData(int id)
        {
            _mngmod.deletePharmaData(id);


        }
        public void DeleteLabData(int id)
        {
            _mngmod.deleteLabData(id);


        }
        public void DeleteHospitalData(int id)
        {
            _mngmod.deleteHospitalData(id);


        }
        public void deleteMedicineType(int id)
        {
            _mngmod.deleteMedicineType(id);


        }
        public string InsertRegistrationDetails(TextBox fullName, TextBox email, TextBox contactNumber, string password, string picture)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _mngmod.insertRegistrationDetails(randomId, fullName.Text, email.Text, contactNumber.Text, password, Convert.ToDateTime(DateTime.Now), false, false, false, picture);
            string uniqueUserId = _mngmod.getUniqueRandomIdbyUserId(userId);
            return uniqueUserId;
        }

        public string InsertRegistrationDetailsExcel(string fullName, string email, string contactNumber, string password)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _mngmod.insertRegistrationDetails(randomId, fullName, email, contactNumber, password, Convert.ToDateTime(DateTime.Now), false, false, false,"");
            string uniqueUserId = "";
            if(userId != 0)
            { 
                uniqueUserId= _mngmod.getUniqueRandomIdbyUserId(userId);
            }
            return uniqueUserId;
        }

        public void editManageDoctor(int id, TextBox fullName, TextBox yearOfExperience, TextBox designation, TextBox address, TextBox fee, TextBox contactNumber, TextBox email, TextBox practiceName, DropDownList speciality, TextBox website)
        {
            _mngmod.editManageDoctor(id, fullName.Text, Convert.ToInt32(yearOfExperience.Text), designation.Text, address.Text, Convert.ToInt32(fee.Text), Convert.ToInt32((contactNumber.Text)), email.Text, practiceName.Text, Convert.ToInt32(speciality.SelectedItem.Value), website.Text);


        }

        public DataTable getEditDoctorData(int id)
        {

            DataTable dt = _mngmod.getEditDoctorData(id);
            return dt;
        }

        public DataTable getEditDoctorTimings(int id)
        {

            DataTable dt = _mngmod.getEditDoctorTimings(id);
            return dt;
        }

        public void updateDoctorProfile(string uniqueRandomId,TextBox email, TextBox fullName, TextBox aboutMe, TextBox yearOfExperience, TextBox designation, TextBox address, TextBox street, TextBox education, TextBox awardsRecognitions,
            TextBox memberships, TextBox registrations, TextBox fee, TextBox practiceName, DropDownList speciality, TextBox state, TextBox city, TextBox countryId, TextBox zipCode, TextBox latitude, TextBox longitude,
            TextBox contactNumber, TextBox website)
        {
            _mngmod.updateDoctorProfile(uniqueRandomId,email.Text, fullName.Text, aboutMe.Text, Convert.ToInt32(yearOfExperience.Text), designation.Text, address.Text, street.Text, education.Text, awardsRecognitions.Text, memberships.Text, registrations.Text, Convert.ToInt32(fee.Text), practiceName.Text, speciality.SelectedItem.Text, state.Text, city.Text, countryId.Text, Convert.ToInt32(zipCode.Text), Math.Round(Convert.ToDecimal(latitude.Text), 6), Math.Round(Convert.ToDecimal(longitude.Text), 6), contactNumber.Text, website.Text);
        }

        public void updateDoctorProfile5(string uniqueRandomId, TextBox address, TextBox street, TextBox state, TextBox city, TextBox countryId, TextBox zipCode, TextBox latitude, TextBox longitude)
        {
            //Below line commented and new line added below it by Ram
            //_mngmod.updateDoctorProfile5(uniqueRandomId, address.Text, street.Text, state.Text, city.Text, countryId.Text, Convert.ToInt32(zipCode.Text), Math.Round(Convert.ToDecimal(latitude.Text), 6), Math.Round(Convert.ToDecimal(longitude.Text), 6));
            _mngmod.updateDoctorProfile5(uniqueRandomId, address.Text, street.Text, state.Text, city.Text, countryId.Text, Convert.ToInt32(zipCode.Text), latitude.Text != "" ? (Math.Round(Convert.ToDecimal(latitude.Text), 6)) : 0, longitude.Text != "" ? (Math.Round(Convert.ToDecimal(longitude.Text), 6)) : 0);

        }

        public void updateDoctorProfile4(string uniqueRandomId, TextBox txtAboutDoctor, TextBox txtExperience, TextBox txtDesignation, TextBox txtEducation, TextBox txtAwardsRecognitions,
           TextBox txtMemberships, TextBox txtRegistrations, TextBox txtFee, TextBox txtPracticeName, string speciality, TextBox txtWebsite, CheckBoxList services, string ImgFiles)
        {
            string selectedValue = string.Empty;
            foreach (ListItem item in services.Items)
            {
                if (item.Selected)
                {
                    selectedValue = selectedValue + "," + item.Value;
                }
            }
            if (selectedValue != string.Empty)
            {
                selectedValue = selectedValue.Substring(1);
            }           
            _mngmod.updateDoctorProfile4(uniqueRandomId, txtAboutDoctor.Text, Convert.ToInt32(txtExperience.Text), txtDesignation.Text, txtEducation.Text, txtAwardsRecognitions.Text, txtMemberships.Text, txtRegistrations.Text,
                Convert.ToInt32(txtFee.Text), txtPracticeName.Text, speciality, txtWebsite.Text, selectedValue, ImgFiles);
        }        
        
        public void updateDoctorProfile3(string uniqueRandomId, TextBox fullName, TextBox contactNumber, string picture)
        {
            _mngmod.updateDoctorProfile3(uniqueRandomId, fullName.Text, contactNumber.Text, picture);
        }       

        public void insertDoctorTimings(string uniqueRandomId, int dayId, string txtFFrom, string txtFTo, string txtsFrom, string txtsTo)
        {
            _mngmod.insertDoctorTimings(uniqueRandomId, dayId, Convert.ToDateTime(txtFFrom), Convert.ToDateTime(txtFTo), Convert.ToDateTime(txtsFrom), Convert.ToDateTime(txtsTo));
        }

        public void DeleteDoctorTimings(string uniqueRandomId, int dayId)
        {
            _mngmod.DeleteDoctorTimings(uniqueRandomId, dayId);
        }


    }
}
