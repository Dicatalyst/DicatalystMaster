using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{

    public class AddPatient
    {

        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private Connections dac = new Connections();

        public void insertAddPatient(string uniqueRandomId, string salutation, int age, int maritalStatus, int gender,  string occupation, string chiefComplaint, int consultationFee, string address, string doctorId)
        {
            cmd = dac.GetCommand("sp_insertAddPatient");
            SqlParameter[] par = {
            new SqlParameter("@uniqueRandomId", uniqueRandomId),       
            new SqlParameter("@salutation", salutation),                                    
            new SqlParameter("@age", age),  
            new SqlParameter("@maritalStatus", maritalStatus) ,
            new SqlParameter("@gender", gender)  ,
            new SqlParameter("@occupation", occupation),
            new SqlParameter("@chiefComplaint", chiefComplaint)  ,
            new SqlParameter("@consultationFee", consultationFee),
            new SqlParameter("@address",address),
            new SqlParameter("@doctorId", doctorId),                                    
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }          
            dac.EnsureOpen();           
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void insertPatientFromPatient(string uniqueRandomId, string salutation, int age, int maritalStatus, int gender, string occupation, string chiefComplaint, int consultationFee, string address, string doctorId,int appointmentId)
        {
            cmd = dac.GetCommand("sp_insertPatientFromPatient");
            SqlParameter[] par = {
            new SqlParameter("@uniqueRandomId", uniqueRandomId),
            new SqlParameter("@salutation", salutation),
            new SqlParameter("@age", age),
            new SqlParameter("@maritalStatus", maritalStatus) ,
            new SqlParameter("@gender", gender)  ,
            new SqlParameter("@occupation", occupation),
            new SqlParameter("@chiefComplaint", chiefComplaint)  ,
            new SqlParameter("@consultationFee", consultationFee),
            new SqlParameter("@address",address),
            new SqlParameter("@doctorId", doctorId),
             new SqlParameter("@AppointmentId", appointmentId),
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        public void UpdateAddPatientDetails(int appointmentId, string salutation, int age, int maritalStatus, int gender, string occupation, string chiefComplaint, int consultationFee, string address, string doctorId)
        {
            cmd = dac.GetCommand("sp_UpdateAddPatient");
            SqlParameter[] par = {
             new SqlParameter("@appointmentId", appointmentId),
             new SqlParameter("@salutation", salutation),
             new SqlParameter("@age", age),
             new SqlParameter("@maritalStatus", maritalStatus) ,
             new SqlParameter("@gender", gender)  ,
             new SqlParameter("@occupation", occupation),
             new SqlParameter("@chiefComplaint", chiefComplaint)  ,
             new SqlParameter("@consultationFee", consultationFee),
             new SqlParameter("@address",address),
             new SqlParameter("@doctorId", doctorId),
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }


        public void insertAddClinicPatient(string uniqueRandomId, string salutation, int age, string maritalStatus, string gender, string occupation, string chiefComplaint, int consultationFee)
        {
            cmd = dac.GetCommand("sp_insertAddClinicPatient");
            SqlParameter[] par = {
            new SqlParameter("@uniqueRandomId", uniqueRandomId),       
            new SqlParameter("@salutation", salutation),                                    
            new SqlParameter("@age", age),  
            new SqlParameter("@maritalStatus", maritalStatus) ,
            new SqlParameter("@gender", gender)  ,
            new SqlParameter("@occupation", occupation),
            new SqlParameter("@chiefComplaint", chiefComplaint)  ,
            new SqlParameter("@consultationFee", consultationFee)   
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        public void insertAddHospitalPatient(string uniqueRandomId, string salutation, int age, string maritalStatus, string gender, string occupation, string chiefComplaint, int consultationFee)
        {
            cmd = dac.GetCommand("sp_insertAddHospitalPatient");
            SqlParameter[] par = {
            new SqlParameter("@uniqueRandomId", uniqueRandomId),       
            new SqlParameter("@salutation", salutation),                                    
            new SqlParameter("@age", age),  
            new SqlParameter("@maritalStatus", maritalStatus) ,
            new SqlParameter("@gender", gender)  ,
             new SqlParameter("@occupation", occupation),
             new SqlParameter("@chiefComplaint", chiefComplaint)  ,
             new SqlParameter("@consultationFee", consultationFee)   
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void insertDentistAddPatient(string uniqueRandomId, string salutation, int age, string maritalStatus, string gender, string occupation, string chiefComplaint, int consultationFee,string address)
        {
            cmd = dac.GetCommand("sp_insertDentistAddPatient");
            SqlParameter[] par = {
            new SqlParameter("@uniqueRandomId", uniqueRandomId),       
            new SqlParameter("@salutation", salutation),                                    
            new SqlParameter("@age", age),  
            new SqlParameter("@maritalStatus", maritalStatus) ,
            new SqlParameter("@gender", gender)  ,
            new SqlParameter("@occupation", occupation),
            new SqlParameter("@chiefComplaint", chiefComplaint)  ,
            new SqlParameter("@consultationFee", consultationFee)  ,
            new SqlParameter("@address", address)       
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public int insertRegistrationDetails(string uniqueRandomId, string fullName, string email, string contactNumber, string password, DateTime dateTime, bool isActive, bool isSuspended, bool isDeleted)
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
                                     new SqlParameter("@isDeleted", isDeleted)                                  
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

            dac.EnsureOpen();
            string uniqueRandomId = cmd.ExecuteScalar().ToString();
            dac.Close();

            return uniqueRandomId;
        }
        public DataTable getfee(string uniqueRandomId)
        {
            cmd = dac.GetCommand("sp_getfee");
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



        public DataTable getPatientDetails(string doctorId)
        {
            cmd = dac.GetCommand("sp_getPatientDetails");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deletePatientDetails(int id)
        {
            cmd = dac.GetCommand("sp_deletePatientDetails");
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

        public DataTable getPatientAppointmentDetails(string doctorId)
        {
            cmd = dac.GetCommand("sp_getPatientAppointmentDetails");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable getPatientPrescriptionDetails(string patientId)
        {
            cmd = dac.GetCommand("sp_patientPrescriptionDetails");

            SqlParameter[] par = {
                new SqlParameter("@patientId", patientId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public DataTable getAllPatientAppointmentDetails(string doctorId, string patientId)
        {
            cmd = dac.GetCommand("sp_getAllAppointmentDetailsForPatient");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId),
                new SqlParameter("@userId", patientId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable getDoctorAppointmentForNonRegistered(string doctorId, DateTime startdate, DateTime enddate)
        {
            cmd = dac.GetCommand("sp_getAllAppointmentDetailsForNonRegisteredUser");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId),
                new SqlParameter("@startdate", startdate),
                 new SqlParameter("@enddate", enddate)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public void CreateAppointmentsByDoctorTimings(string doctorId, int slot, DateTime startdate, DateTime enddate)
        {
            cmd = dac.GetCommand("sp_CreateAppointmentsByDoctorTimings");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId),
                new SqlParameter("@slot", slot),
                new SqlParameter("@appCreateStartdate", startdate),
                 new SqlParameter("@appCreateEnddate", enddate)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void DeleteAppointmentsByStartandEnddate(string doctorId, DateTime startdate, DateTime enddate)
        {
            cmd = dac.GetCommand("sp_DeleteAppointmentsByStartandEnddate");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId),
                new SqlParameter("@appCreateStartdate", startdate),
                new SqlParameter("@appCreateEnddate", enddate)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        //Changes by Ram start

        public DataTable getPatientProfile(string patientId)
        {
            cmd = dac.GetCommand("USP_Get_PatientProfile");

            SqlParameter[] par = {
                new SqlParameter("@PatientId", patientId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public int UpdatePatientProfile(string patientId, string Salutation, string Name, string Mobile, int Age, int Gender, string occupation, string Address, int MaritalStatus)
        {
            int result = 0;
            dac.EnsureOpen();
            cmd = dac.GetCommand("USP_Update_Patient_Profile");

            SqlParameter[] par = {
                new SqlParameter("@PatientId", patientId),
                new SqlParameter("@Salutation", Salutation),
                new SqlParameter("@Name", Name),
                new SqlParameter("@Mobile", Mobile),
                new SqlParameter("@Age", Age),
                new SqlParameter("@Gender", Gender),
                new SqlParameter("@Occupation", occupation),
                new SqlParameter("@Address", Address),
                new SqlParameter("@MaritalStatus", MaritalStatus)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            result = cmd.ExecuteNonQuery();
            dac.Close();
            return result;
        }

        //Changes by Ram end


    }


}
