using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;


namespace BAL
{
   public class media
    {


       private readonly DAL.media med = new DAL.media();

       
       public void insertDentistMedia( TextBox title,string serverPath, TextBox video, TextBox reference, TextBox description, TextBox author,TextBox publishOn,TextBox publishIn)
        {
            
            

            med.insertDentistMedia( title.Text,serverPath ,video.Text, reference.Text, description.Text,  author.Text,Convert.ToDateTime(publishOn.Text) ,publishIn.Text,Convert.ToDateTime(DateTime.Now), false);


        }


       public DataTable getDentistMedia()
        {

            DataTable dt = med.getDentistMedia();
            return dt;
        }

       public void deleteDentistMedia(int id)
        {
            med.deleteDentistMedia(id);



        }


    }

}
