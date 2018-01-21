using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    
    public class users
    {
        private SqlCommand cmd;       
        private DataSet ds;
        private DAL.Connections dac = new Connections();

        public int insertRegistrationDetails(string uniqueRandomId, string fullName, string email, string contactNumber, string password, DateTime dateTime, bool isActive, bool isSuspended, bool isDeleted, string picture, int userType)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertRegistrationDetails");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@fullName", fullName),                                   
                                     new SqlParameter("@email", email),
                                        new SqlParameter("@contactNumber", contactNumber),     
                                             new SqlParameter("@password", password),    
                                     new SqlParameter("@dateTime", dateTime),
                                        new SqlParameter("@isActive", isActive),                                   
                                     new SqlParameter("@isSuspended", isSuspended),
                                      new SqlParameter("@isDeleted", isDeleted),
                                       new SqlParameter("@picture", picture),
                                      new SqlParameter("@userType", userType)

                                   
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


        public void insertUniqueCodeForResetPassword(string randomId,  string email)
        {
            

                cmd = dac.GetCommand("sp_insertUniqueCodeForResetPassword");
                SqlParameter[] par = {
                    new SqlParameter("@randomId", randomId),                                    
                    new SqlParameter("@email", email),                                   
                    
                                   
                };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();





        }


        public string getUniqueRandomIdbyUserId(int userId)
        {
            cmd = dac.GetCommand("sp_getUniqueRandomIdbyUserId");
            SqlParameter[] par = {
                                     new SqlParameter("@id", userId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0].Rows[0][0].ToString();
        }

        public DataTable getDoctorDatabyUserId(string uniqueRandomId)
        {
            cmd = dac.GetCommand("sp_getDoctorDatabyUserId");
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

      

        public void activateUsers(string uniqueRandomId)
        {


            cmd = dac.GetCommand("[sp_activateUsers]");
            SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId)                                   
                                                           
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }











        public void ResetPassword(string email,string password)
        {


            cmd = dac.GetCommand("[sp_ResetPassword]");
            SqlParameter[] par = {

                new SqlParameter("@email", email),   
                new SqlParameter("@password", password)                                 
                                                           
                                 

                                   
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }




        public DataTable getResetPassword(string randomId)
        {


            cmd = dac.GetCommand("[sp_getResetPassword]");
            SqlParameter[] par = {
                new SqlParameter("@randomId", randomId)                                   
                                                           
                                    

                                   
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }










        public DataTable getActivatedUserDetails(string uniqueRandomId)
        {
            cmd = dac.GetCommand("sp_getActivatedUserDetails");
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
        public DataTable getLoginDetails(string email, string password, int userType)
        {
            cmd = dac.GetCommand("sp_getLoginDetails");
            SqlParameter[] par = {
                                     new SqlParameter("@email", email),
                                       new SqlParameter("@password", password),
                                       new SqlParameter("@userType", userType)

                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);

            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable getModuleDetails(string uniqueRandomId)
        {
            cmd = dac.GetCommand("sp_getModuleDetails");
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

        public DataTable checkUserEmail(string email, int userTypeId)
        {
            cmd = dac.GetCommand("sp_checkUserEmail");
            SqlParameter[] par = {
                new SqlParameter("@email", email),
                new SqlParameter("@userType", userTypeId)

            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);

            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);

            return ds.Tables[0];
        }
        //AdminLogin

        public DataTable getAdminLoginDetails(string username, string password)
        {
            cmd = dac.GetCommand("sp_getAdminLoginDetails");
            SqlParameter[] par = {
                                     new SqlParameter("@username", username),
                                       new SqlParameter("@password", password)

                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);

            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable GetRating(string userId)
        {
            cmd = dac.GetCommand("sp_getRating");
            SqlParameter[] par = {
                new SqlParameter("@userId", userId)
              

            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);

            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getUserAccessPermissionsToDisplay(int adminTypeId)
        {
            cmd = dac.GetCommand("sp_getUserAccessPermissionsToDisplay");
            SqlParameter[] par = {
                new SqlParameter("@adminTypeId", adminTypeId)
              

            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);

            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
       
        public DataTable getLoginUserDetails(string uniqueRandomId)
        {
            cmd = dac.GetCommand("sp_getLoginUserDetails");
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
        public DataTable getChatMembers(string uniqueRandomId)
        {
            cmd = dac.GetCommand("sp_getChatMembers");
            
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
        public DataTable getUserDetailsByEmail(string email)
        {
            cmd = dac.GetCommand("sp_getUserDetailsByEmail");
            
            SqlParameter[] par = {
                new SqlParameter("@email", email)

            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);

            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        //Changes By Ram Start

        public void Updatepatientdtls(string RandomId, string Name, int Age, string Mobile, string Occupation, string Complaint)
        {
            cmd = dac.GetCommand("[USP_Update_Patient_dtls]");
            SqlParameter[] par = {

                new SqlParameter("@RandomId", RandomId),
                new SqlParameter("@Name", Name),
                new SqlParameter("@Age", Age),
                new SqlParameter("@Mobile", Mobile),
                new SqlParameter("@Occupation", Occupation),
                new SqlParameter("@ChiefComplaint", Complaint),
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void DeleteAppointMent(int AppointmentId)
        {
            cmd = dac.GetCommand("[USP_Delete_Appointment]");
            SqlParameter[] par = {

                new SqlParameter("@AppointmentId", AppointmentId)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        //Changes by Ram End
    }
}
