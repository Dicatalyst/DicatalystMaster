using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;


namespace BAL
{
    public class lab
    {

        private readonly DAL.lab lab1 = new DAL.lab();
        public void insertConsultantDoctor(string labId,
    TextBox doctorName,
    TextBox qualification,
    TextBox specialization,
    DropDownList department,
    TextBox age,
    RadioButtonList gender,
    TextBox clinicAddress,
    DropDownList clinicArea,
    DropDownList clinicCity,
    TextBox clinicPinCode,
    TextBox clinicPhoneNo,
    TextBox primaryContactAddress,
    DropDownList primaryContactArea,
    DropDownList primaryContactCity,
    TextBox primaryContactPinCode,
    TextBox primaryContactMobileNo)
        {
            lab1.insertConsultantDoctor(labId,
     doctorName.Text,
     qualification.Text,
     specialization.Text,
     Convert.ToString(department.SelectedItem.Value),
    Convert.ToInt32(age.Text),
   Convert.ToInt32(gender.SelectedIndex),
     clinicAddress.Text,
    Convert.ToInt32(clinicArea.SelectedItem.Value),
    Convert.ToInt32(clinicCity.SelectedItem.Value),
     clinicPinCode.Text,
     clinicPhoneNo.Text,
     primaryContactAddress.Text,
     Convert.ToInt32 (primaryContactArea.SelectedItem.Value),
     Convert.ToInt32 (primaryContactCity.SelectedItem.Value),
     primaryContactPinCode.Text,
     primaryContactMobileNo.Text);}

        //public DataTable getLabConsultantDoctor()
        //{

        //    DataTable dt = lab1.getLabConsultantDoctor();
        //    return dt;
        //}
    }
}
