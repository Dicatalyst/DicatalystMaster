using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class media
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();



        public void insertDentistMedia(string title, string uploadFile, string video, string reference, string description, string author, DateTime publishOn, string publishIn, DateTime dateTime, bool isActive)
        {


            cmd = dac.GetCommand("sp_insertDentistMedia");
            SqlParameter[] par = {
                new SqlParameter("@title", title),                         
                new SqlParameter("@uploadFile", uploadFile),
                new SqlParameter("@video", video),
                new SqlParameter("@reference", reference),
                new SqlParameter("@description",description),
                new SqlParameter("@author", author),
                new SqlParameter("@publishOn", publishOn),
                new SqlParameter("@publishIn",publishIn),
                new SqlParameter("@dateTime", dateTime),
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


        public DataTable getDentistMedia()
        {
            cmd = dac.GetCommand("sp_getDentistMedia");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDentistMedia(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentistMedia");
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
