using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;


namespace BAL
{
    public class addressBook
    {
        private readonly DAL.addressBook add = new DAL.addressBook();
         public void insertDentistAddressBook(string doctorId,TextBox name, TextBox dateOfBirth,TextBox mobileNo,
             TextBox address,TextBox email,TextBox occupation,TextBox organization,TextBox workAddress,
             TextBox workPhone,TextBox workEmail,TextBox faceBook,TextBox youTube,TextBox linkedIn,TextBox twitter,TextBox google)
        {

            add.insertDentistAddressBook(doctorId,name.Text,dateOfBirth.Text,mobileNo.Text,address.Text,email.Text,occupation.Text,organization.Text,workAddress.Text,workPhone.Text,workEmail.Text,faceBook.Text,youTube.Text,linkedIn.Text,twitter.Text,google.Text);
            
        }


         public DataTable getdentistAddressBook()
        {

            DataTable dt = add.getdentistAddressBook();
            return dt;
        }

         public void deleteDentistAddressBook(int id)
         {
             add.deleteDentistAddressBook(id);



         }
        
    }
}
