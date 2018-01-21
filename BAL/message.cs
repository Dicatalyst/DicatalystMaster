using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Web.UI.WebControls;


namespace BAL
{


    public class message
    {
        private DAL.message msg = new DAL.message();
        public void insertMessage(TextBox subject, TextBox message, string serverPath, string fromUserId, TextBox toUserId, int messageReplyId)
        {

            msg.insertMessage(subject.Text, message.Text, serverPath, fromUserId, toUserId.Text, Convert.ToDateTime(DateTime.Now), false, false, messageReplyId);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }

        public DataTable getMessage()
        {

            DataTable dt = msg.getMessage();
            return dt;
        }


        public DataTable getTrashMessage()
        {

            DataTable dt = msg.getTrashMessage();
            return dt;
        }
        public DataTable getInboxMessages()
        {

            DataTable dt = msg.getInboxMessages();
            return dt;
        }
        public void ForwardMessage(int id)
        {

            msg.ForwardMessage(id);

        }


        public void deleteMessage(int id)
        {
            msg.deleteMessage(id);


        }

        public void MoveToTrash(int id)
        {


            msg.MoveToTrash(id);
        }

    }
}
