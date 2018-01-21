using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
   public class Users
    {
       private readonly DAL.users _usersbal = new DAL.users();
       private readonly DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
       public string InsertRegistrationDetails(TextBox fullName, TextBox email, TextBox contactNumber, TextBox password, string picture, DropDownList ddlModule)
       {
         picture = "~/images/doctor.png";
         string randomId = _ran.getRandomUniqueNumber();
         int userId =  _usersbal.insertRegistrationDetails(randomId, fullName.Text, email.Text, contactNumber.Text, password.Text, Convert.ToDateTime(DateTime.Now), false, false, false, picture, Convert.ToInt32(ddlModule.SelectedItem.Value));
         string uniqueUserId = _usersbal.getUniqueRandomIdbyUserId(userId);
         return uniqueUserId;
       }




       public void insertUniqueCodeForResetPassword(string randomnumber, TextBox email)
        {
            
            _usersbal.insertUniqueCodeForResetPassword(randomnumber, email.Text);
            //string uniqueUserId = _usersbal.insertUniqueCodeForResetPassword(userId);
            //return uniqueUserId;
        }


       public void ActivateUsers(string uniqueRandomId)
       {
           _usersbal.activateUsers(uniqueRandomId);
       }







       public DataTable getResetPassword(string randomId)
        {
            DataTable dt = _usersbal.getResetPassword(randomId);
            return dt;
        }




       public void ResetPassword(string email, string password)
        {
           _usersbal.ResetPassword(email, password);
         
        }






       public DataTable GetActivatedUserDetails(string uniqueRandomId)
       {

          DataTable dt = _usersbal.getActivatedUserDetails(uniqueRandomId);
          return dt;
       }

        public DataTable GetDoctorDatabyUserId(string uniqueRandomId)
        {
          DataTable dt =  _usersbal.getDoctorDatabyUserId(uniqueRandomId);
            return dt;
        }


        public DataTable GetLoginDetails(TextBox email, TextBox password, DropDownList ddlModule)
       {

           DataTable dt = _usersbal.getLoginDetails(email.Text, password.Text, Convert.ToInt32(ddlModule.SelectedItem.Value));
           return dt;
       }

       public DataTable GetModuleDetails(string uniqueRandomId)
       {
           DataTable dt = _usersbal.getModuleDetails(uniqueRandomId);
           return dt;

       }

       public DataTable GetAdminLoginDetails(TextBox username, TextBox password)
       {

           DataTable dt = _usersbal.getAdminLoginDetails(username.Text, password.Text);
           return dt;
       }

        public int GetRating(string userId)
        {
            DataTable dt = _usersbal.GetRating(userId);
            int rating = 0;
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    rating = rating + Convert.ToInt32(dt.Rows[i]["rating"]);
                }
                rating = rating / dt.Rows.Count;
            }
            return rating;
        }
        public DataTable GetLoginUserDetails(string uniqueRandomId)
        {
            DataTable dt = _usersbal.getLoginUserDetails(uniqueRandomId);
            return dt;
        }

        public DataTable checkUserEmail(string email, int usertypeId)
        {
            DataTable dt = _usersbal.checkUserEmail(email,usertypeId);
            return dt;
        }


        public DataTable getUserAccessPermissionsToDisplay(int adminTypeId)
        {
            DataTable dt = _usersbal.getUserAccessPermissionsToDisplay(adminTypeId);
            return dt;
        }
        public DataTable getChatMembers(string uniqueRandomId)
        {

            DataTable dt = _usersbal.getChatMembers(uniqueRandomId);
            return dt;
        }

        public DataTable getUserDetailsByEmail(string email)
        {
            DataTable dt = _usersbal.getUserDetailsByEmail(email);
            return dt;
        }

        //Changes by Ram Start

        public void Updatepatientdtls(string RandomId, string Name, int Age, string Mobile, string Occupation, string Complaint)
        {
            _usersbal.Updatepatientdtls(RandomId,Name,Age,Mobile,Occupation,Complaint);

        }

        public void DeleteAppointment(int AppointmentId)
        {
            _usersbal.DeleteAppointMent(AppointmentId);

        }

        //Changes by Ram End
    }
}
