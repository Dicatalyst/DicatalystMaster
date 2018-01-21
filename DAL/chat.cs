using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class chat
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();

        public void insertChatInvitation(string senderId, string receiverId, DateTime datetime, bool isAccepted,
            bool isBlocked)
        {


            cmd = dac.GetCommand("sp_insertChatInvitation");
            SqlParameter[] par =
            {
                new SqlParameter("@senderId", senderId),
                new SqlParameter("@receiverId", receiverId),
                new SqlParameter("@dateTime", datetime),
                new SqlParameter("@isAccepted", isAccepted),

                new SqlParameter("@isBlocked", isBlocked)



            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void insertChatMessage(string senderId, string receiverId, string message, string date,string time)
        {

      
            cmd = dac.GetCommand("sp_insertChatMessage");
            SqlParameter[] par =
            {
                new SqlParameter("@senderId", senderId),
                new SqlParameter("@receiverId", receiverId),
                new SqlParameter("@message", message),
                new SqlParameter("@date", date),

                new SqlParameter("@time", time)



            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }



        public void getIgnoreChat(string receiverId)
        {
            cmd = dac.GetCommand("sp_getIgnoreChat");


            SqlParameter[] par =
            {
                new SqlParameter("@receiverId", receiverId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }

        public void acceptInvitation(string senderId, string receiverId)
        {
            cmd = dac.GetCommand("sp_acceptInvitation");


            SqlParameter[] par =
            {
                new SqlParameter("@senderId", senderId),
                new SqlParameter("@receiverId", receiverId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }

        public DataTable getinvitedFriends(string receiverId)
        {
            cmd = dac.GetCommand("sp_getinvitedFriends");


            SqlParameter[] par =
            {
                new SqlParameter("@receiverId", receiverId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }
        public DataTable getChatMessage(string senderId, string receiverId, string date)
        {
            cmd = dac.GetCommand("sp_getChatMessage");


            SqlParameter[] par =
            {
                new SqlParameter("@senderId", senderId),
                new SqlParameter("@receiverId", receiverId),
                new SqlParameter("@date", date)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        
        public DataTable getFriends(string receiverId)
        {
            cmd = dac.GetCommand("sp_getFriends");


            SqlParameter[] par =
            {
                new SqlParameter("@receiverId", receiverId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }


      
    }


}

