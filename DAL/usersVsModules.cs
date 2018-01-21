using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class usersVsModules
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private Connections dac = new Connections();

        public void insertUsersVsModules(string userId, int moduleId, int packageId)
        {


            cmd = dac.GetCommand("sp_insertUsersVsModules");
            SqlParameter[] par = {
                                     new SqlParameter("@userId", userId),                                    
                                     new SqlParameter("@moduleId", moduleId) ,
                                      new SqlParameter("@packageId", packageId) 
                                
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }
        public void insertDoctorPackageSpeciality(string userId, string speciality)
        {


            cmd = dac.GetCommand("sp_insertDoctorPackageSpeciality");
            SqlParameter[] par = {
                new SqlParameter("@uniqueRandomId", userId),                                    
                new SqlParameter("@speciality", speciality) 
                                    

                                   
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
