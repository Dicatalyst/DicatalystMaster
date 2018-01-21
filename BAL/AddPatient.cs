using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using  System.Data;

namespace BAL
{
   public class AddPatient
    {
       private readonly DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
       private readonly DAL.AddPatient _addPatient = new DAL.AddPatient();
      
       
       
       
       public void InsertAddPatient(string uniqueRandomId, DropDownList salutation , TextBox age, RadioButtonList maritalStatus, RadioButtonList gender,  TextBox occupation, TextBox chiefComplaint, TextBox consultationFee, TextBox txtAddress, string doctorId)
        {

            _addPatient.insertAddPatient(uniqueRandomId, salutation.Text, Convert.ToInt32(age.Text), Convert.ToInt32(maritalStatus.SelectedIndex), Convert.ToInt32(gender.SelectedIndex), occupation.Text, chiefComplaint.Text, Convert.ToInt32(consultationFee.Text), txtAddress.Text, doctorId);
        }
        public void InsertPatientFromPatient(string uniqueRandomId, string salutation, int age, int maritalStatus, int gender, string occupation, string chiefComplaint, int consultationFee, string txtAddress, string doctorId,int appointmentId)
        {
            _addPatient.insertPatientFromPatient(uniqueRandomId, salutation, age, maritalStatus,gender, occupation, chiefComplaint, consultationFee, txtAddress, doctorId, appointmentId);
        }
        public void UpdateAddPatientDetails(int appointmentId, DropDownList salutation, TextBox age, RadioButtonList maritalStatus, RadioButtonList gender, TextBox occupation, TextBox chiefComplaint, TextBox consultationFee, TextBox txtAddress, string doctorId)
        {

            _addPatient.UpdateAddPatientDetails(appointmentId, salutation.Text, Convert.ToInt32(age.Text), Convert.ToInt32(maritalStatus.SelectedIndex), Convert.ToInt32(gender.SelectedIndex), occupation.Text, chiefComplaint.Text, Convert.ToInt32(consultationFee.Text), txtAddress.Text, doctorId);
        }
        public void InsertAddAppointmentPatient(string uniqueRandomId, DropDownList salutation, TextBox age, RadioButtonList maritalStatus, RadioButtonList gender, TextBox occupation, TextBox chiefComplaint, int consultationFee, TextBox txtAddress, string doctorId)
{

    _addPatient.insertAddPatient(uniqueRandomId, salutation.Text, Convert.ToInt32(age.Text), Convert.ToInt32(maritalStatus.SelectedIndex), Convert.ToInt32(gender.SelectedIndex), occupation.Text, chiefComplaint.Text, consultationFee, txtAddress.Text, doctorId);
}
       public void InsertAddClinicPatient(string uniqueRandomId, DropDownList salutation, TextBox age, RadioButtonList maritalStatus, RadioButtonList gender, TextBox occupation, TextBox chiefComplaint, TextBox consultationFee)
       {

           _addPatient.insertAddClinicPatient(uniqueRandomId, salutation.Text, Convert.ToInt32(age.Text), maritalStatus.Text, gender.Text, occupation.Text, chiefComplaint.Text, Convert.ToInt32(consultationFee.Text));
       }
       public void InsertAddHospitalPatient(string uniqueRandomId, DropDownList salutation, TextBox age, RadioButtonList maritalStatus, RadioButtonList gender, TextBox occupation, TextBox chiefComplaint, TextBox consultationFee)
       {

           _addPatient.insertAddHospitalPatient(uniqueRandomId, salutation.Text, Convert.ToInt32(age.Text), maritalStatus.Text, gender.Text, occupation.Text, chiefComplaint.Text, Convert.ToInt32(consultationFee.Text));
       }

       public void InsertDentistAddPatient(string uniqueRandomId, DropDownList salutation, TextBox age, RadioButtonList maritalStatus, RadioButtonList gender, TextBox occupation, TextBox chiefComplaint, TextBox consultationFee,TextBox address)
       {

           _addPatient.insertDentistAddPatient(uniqueRandomId, salutation.Text, Convert.ToInt32(age.Text), maritalStatus.Text, gender.Text, occupation.Text, chiefComplaint.Text, Convert.ToInt32(consultationFee.Text), address.Text);
       }
      

       public string InsertRegistrationDetails(TextBox fullName, TextBox email, TextBox contactNumber, string password)
       {
           string randomId = _ran.getRandomUniqueNumber();
           int userId = _addPatient.insertRegistrationDetails(randomId, fullName.Text, email.Text, contactNumber.Text, password, Convert.ToDateTime(DateTime.Now), false, false, false);
           string uniqueUserId = _addPatient.getUniqueRandomIdbyUserId(userId);
           return uniqueUserId;
       }

        public DataTable getPatientDetails(string doctorId)
        {
            DataTable dt = _addPatient.getPatientDetails(doctorId);
            return dt;
        }
        public DataTable getPatientAppointmentDetails(string doctorId)
        {
            DataTable dt = _addPatient.getPatientAppointmentDetails(doctorId);
            return dt;
        }

        public void deletePatientDetails(int id)
        {
            _addPatient.deletePatientDetails(id);


        }

        public DataTable getfee(string uniqueRandomId)
        {
            DataTable dt = _addPatient.getfee(uniqueRandomId);
            return dt;
        }

        public DataTable getPatientPrescriptionDetails(string patientId)
        {
            DataTable dt = _addPatient.getPatientPrescriptionDetails(patientId);
            return dt;
        }
        public DataTable getAllPatientAppointmentDetails(string doctorId, string patientId)
        {
            DataTable dt = _addPatient.getAllPatientAppointmentDetails(doctorId, patientId);
            return dt;
        }
        public DataTable getDoctorAppointmentForNonRegistered(string doctorId, DateTime startdate, DateTime enddate)
        {
            DataTable dt = _addPatient.getDoctorAppointmentForNonRegistered(doctorId, startdate, enddate);
            return dt;
        }

        public void CreateAppointmentsByDoctorTimings(string doctorId, int slot, DateTime startdate, DateTime enddate)
        {
            _addPatient.CreateAppointmentsByDoctorTimings(doctorId, slot, startdate, enddate);
        }
        public void DeleteAppointmentsByStartandEnddate(string doctorId, DateTime startdate, DateTime enddate)
        {
            _addPatient.DeleteAppointmentsByStartandEnddate(doctorId, startdate, enddate);
        }

        //Changes By Ram Start
        public void getPatientProfile(string PatientId)
        {
            _addPatient.getPatientProfile(PatientId);
        }

        public int UpdatePatientProfile(string patientId, string Salutation, string Name, string Mobile, int Age, int Gender, string occupation, string Address, int MaritalStatus)
        {
            int result = 0;
            result = _addPatient.UpdatePatientProfile(patientId, Salutation, Name, Mobile, Age, Gender, occupation, Address, MaritalStatus);
            return result;
        }

        //Changes by Ram End

    }
}
