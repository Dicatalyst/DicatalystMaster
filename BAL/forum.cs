using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;



namespace BAL
{
    public class forum
    {
        private readonly DAL.forum fm = new DAL.forum();
        public void insertDfTopic(TextBox topicName, TextBox description, string userId)
        {

            fm.insertDfTopic(topicName.Text, description.Text, Convert.ToDateTime(DateTime.Now), userId);
            //string uniqueUserId = fm.getUniqueRandomIdbyUserId(userId1);
            //return uniqueUserId;
        }

        public void insertDfThread(DropDownList ddlTopic , TextBox subject, TextBox message, string serverPath, string userId, TextBox reply)
        {

            fm.insertDfThread(Convert.ToInt32(ddlTopic.SelectedItem.Value), subject.Text, message.Text, Convert.ToDateTime(DateTime.Now), serverPath, userId, reply.Text);
            //string uniqueUserId = fm.getUniqueRandomIdbyUserId(userId1);
            //return uniqueUserId;
        }
        public void GetTopicForDropdown(DropDownList ddlTopic)
        {
            ddlTopic.DataSource = fm.getDfTopic();
            ddlTopic.DataTextField = "topicName";
            ddlTopic.DataValueField = "id";
            ddlTopic.DataBind();
            ddlTopic.Items.Insert(0, new ListItem("--Select Topic--", "0"));

        }



        public DataTable getDfTopic()
        {

            DataTable dt = fm.getDfTopic();
            return dt;
        }
        public DataTable GetDfThread()
        {

            DataTable dt = fm.getDfThread();
            return dt;
        }
        public void deleteDfTopic(int id)
        {
            fm.deleteDfTopic(id);



        }
        public void deleteDfThread(int id)
        {
            fm.deleteDfThread(id);



        }
    }
}
