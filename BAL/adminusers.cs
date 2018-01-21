using System;
using System.Data;
using System.Web.UI.WebControls;

namespace BAL
{
   public class adminusers
    {
       private DAL.adminusers us = new DAL.adminusers();

        public void getIdProofType(DropDownList ddlIdProofType)
        {
            ddlIdProofType.DataSource = us.getIdProofTypeName();
            ddlIdProofType.DataTextField = "idProofTypeName";
            ddlIdProofType.DataValueField = "id";
            ddlIdProofType.DataBind();
            ddlIdProofType.Items.Insert(0, new ListItem("--Select Id Proof Type--", "0"));
        }

        public DataTable getAdminUsers()
        {
            return us.getAdminUsersDetails();
        }
        public DataTable getAdminUserById(int id)
        {
            return us.getAdminUserById(id);
        }

        public DataTable getAdminUserDetailsNamesofIds(int id)
        {
            return us.getAdminUserDetailsNamesofIds(id);
        }

        
        
        public void usersbyHotelId(string hotelId, DropDownList ddlHotelUsers)
        {
            ddlHotelUsers.DataSource = us.usersbyHotelId(hotelId);
            ddlHotelUsers.DataTextField = "firstName";
            ddlHotelUsers.DataValueField = "id";
            ddlHotelUsers.DataBind();
            ddlHotelUsers.Items.Insert(0, new ListItem("--Select User--", "0"));
        }

        public int insertAdminUser(DropDownList idType, DropDownList countryId,
            DropDownList stateId, DropDownList userTypeId,
            int gender, bool IsPrimaryContact, bool IsActive, TextBox employeeId,
            string photo, TextBox firstName, TextBox username, TextBox password, TextBox email,
            TextBox mobile, TextBox dateOfJoining, TextBox idNo,
            TextBox city, TextBox zipcode, TextBox address, DateTime createdDate)
        {
            return us.insertadminUsers(Convert.ToInt32(idType.SelectedItem.Value),
                Convert.ToInt32(countryId.SelectedItem.Value),
                Convert.ToInt32(stateId.SelectedItem.Value),
                Convert.ToInt32(userTypeId.SelectedItem.Value),
                gender, IsPrimaryContact, IsActive, employeeId.Text,
                photo, firstName.Text, username.Text, password.Text, email.Text,
                mobile.Text,
                dateOfJoining.Text, idNo.Text, city.Text, zipcode.Text, address.Text, createdDate);
        }

        public int updateAdminUsers(DropDownList idType, DropDownList countryId,
            DropDownList stateId, DropDownList userTypeId,
            int gender, TextBox employeeId,
            string photo, TextBox firstName, TextBox username, TextBox password, TextBox email, TextBox mobile, TextBox dateOfJoining, TextBox idNo,
            TextBox city, TextBox zipcode, TextBox address, DateTime createdDate, int id)
        {
            return us.updateAdminUsers(Convert.ToInt32(idType.SelectedItem.Value),
                Convert.ToInt32(countryId.SelectedItem.Value),
                Convert.ToInt32(stateId.SelectedItem.Value),
                Convert.ToInt32(userTypeId.SelectedItem.Value),
                gender, employeeId.Text,
                photo, firstName.Text, username.Text, password.Text, email.Text,
                mobile.Text,
                dateOfJoining.Text, idNo.Text, city.Text, zipcode.Text, address.Text, createdDate, id);
        }

        public void insertAdminUserAndHotels(int adminUserId, string hotelId)
        {
            us.insertAdminUserAndHotels(adminUserId, hotelId);
        }

        public void deleteAdminUserAndHotels(int adminUserId, string hotelId)
        {
            us.deleteAdminUserAndHotels(adminUserId, hotelId);
        }

        public void deleteAdminUsers(int id)
        {
            us.deleteAdminUsers(id);
        }

        public DataTable getPreferences(string username)
        {
            return us.getPreferences(username);
        }

        public void updatePassword(TextBox txtPassword, string username)
        {
            us.updatePassword(txtPassword.Text, username);
        }
    }
}
