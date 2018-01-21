using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;


namespace BAL
{
    public class news
    {
        private  readonly DAL.news news1=new DAL.news();

        public void insertNews(TextBox title, TextBox description, TextBox referenceLink, string serverPath)
        {


            news1.insertNews(title.Text, description.Text, referenceLink.Text, serverPath, Convert.ToDateTime(DateTime.Now), false);
         
        }
        
        public DataTable getNews()
        {

            DataTable dt = news1.getNews();
            return dt;
        }

    }
}
