using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
    public class userLogins
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private DAL.Connections dc = new DAL.Connections();

        public DataTable GetAdminLoginDetails(string txtUsername, string txtPassword)
        {
            cmd = dc.GetCommand("sp_GetAdminLoginDetails");
            SqlParameter[] par = {
                new SqlParameter("@username", txtUsername),
                new SqlParameter("@password", txtPassword)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable GetAdminUsersLoginDetails(string txtUsername, string txtPassword)
        {
            cmd = dc.GetCommand("sp_GetAdminUsersLoginDetails");
            SqlParameter[] par = {
                new SqlParameter("@username", txtUsername),
                new SqlParameter("@password", txtPassword)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }
    }
}
