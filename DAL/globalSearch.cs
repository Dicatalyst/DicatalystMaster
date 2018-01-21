using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class globalSearch
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private Connections dac = new Connections();

        public DataTable getCountries()
        {
            cmd = dac.GetCommand("sp_getCountries");
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getStatesByCountry(int CountryId)
        {
            cmd = dac.GetCommand("sp_getStatesByCountryId");
            SqlParameter[] par = {
                                     new SqlParameter("@countryId", CountryId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public void insertCities(string cityName, int stateId)
        {


            cmd = dac.GetCommand("sp_insertCities");
            SqlParameter[] par = {
                                     new SqlParameter("@cityName", cityName),                                    
                                     new SqlParameter("@stateId", stateId)                                 
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
           
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }

        public DataTable getcitiesByStateId(int stateId)
        {
            cmd = dac.GetCommand("sp_getcitiesByStateId");
            SqlParameter[] par = {
                                     new SqlParameter("@stateId", stateId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getLocalityByCity(int cityId)
        {
            cmd = dac.GetCommand("sp_getlocationsByCity");
            SqlParameter[] par = {
                                     new SqlParameter("@cityId", cityId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        
        public void insertlocations(string locationName, int cityId)
        {


            cmd = dac.GetCommand("[sp_insertlocations]");
            SqlParameter[] par = {
                                     new SqlParameter("@locationName", locationName),                                    
                                     new SqlParameter("@cityId", cityId)                                 
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }

        public void insertSpeciality(string name, string description, string keywords)
        {


            cmd = dac.GetCommand("[sp_insertSpeciality]");
            SqlParameter[] par = {
                                     new SqlParameter("@name", name),                                    
                                     new SqlParameter("@description", description),
                                     new SqlParameter("@keywords", keywords)  
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }
        public void insertServices(int specialityId, string serviceName)
        {


            cmd = dac.GetCommand("[sp_insertServices]");
            SqlParameter[] par = {
                                     new SqlParameter("@specialityId", specialityId),                                    
                                     new SqlParameter("@serviceName", serviceName)
                                   

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }
        public DataTable getServicesbySpecialityId(int specialityId)
        {
            cmd = dac.GetCommand("sp_getServicesbySpecialityId");
            SqlParameter[] par = {
                                     new SqlParameter("@specialityId", specialityId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

       
        public DataTable getspeciality()
        {
            cmd = dac.GetCommand("sp_getspeciality");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteSpeciality(int id)
        {
            cmd = dac.GetCommand("sp_deleteSpeciality");
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
        public DataTable getSpecialityKeywords(int specialityId)
        {
            cmd = dac.GetCommand("sp_getSpecialityKeywords");
            SqlParameter[] par = {
                                     new SqlParameter("@specialityId", specialityId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getDoctorSearchResults(string speciality, string locality)
        {
            cmd = dac.GetCommand("sp_getDoctorSearchResults");
            SqlParameter[] par = {
                                     new SqlParameter("@speciality", speciality),
                                      new SqlParameter("@locality", locality)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable GetDoctorSearchResultsbypreferred(string speciality, string locality)
        {
            cmd = dac.GetCommand("sp_getDoctorSearchResultsbypreferred");
            SqlParameter[] par = {
                new SqlParameter("@speciality", speciality),
                new SqlParameter("@locality", locality)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        
        public DataTable getServiceNameByServiceId(int id)
        {
            cmd = dac.GetCommand("sp_getServiceNameByServiceId");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
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
