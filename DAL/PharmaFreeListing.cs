using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class PharmaFreeListing
    {

       

            private SqlCommand cmd;
            private SqlDataAdapter da;
            private DataSet ds;
            private Connections dac = new Connections();



            public int insertPharmacyDetails(string uniqueRandomId, string pharmacyName, string regNum, string licenseNum, string websiteUrl, string vatTaxRate, string vatTaxNum, string branches)
            {
                try
                {

                    cmd = dac.GetCommand("sp_insertPharmacyDetails");
                    SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@pharmacyName", pharmacyName),                                   
                                     new SqlParameter("@regNum", regNum),
                                        new SqlParameter("@licenseNum", licenseNum),     
                                             new SqlParameter("@websiteUrl", websiteUrl),    
                                   
                                        new SqlParameter("@vatTaxRate", vatTaxRate),                                   
                                     new SqlParameter("@vatTaxNum", vatTaxNum),
                                         new SqlParameter("@branches", branches)
                                    
            };

                    for (int i = 0; i < par.Length; i++)
                    {
                        cmd.Parameters.Add(par[i]);
                    }
                   
                    dac.EnsureOpen();
                    int Id = Convert.ToInt32(cmd.ExecuteScalar());
                    dac.Close();

                    return Id;
                }
                catch (Exception)
                {

                }
                return 0;




            }


            public int insertPharmacyAddress(string uniqueRandomId, string address, int city, int state, int country, string zipCode)
            {
                try
                {

                    cmd = dac.GetCommand("sp_insertPharmacyAddress");
                    SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@address", address),                                   
                                     new SqlParameter("@city", city),
                                        new SqlParameter("@state", state),     
                                             new SqlParameter("@country", country),    
                                   
                                        new SqlParameter("@zipCode", zipCode),                                  
                                  
            };

                    for (int i = 0; i < par.Length; i++)
                    {
                        cmd.Parameters.Add(par[i]);
                    }
                   
                    dac.EnsureOpen();
                    int Id = Convert.ToInt32(cmd.ExecuteScalar());
                    dac.Close();

                    return Id;
                }
                catch (Exception)
                {

                }
                return 0;




            }
         



           


            
        


    }
}
