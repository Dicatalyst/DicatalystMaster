using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class addressBook
    {
          private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();
        public void insertDentistAddressBook(string doctorId, string name, string dateOfBirth, string mobileNo, string address,
            string email,string occupation,string organization,string workAddress,string workPhone,string workEmail,
           string faceBook,string youTube,string linkedIn,string twitter,string google)
        {

            cmd = dac.GetCommand("sp_insertDentistAddressBook");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@name", name),
                                        new SqlParameter("@dateOfBirth", dateOfBirth),
                                         new SqlParameter("@mobileNo", mobileNo),
                                          new SqlParameter("@address", address),
                                     new SqlParameter("@email", email),
                                        new SqlParameter("@occupation", occupation),
                                         new SqlParameter("@organization", organization),
                                          new SqlParameter("@workAddress", workAddress),
                                     new SqlParameter("@workPhone", workPhone),
                                        new SqlParameter("@workEmail", workEmail),
                                         new SqlParameter("@faceBook", faceBook),
                                          new SqlParameter("@youTube", youTube),
                                     new SqlParameter("@linkedIn", linkedIn),
                                        new SqlParameter("@twitter", twitter),
                                         new SqlParameter("@google", google)
                                    
                                    
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }




        public DataTable getdentistAddressBook()
        {
            cmd = dac.GetCommand("sp_getdentistAddressBook");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public void deleteDentistAddressBook(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentistAddressBook");
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
