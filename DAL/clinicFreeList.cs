using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public class clinicFreeList
    {
     
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private Connections dac = new Connections();
        public int insertClinicDetails(string uniqueRandomId, string clinic_Name, string clinic_Speciality, string clinic_Title, string website, string tagline, string email, string mobile_Number, int clinic_FoundedInYear, string clinic_Reg_No)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertClinicDetails");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@clinic_Name", clinic_Name),                                   
                                     new SqlParameter("@clinic_Speciality", clinic_Speciality),
                                        new SqlParameter("@clinic_Title", clinic_Title),     
                                             new SqlParameter("@website", website),    
                                   
                                        new SqlParameter("@tagline", tagline),                                   
                                     new SqlParameter("@email", email),
                                      new SqlParameter("@mobile_Number", mobile_Number),
                                       new SqlParameter("@clinic_FoundedInYear", clinic_FoundedInYear),                                   
                                     new SqlParameter("@clinic_Reg_No", clinic_Reg_No)
                                   
                                   
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


        public int insertClinicAddress(string uniqueRandomId, string address, int city, int state, int country, string zipCode, string tel_Num)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertClinicAddress");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@address", address),                                   
                                     new SqlParameter("@city", city),
                                        new SqlParameter("@state", state),     
                                             new SqlParameter("@country", country),    
                                   
                                        new SqlParameter("@zipCode", zipCode),                                   
                                     new SqlParameter("@tel_Num", tel_Num)
                                    
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



        public int insertClinicServices(string uniqueRandomId, string services, string facilities__Available, string vaccinations)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertClinicServices");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@services", services),                                   
                                     new SqlParameter("@facilities__Available", facilities__Available),
                                        new SqlParameter("@vaccinations", vaccinations)
                                    
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
                int Id1 = Convert.ToInt32(cmd.ExecuteScalar());
                dac.Close();

                return Id1;
            }
            catch (Exception)
            {

            }
            return 0;




        }



        public int insertClinicUpload(string uniqueRandomId, string uploadPhoto, string uploadGallery)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertClinicUpload");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@uploadPhoto", uploadPhoto),                                   
                                     new SqlParameter("@uploadGallery", uploadGallery)
                                       
                                    
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
                int Id1 = Convert.ToInt32(cmd.ExecuteScalar());
                dac.Close();

                return Id1;
            }
            catch (Exception)
            {

            }
            return 0;




        }


        //public int insertclinicWorkingHours(string uniqueRandomId, string day, string first_Half, string second_half)
        //{
        //    try
        //    {

        //        cmd = dac.GetCommand("sp_insertclinicWorkingHours");
        //        SqlParameter[] par = {
        //                             new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
        //                             new SqlParameter("@day", day),                                   
        //                             new SqlParameter("@first_Half", first_Half),
        //                                new SqlParameter("@second_half", second_half)
                                    
        //    };

        //        for (int i = 0; i < par.Length; i++)
        //        {
        //            cmd.Parameters.Add(par[i]);
        //        }
        //        //    dac.EnsureOpen();
        //        //    cmd.ExecuteNonQuery();
        //        //    dac.Close();
        //        //    return true;
        //        //}
        //        //catch (Exception)
        //        //{ }
        //        //finally
        //        //{
        //        //    dac.Close();
        //        //}
        //        //return false;
        //        dac.EnsureOpen();
        //        int Id1 = Convert.ToInt32(cmd.ExecuteScalar());
        //        dac.Close();

        //        return Id1;
        //    }
        //    catch (Exception)
        //    {

        //    }
        //    return 0;




        //}
    }





}
