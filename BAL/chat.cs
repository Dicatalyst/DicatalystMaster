using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
//using System.Web.UI.WebControls;
using System.Data;



namespace BAL
{

    public class chat
    {
        private readonly DAL.chat ch = new DAL.chat();
        public void insertChatInvitation(string senderId, string receiverId)
        {

            ch.insertChatInvitation(senderId, receiverId, Convert.ToDateTime(DateTime.Now), false, false);

        }
        public void insertChatMessage(string senderId, string receiverId, TextBox message, string date, string time)
        {

            ch.insertChatMessage(senderId, receiverId, message.Text, date, time);

        }

        public DataTable getChatMessage(string senderId, string receiverId, string date)
        {
            DataTable dt =  ch.getChatMessage(senderId, receiverId, date);
            return dt;
        }

        public void getIgnoreChat(string receiverId)
        {

            ch.getIgnoreChat(receiverId);

        }
        public void acceptInvitation(string senderId, string receiverId)
        {

            ch.acceptInvitation(senderId, receiverId);

        }
        public DataTable getinvitedFriends(string receiverId)
        {

            DataTable dt = ch.getinvitedFriends(receiverId);
            return dt;
        }
        public DataTable getFriends(string receiverId)
        {

            DataTable dt = ch.getFriends(receiverId);
            return dt;
        }


    }
}
