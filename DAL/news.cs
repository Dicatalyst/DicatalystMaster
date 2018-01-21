using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class news
    {

        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();




        public void insertNews(string title, string description, string referenceLink, string flPicture, DateTime dateTime, bool isActive)
        {


            cmd = dac.GetCommand("sp_insertNews");
            SqlParameter[] par = {
                new SqlParameter("@title", title),                         
                new SqlParameter("@description", description),
                new SqlParameter("@referenceLink", referenceLink),
                new SqlParameter("@flPicture", flPicture),
                new SqlParameter("@dateTime",dateTime),
                new SqlParameter("@isActive", isActive)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public DataTable getNews()
        {
            cmd = dac.GetCommand("sp_getNews");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }




    }
}
