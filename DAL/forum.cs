using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;


namespace DAL
{

    public class forum
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();
        public void insertDfTopic(string topicName, string description, DateTime dateTime, string userId)
        {


            cmd = dac.GetCommand("sp_insertDfTopic");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@topicName", topicName),
                                     new SqlParameter("@description", description),
                                        new SqlParameter("@dateTime", dateTime),
                                         new SqlParameter("@userId", userId)
                                    
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }
        public void insertDfThread( int topicId ,string subject, string message, DateTime dateTime, string dfFile, string userId, string reply)
        {


            cmd = dac.GetCommand("sp_insertDfThread");
            SqlParameter[] par = {
                                         new SqlParameter("@topicId", topicId),                         
                                     new SqlParameter("@subject", subject),
                                     new SqlParameter("@message", message),
                                       new SqlParameter("@dateTime", dateTime),
                                        new SqlParameter("@dfFile",dfFile),
                                          new SqlParameter("@userId", userId),
                                            new SqlParameter("@reply", reply)
                                         
                                    
                                    
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }






        public DataTable getDfTopic()
        {
            cmd = dac.GetCommand("sp_getDfTopic");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getDfThread()
        {
            cmd = dac.GetCommand("sp_getDfThread");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDfTopic(int id)
        {
            cmd = dac.GetCommand("sp_deleteDfTopic");
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
        public void deleteDfThread(int id)
        {
            cmd = dac.GetCommand("sp_deleteDfThread");
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

       

