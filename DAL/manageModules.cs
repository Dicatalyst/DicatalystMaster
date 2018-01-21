using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class manageModules
    {
        private SqlCommand _cmd;
        private DataSet _ds;
        private readonly DAL.Connections _dac = new Connections();

        public void InsertDoctorData(string uniqueRandomId, string aboutMe, int yearOfExperience, string designation, string address, string street, string education, string awardsRecognitions, string memberships, string registrations, int fee, string practiceName, string speciality, string services, string state, string city, string countryId, int zipCode, decimal latitude, decimal longitude, string website,bool preferredDoctor, string picture)
        {


            _cmd = _dac.GetCommand("sp_insertDoctorData");
            SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId",uniqueRandomId),                                    
                                    
                                     new SqlParameter("@aboutMe", aboutMe), 

                                     new SqlParameter("@yearOfExperience",yearOfExperience),

                                     new SqlParameter("@designation",designation),
                                      
                                     new SqlParameter("@address",address),

                new SqlParameter("@street",street),


                                     new SqlParameter("@education",education),

                                     new SqlParameter("@awardsRecognitions",awardsRecognitions),
                                     new SqlParameter("@memberships",memberships),

                                     new SqlParameter("@registrations",registrations),

                                     new SqlParameter("@fee",fee),

                                     new SqlParameter("@practiceName",practiceName),
                                     new SqlParameter("@speciality",speciality),
                                     
                                      new SqlParameter("@services",services),

                new SqlParameter("@state",state),
                new SqlParameter("@city",city),
                new SqlParameter("@countryId",countryId),
                new SqlParameter("@zipCode",zipCode),
                new SqlParameter("@latitude",latitude),
                new SqlParameter("@longitude",longitude),
                new SqlParameter("@website",website),
                new SqlParameter("@preferredDoctor",preferredDoctor),
                                                          //new SqlParameter("@picture",picture)
                                    
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
        public void InsertDoctorTimings(string uniqueRandomId, int dayId, DateTime fFrom, DateTime fTo, DateTime sFrom, DateTime sTo)
        {



            _cmd = _dac.GetCommand("sp_insertDoctorTimings");
            SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId",uniqueRandomId),                                    
                                    
                                     new SqlParameter("@dayId", dayId), 

                                     new SqlParameter("@fFrom",fFrom),


                                     
                                     new SqlParameter("@fTo",fTo),
                                      new SqlParameter("@sFrom",sFrom),

                                     new SqlParameter("@sTo",sTo)
                               
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }



        public void insertMedicineType(string medicineTypeName, string dose)
        {



            _cmd = _dac.GetCommand("sp_insertMedicineType");
            SqlParameter[] par = {
                new SqlParameter("@medicineTypeName",medicineTypeName),                                    
                                    
                new SqlParameter("@dose", dose)
                               
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
        public void insertDoctorPrescription(int medicineTypeId, string medicineName, string dose, int quantity, int days, int perDay, string comments, string dayintervals)
        {



            _cmd = _dac.GetCommand("sp_insertDoctorPrescription");
            SqlParameter[] par = {
                new SqlParameter("@medicineTypeId",medicineTypeId),                                    
                                    
                new SqlParameter("@medicineName", medicineName), 

                new SqlParameter("@dose",dose),


                                     
                new SqlParameter("@quantity",quantity),
                new SqlParameter("@days",days),

                new SqlParameter("@perDay",perDay),
                new SqlParameter("@comments",comments),
                new SqlParameter("@intervalId",dayintervals)
                               
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }

        public DataTable GetDays()
        {


            _cmd = _dac.GetCommand("sp_getDays");
            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }

        public DataTable GetDoctorDataForManageDoctor()
        {


            _cmd = _dac.GetCommand("sp_getDoctorDataForManageDoctor");

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }







        public DataTable getDoctorProfile(string uniqueRandomId)
        {


            _cmd = _dac.GetCommand("sp_getDoctorProfile");
            SqlParameter[] par =
            {
                new SqlParameter("@uniqueRandomId", uniqueRandomId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];


        }


        public DataTable GetDoctorTimings(string uniqueRandomId)
        {


            _cmd = _dac.GetCommand("sp_getDoctorTimings");
            SqlParameter[] par =
            {
                new SqlParameter("@uniqueRandomId", uniqueRandomId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];


        }

        public DataTable ViewDoctorTimings(string uniqueRandomId)
        {
            _cmd = _dac.GetCommand("sp_ViewDoctorTimings");
            SqlParameter[] par =
            {
                new SqlParameter("@uniqueRandomId", uniqueRandomId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];
        }
        public DataTable GetClinicData()
        {
            _cmd = _dac.GetCommand("sp_getClinicData");

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }
        public DataTable GetHospitalData()
        {
            _cmd = _dac.GetCommand("sp_getHospitalData");

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }
        public DataTable GetLabData()
        {
            _cmd = _dac.GetCommand("sp_getLabData");

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }
        public DataTable GetPharmaData()
        {
            _cmd = _dac.GetCommand("sp_getPharmaData");

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }
        public DataTable getMedicineType()
        {


            _cmd = _dac.GetCommand("sp_getMedicineType");

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }
        public void DeleteDoctorData(int id)
        {
            _cmd = _dac.GetCommand("sp_deleteDoctorData");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
        public void DeleteClinictData(int id)
        {
            _cmd = _dac.GetCommand("sp_deleteClinictData");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }

        public void deletePharmaData(int id)
        {
            _cmd = _dac.GetCommand("sp_deletePharmaData");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
        public void deleteLabData(int id)
        {
            _cmd = _dac.GetCommand("sp_deleteLabData");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
        public void deleteHospitalData(int id)
        {
            _cmd = _dac.GetCommand("sp_deleteHospitalData");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
        public void deleteMedicineType(int id)
        {
            _cmd = _dac.GetCommand("sp_deleteMedicineType");
            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
        public string getUniqueRandomIdbyUserId(int userId)
        {
            _cmd = _dac.GetCommand("sp_getUniqueRandomIdbyUserId");
            SqlParameter[] par = {
                                     new SqlParameter("@id", userId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            string uniqueRandomId = _cmd.ExecuteScalar().ToString();
            _dac.Close();

            return uniqueRandomId;
        }
        public int insertRegistrationDetails(string uniqueRandomId, string fullName, string email, string contactNumber, string password, DateTime dateTime, bool isActive, bool isSuspended, bool isDeleted, string picture)
        {
            try
            {
                int x = 0;

                _cmd = _dac.GetCommand("sp_insertRegistrationDetails");
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
                                     new SqlParameter("@userType",Convert.ToInt32(x))


            };

                for (int i = 0; i < par.Length; i++)
                {
                    _cmd.Parameters.Add(par[i]);
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
                _dac.EnsureOpen();
                int userId = Convert.ToInt32(_cmd.ExecuteScalar());
                _dac.Close();

                return userId;
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception caught here" + e.ToString());
            }
            return 0;




        }
        public void editManageDoctor(int id, string fullName, int yearOfExperience, string designation, string address,  int fee,int contactNumber,string email,  string practiceName, int speciality,  string website)
        {
            _cmd = _dac.GetCommand("sp_editManageDoctor");
            SqlParameter[] par = {
                new SqlParameter("@id", id),
                new SqlParameter("@fullName", fullName),
                new SqlParameter("@yearOfExperience", yearOfExperience),
                new SqlParameter("@designation", designation),
                new SqlParameter("@address", address),
                
                new SqlParameter("@fee", fee),
                new SqlParameter("@contactNumber", contactNumber),
                new SqlParameter("@email", email),
                new SqlParameter("@practiceName", practiceName),
                new SqlParameter("@speciality", speciality),
                
              
                new SqlParameter("@website", website),
               
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }

        public DataTable getEditDoctorData(int id)
        {
            _cmd = _dac.GetCommand("sp_getEditDoctorData");
            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }
        public DataTable getEditDoctorTimings(int id)
        {
            _cmd = _dac.GetCommand("sp_getEditDoctorTimings");
            SqlParameter[] par = {
                new SqlParameter("@id", id)
            };

            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _ds = _dac.ExecuteNonQuery_selectQuery(_cmd);
            return _ds.Tables[0];

        }





        public void updateDoctorProfile(string uniqueRandomId,string email, string fullName, string aboutMe, int yearOfExperience, string designation, string address, string street, string education, string awardsRecognitions,
            string memberships, string registrations, int fee, string practiceName, string speciality, string state, string city, string countryId, int zipCode, decimal latitude, decimal longitude,
            string contactNumber,string website
            )
        {


            _cmd = _dac.GetCommand("[sp_updateDoctorProfile]");
            SqlParameter[] par = {



                
                new SqlParameter("@uniqueRandomId", uniqueRandomId),
                new SqlParameter("@email", email),   
                new SqlParameter("@fullName", fullName) , 
                new SqlParameter("@aboutMe", aboutMe),   
                new SqlParameter("@yearOfExperience", yearOfExperience),   
                new SqlParameter("@designation", designation),   
                new SqlParameter("@address", address) ,
                new SqlParameter("@street", street),   
                new SqlParameter("@education", education) ,
                new SqlParameter("@awardsRecognitions", awardsRecognitions),   
                new SqlParameter("@memberships", memberships),   
                new SqlParameter("@registrations", registrations) ,
                new SqlParameter("@fee", fee),   
                new SqlParameter("@practiceName", practiceName),   
                new SqlParameter("@speciality", speciality),   
                new SqlParameter("@state", state) ,
                new SqlParameter("@city", city) ,
                new SqlParameter("@countryId", countryId) ,
                new SqlParameter("@zipCode", zipCode) ,
                new SqlParameter("@latitude", latitude) ,
                new SqlParameter("@longitude", longitude) ,  
                new SqlParameter("@contactNumber", contactNumber) ,
                new SqlParameter("@website", website) 
                                                           
                                 

                                   
            };
            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }


        public void updateDoctorProfile5(string uniqueRandomId, string address, string street, string state, string city, string countryId, int zipCode, decimal latitude, decimal longitude
           )
        {


            _cmd = _dac.GetCommand("[sp_updateDoctorProfile5]");
            SqlParameter[] par = {



                
                new SqlParameter("@uniqueRandomId", uniqueRandomId),
               
                new SqlParameter("@address", address) ,
                new SqlParameter("@street", street),   
               
                new SqlParameter("@state", state) ,
                new SqlParameter("@city", city) ,
                new SqlParameter("@countryId", countryId) ,
                new SqlParameter("@zipCode", zipCode) ,
                new SqlParameter("@latitude", latitude) ,
                new SqlParameter("@longitude", longitude) 
              
                                                           
                                 

                                   
            };
            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }

        public void updateDoctorProfile4(string uniqueRandomId, string aboutMe, int yearOfExperience, string designation, string education, string awardsRecognitions, string memberships, string registrations, 
            int fee, string practiceName, string speciality, string website, string selectedValue, string ImgFiles)
        {

            _cmd = _dac.GetCommand("[sp_updateDoctorProfile4]");
            SqlParameter[] par = {
                                
                new SqlParameter("@uniqueRandomId", uniqueRandomId),               
                new SqlParameter("@aboutMe", aboutMe),   
                new SqlParameter("@yearOfExperience", yearOfExperience),   
                new SqlParameter("@designation", designation),                   
                new SqlParameter("@education", education) ,
                new SqlParameter("@awardsRecognitions", awardsRecognitions),   
                new SqlParameter("@memberships", memberships),   
                new SqlParameter("@registrations", registrations) ,
                new SqlParameter("@fee", fee),   
                new SqlParameter("@practiceName", practiceName),   
                new SqlParameter("@speciality", speciality),
                new SqlParameter("@website", website),
                new SqlParameter("@services", selectedValue),
                new SqlParameter("@images", ImgFiles)
                                   
            };
            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }
       

        public void updateDoctorProfile3(string uniqueRandomId, string fullName, string contactNumber, string picture)
        {
            _cmd = _dac.GetCommand("[sp_updateDoctorProfile3]");
            SqlParameter[] par = {
                new SqlParameter("@uniqueRandomId", uniqueRandomId),                 
                new SqlParameter("@fullName", fullName),                 
                new SqlParameter("@contactNumber", contactNumber),
                new SqlParameter("@picture", picture)                                    
            };
            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }

            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();

        }

        public void insertDoctorTimings(string uniqueRandomId, int dayId, DateTime fFrom, DateTime fTo, DateTime sFrom, DateTime sTo)
        {
            _cmd = _dac.GetCommand("sp_insertDoctorTimings");
            SqlParameter[] par = {
                new SqlParameter("@uniqueRandomId",uniqueRandomId),                                 
                new SqlParameter("@dayId", dayId), 
                new SqlParameter("@fFrom",fFrom),                                                    
                new SqlParameter("@fTo",fTo),
                new SqlParameter("@sFrom",sFrom),
                new SqlParameter("@sTo",sTo)                               
            };
            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();
        }

        public void DeleteDoctorTimings(string uniqueRandomId, int dayId)
        {
            _cmd = _dac.GetCommand("sp_deleteDoctorTimings");
            SqlParameter[] par = {
                new SqlParameter("@uniqueRandomId",uniqueRandomId),
                new SqlParameter("@dayId", dayId)               
            };
            for (int i = 0; i < par.Length; i++)
            {
                _cmd.Parameters.Add(par[i]);
            }
            _dac.EnsureOpen();
            _cmd.ExecuteNonQuery();
            _dac.Close();
        }



    }
}
