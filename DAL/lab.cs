using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class lab
    {
        
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();
        public void insertConsultantDoctor(string labId ,
	string doctorName  ,
	string qualification ,
	string specialization,
	string department ,
	int age  ,
	int gender  ,
	string clinicAddress ,
	int clinicArea ,
	int clinicCity ,
	string clinicPinCode ,
	string clinicPhoneNo ,
	string primaryContactAddress ,
	int primaryContactArea ,
	int primaryContactCity ,
    string primaryContactPinCode,
	string primaryContactMobileNo)
        {


            cmd = dac.GetCommand("sp_insertConsultantDoctor");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@labId", labId),
                                     new SqlParameter("@doctorName", doctorName),
                                        new SqlParameter("@qualification", qualification),
                                         new SqlParameter("@specialization", specialization),
                                          new SqlParameter("@department", department),
                                          new SqlParameter("age",age),

                                           new SqlParameter("gender",gender),
                                           new SqlParameter("clinicAddress",clinicAddress),
                                           new SqlParameter("clinicArea",clinicArea),
                                           new SqlParameter("clinicCity",clinicCity),
                                           new SqlParameter("clinicPinCode",clinicPinCode),
                                           new SqlParameter("clinicPhoneNo",clinicPhoneNo),
                                           new SqlParameter("primaryContactAddress",primaryContactAddress),

                                           new SqlParameter("primaryContactArea",primaryContactArea),
                                           new SqlParameter("primaryContactCity",primaryContactCity),
                                           new SqlParameter("primaryContactPinCode",primaryContactPinCode),
                                               new SqlParameter("primaryContactMobileNo",primaryContactMobileNo)
                                    
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }


        public DataTable getLabConsultantDoctor(string labId)
        {
            cmd = dac.GetCommand("[sp_getLabConsultantDoctor]");
            SqlParameter[] par = {
                new SqlParameter("@labId", labId)
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
