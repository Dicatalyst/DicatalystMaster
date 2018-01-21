using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
   public class userlevels
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private DAL.Connections dc = new DAL.Connections();

        public DataTable getProjectModules()
        {
            cmd = dc.GetCommand("sp_getProjectModules");
            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public void InsertUserLevels(int userTypeId, int pageId, bool read, bool write, bool edit, bool delete)
        {
            cmd = dc.GetCommand("sp_insertUserLevels");

            SqlParameter[] par = {
                new SqlParameter("@adminTypeId", userTypeId),
                new SqlParameter("@pageId", pageId),
                new SqlParameter("@read", read),
                new SqlParameter("@write", write),
                new SqlParameter("@edit", edit),
                new SqlParameter("@delete", delete)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dc.EnsureOpen();
            cmd.ExecuteNonQuery();
            dc.Close();
        }

        public DataTable insertUserTypes(string userTypeName)
        {
            cmd = dc.GetCommand("sp_insertUserTypes");

            SqlParameter[] par = {
                new SqlParameter("@userTypeName", userTypeName)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getUserLevels()
        {
            cmd = dc.GetCommand("sp_getUserLevels");
            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getassociatedModulestoUsertype(int id)
        {
            cmd = dc.GetCommand("sp_getassociatedModulestoUsertype");

            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getUserLevels(int id)
        {
            cmd = dc.GetCommand("sp_getUserLevels");

            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable adminprivilege(int adminTypeId, int pageId)
        {
            cmd = dc.GetCommand("sp_adminprivilege");

            SqlParameter[] par = {
                new SqlParameter("@adminTypeId", adminTypeId),
                new SqlParameter("@pageId", pageId)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getAdminTypeId(int userId)
        {
            cmd = dc.GetCommand("sp_getAdminTypeId");

            SqlParameter[] par = {
                new SqlParameter("@id", userId)
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
