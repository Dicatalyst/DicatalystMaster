using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{

    public class message
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();

        public void insertMessage(string subject, string message, string fileAttachment, string fromUserId, string toUserId, DateTime dateTime, bool trash, bool isDeleted, int messageReplyId)
        {


            cmd = dac.GetCommand("sp_insertMessage");
            SqlParameter[] par = {
                new SqlParameter("@subject", subject),                         
                new SqlParameter("@message", message),
                new SqlParameter("@fileAttachment", fileAttachment),
                new SqlParameter("@fromUserId", fromUserId),
                new SqlParameter("@toUserId",toUserId),
                new SqlParameter("@dateTime", dateTime),
                new SqlParameter("@trash", trash),
                                         
                new SqlParameter("@isDeleted", isDeleted),
                new SqlParameter("@messageReplyId", messageReplyId)
                                    
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        public DataTable getMessage()
        {
            cmd = dac.GetCommand("sp_getMessage");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public DataTable getTrashMessage()
        {
            cmd = dac.GetCommand("sp_getTrashMessage");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public DataTable getInboxMessages()
        {
            cmd = dac.GetCommand("sp_getInboxMessages");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public void deleteMessage(int id)
        {
            cmd = dac.GetCommand("sp_deleteMessage");
            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }
        public void MoveToTrash(int id)
        {
            cmd = dac.GetCommand("sp_MoveToTrash");
            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }

        public void ForwardMessage(int id)
        {
            cmd = dac.GetCommand("sp_ForwardMessage");


            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

    }
}
