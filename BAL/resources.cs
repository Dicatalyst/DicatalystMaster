using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;


namespace BAL
{
   
    public class resources
        {
            private readonly DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
        private readonly DAL.globalSearch gal = new DAL.globalSearch();
        private readonly DAL.resources med = new DAL.resources();

        public void insertResources(string uniqueRandomId,DropDownList ddlSpecialization, TextBox resourceTitle, TextBox email, TextBox contactNo, TextBox Author, string serverPath, TextBox referenceLink, TextBox description, string DoctorId)
            {



                med.insertResources(uniqueRandomId,Convert.ToInt32(ddlSpecialization.SelectedItem.Value), resourceTitle.Text, email.Text, contactNo.Text, Author.Text, serverPath, referenceLink.Text, Convert.ToDateTime(DateTime.Now), false, description.Text, DoctorId);
               

            }

        public void insertGlobalResources(DropDownList ddlSpecialization, TextBox resourceTitle, TextBox email, TextBox contactNo, TextBox author, string serverPath, TextBox referenceLink, TextBox description)
            {



                med.insertGlobalResources(Convert.ToInt32(ddlSpecialization.SelectedItem.Value), resourceTitle.Text, email.Text, contactNo.Text, author.Text, serverPath, referenceLink.Text, Convert.ToDateTime(DateTime.Now), false, description.Text);


            }

        public DataTable getResources()
            {

                DataTable dt = med.getResources();
                return dt;
            }

        public int DeleteResource(string UniqueId)
        {
            int i = 0;
            i = med.DeleteResource(UniqueId);
            return i;
        }

        public DataTable getDentistResources(string uniqueRandomId)
            {
                DataTable dt = med.getDentistResources(uniqueRandomId);
                return dt;
            }


            //public void deleteResources(int id)
            //{
            //    med.deleteResources(id);



            //}

    }
}
