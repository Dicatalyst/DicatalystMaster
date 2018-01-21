using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
   
     public class hospitalFreeListing
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private Connections dac = new Connections();
       
         public int insertHospitalDetails(string uniqueRandomId, string hospitalName, string hospitalSpecialities, string websites, string title, string hospitalRegNo, string email, string branches, string aboutUs)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertHospitalDetails");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@hospitalName", hospitalName),                                   
                                     new SqlParameter("@hospitalSpecialities", hospitalSpecialities),
                                        new SqlParameter("@websites", websites),     
                                             new SqlParameter("@title", title),    
                                   
                                        new SqlParameter("@hospitalRegNo", hospitalRegNo),                                   
                                     new SqlParameter("@email", email),
                                      new SqlParameter("@branches", branches),
                                       new SqlParameter("@aboutUs", aboutUs)                                   
                                     
                                   
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
                //    dac.EnsureOpen();
                //    cmd.ExecuteNonQuery();
                //    dac.Close();
                //    return true;
                //}
                //catch (Exception)
                //{ }
                //finally
                //{
                //    dac.Close();
                //}
                //return false;
                dac.EnsureOpen();
                int userId = Convert.ToInt32(cmd.ExecuteScalar());
                dac.Close();

                return userId;
            }
            catch (Exception)
            {

            }
            return 0;




        }
         public int insertDoctorDetails(string uniqueRandomId, string doctorName, string qualification, string specialization, string consultationtype, string experience, string timings, string uploadPhoto)
         {
             try
             {

                 cmd = dac.GetCommand("sp_insertDoctorDetails");
                 SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@doctorName", doctorName),                                   
                                     new SqlParameter("@qualification", qualification),
                                        new SqlParameter("@specialization", specialization),     
                                            
                                   
                                        new SqlParameter("@consultationtype", consultationtype),                                   
                                     new SqlParameter("@experience", experience),
                                      new SqlParameter("@timings", timings),
                                       new SqlParameter("@uploadPhoto", uploadPhoto)                                   
                                     
                                   
            };

                 for (int i = 0; i < par.Length; i++)
                 {
                     cmd.Parameters.Add(par[i]);
                 }
                 //    dac.EnsureOpen();
                 //    cmd.ExecuteNonQuery();
                 //    dac.Close();
                 //    return true;
                 //}
                 //catch (Exception)
                 //{ }
                 //finally
                 //{
                 //    dac.Close();
                 //}
                 //return false;
                 dac.EnsureOpen();
                 int userId = Convert.ToInt32(cmd.ExecuteScalar());
                 dac.Close();

                 return userId;
             }
             catch (Exception)
             {

             }
             return 0;




         }

         public int insertContactDetails(string uniqueRandomId, string address, string telephoneNo, string pinCode)
         {
             try
             {

                 cmd = dac.GetCommand("sp_insertDoctorDetails");
                 SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@address", address),                                   
                                     new SqlParameter("@telephoneNo", telephoneNo),
                                        new SqlParameter("@pinCode", pinCode)   
                                            
                                   
                                                         
                                     
                                   
            };

                 for (int i = 0; i < par.Length; i++)
                 {
                     cmd.Parameters.Add(par[i]);
                 }
                 //    dac.EnsureOpen();
                 //    cmd.ExecuteNonQuery();
                 //    dac.Close();
                 //    return true;
                 //}
                 //catch (Exception)
                 //{ }
                 //finally
                 //{
                 //    dac.Close();
                 //}
                 //return false;
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
