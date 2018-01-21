using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{


    public class resources
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();



        public void insertResources(string uniqueRandomId,int specialization, string resourceTitle, string email, string contactNo, string author, string fileUpload, string referenceLink, DateTime dateTime, bool isActive, string description, string DoctorId)
        {


            cmd = dac.GetCommand("sp_insertResources");
            SqlParameter[] par = {
                new SqlParameter("@uniqueRandomId", uniqueRandomId),    
                new SqlParameter("@specialization", specialization),                         
                new SqlParameter("@resourceTitle", resourceTitle),
                new SqlParameter("@email", email),
                new SqlParameter("@contactNo", contactNo),
                new SqlParameter("@Author",author),
                new SqlParameter("@fileUpload", fileUpload),
                new SqlParameter("@referenceLink", referenceLink),
                new SqlParameter("@dateTime",dateTime),
                new SqlParameter("@isActive", isActive),
                new SqlParameter("@description", description),
                new SqlParameter("@doctorId", DoctorId)





            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }






        public void insertGlobalResources(int specialization, string resourceTitle, string email, string contactNo, string Author, string fileUpload, string referenceLink, DateTime dateTime, bool isActive, string description)
        {


            cmd = dac.GetCommand("sp_insertGlobalResources");
            SqlParameter[] par = {
                  
                new SqlParameter("@specialization", specialization),                         
                new SqlParameter("@resourceTitle", resourceTitle),
                new SqlParameter("@email", email),
                new SqlParameter("@contactNo", contactNo),
                new SqlParameter("@Author",Author),
                new SqlParameter("@fileUpload", fileUpload),
                new SqlParameter("@referenceLink", referenceLink),
                new SqlParameter("@dateTime",dateTime),
                new SqlParameter("@isActive", isActive),
                new SqlParameter("@description", description)
               
               
                                         
                                  
                                    
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }


        public DataTable getResources()
        {
            cmd = dac.GetCommand("sp_getResources");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public int DeleteResource(string UniqueId)
        {
            int j = 0;
            cmd = dac.GetCommand("USP_DeleteResource");
            SqlParameter[] par = {
                new SqlParameter("@UniqueId", UniqueId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
           j = cmd.ExecuteNonQuery();
            dac.Close();
            return j;

        }

        public DataTable getDentistResources(string uniqueRandomId)
        {
            cmd = dac.GetCommand("sp_getDentistResources");
            SqlParameter[] par = {
                new SqlParameter("@uniqueRandomId", uniqueRandomId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }





        public void deleteResources(int id)
        {
            cmd = dac.GetCommand("sp_deleteResources");
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
