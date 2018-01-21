using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class advertisements
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();




       
        public void insertGlobalAdveritsement(string adTitle,string adFile,string customerName,string customerMobile,string customerAddress,string customerEmail,int customerAmountPaid,int adDuration,DateTime adStartDate,bool isActive)

        {


            cmd = dac.GetCommand("sp_insertGlobalAdveritsement");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@adTitle", adTitle),
                                     new SqlParameter("@adFile", adFile),
                                        new SqlParameter("@customerName", customerName),
                                         new SqlParameter("@customerMobile", customerMobile),
                                           new SqlParameter("@customerAddress", customerAddress),
                                     new SqlParameter("@customerEmail", customerEmail),
                                        new SqlParameter("@customerAmountPaid", customerAmountPaid),
                                         new SqlParameter("@adDuration", adDuration),
                                          new SqlParameter("@adStartDate", adStartDate),
                                         new SqlParameter("@isActive", isActive),


                                    
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }
        public void insertSpecialityLocationSpecificAd(int specialityId, int countryId, int stateId, int cityId, int localityId, string adTitle, string adFile, string customerName, string customerMobile, string customerAddress, string customerEmail, int customerAmountPaid, int adDuration, DateTime adStartDate, bool isActive)
        {


            cmd = dac.GetCommand("sp_insertSpecialityLocationSpecificAd");
            SqlParameter[] par = {
                                      new SqlParameter("@specialityId", specialityId),
                                     new SqlParameter("@countryId", countryId),
                                        new SqlParameter("@stateId", stateId),
                                         new SqlParameter("@cityId", cityId),    
                                           
                                     new SqlParameter("@localityId", localityId),
                                          new SqlParameter("@adTitle", adTitle),
                                     new SqlParameter("@adFile", adFile),
                                        new SqlParameter("@customerName", customerName),
                                         new SqlParameter("@customerMobile", customerMobile),
                                           new SqlParameter("@customerAddress", customerAddress),
                                     new SqlParameter("@customerEmail", customerEmail),
                                        new SqlParameter("@customerAmountPaid", customerAmountPaid),
                                         new SqlParameter("@adDuration", adDuration),
                                          new SqlParameter("@adStartDate", adStartDate),
                                         new SqlParameter("@isActive", isActive),


                                    
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }


        public DataTable getGlobalAdvertisements()
        {
            cmd = dac.GetCommand("sp_getGlobalAdvertisements");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteGlobalAdvertisement(int id)
        {
            cmd = dac.GetCommand("sp_deleteGlobalAdvertisement");
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

        public DataTable getLocationSpecificAdvertisements()
        {
            cmd = dac.GetCommand("sp_getLocationSpecificAdvertisements");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteLocationSpecificAdvertisements(int id)
        {
            cmd = dac.GetCommand("sp_deleteLocationSpecificAdvertisements");
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
