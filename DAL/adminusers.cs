using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
   public class adminusers
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private Connections dac = new Connections();

        public DataTable getIdProofTypeName()
        {
            cmd = dac.GetCommand("sp_getIdProofTypeName");
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable usersbyHotelId(string hotelId)
        {
            cmd = dac.GetCommand("sp_UsersbyHotelId");
            SqlParameter[] par = {
                new SqlParameter("@hotelId",hotelId)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public int insertadminUsers(int idType, int countryId, int stateId, int userTypeId,
            int gender, bool IsPrimaryContact, bool IsActive,
            string employeeId, string photo, string firstName, string username, string password, string email,
            string mobile, string dateOfJoining, string idNo, string city,
            string zipcode, string address, DateTime createdDate)
        {
            cmd = dac.GetCommand("sp_insertadminUsers");
            SqlParameter[] par = {
                new SqlParameter("@idType",idType) ,
                new SqlParameter("@countryId",countryId) ,
                new SqlParameter("@stateId",stateId) ,
                new SqlParameter("@userTypeId",userTypeId) ,
                new SqlParameter("@gender",gender) ,
                new SqlParameter("@IsPrimaryContact",IsPrimaryContact) ,
                new SqlParameter("@IsActive",IsActive) ,
                new SqlParameter("@employeeId",employeeId) ,
                new SqlParameter("@photo",photo) ,
                new SqlParameter("@firstName",firstName) ,
                new SqlParameter("@username", username),
                new SqlParameter("@password",password) ,
                new SqlParameter("@email",email) ,

                new SqlParameter("@mobile",mobile) ,
                new SqlParameter("@dateOfJoining",dateOfJoining) ,
                new SqlParameter("@idNo",idNo) ,
                new SqlParameter("@city",city) ,
                new SqlParameter("@zipcode",zipcode) ,
                new SqlParameter("@address",address) ,
                new SqlParameter("@createdDate",createdDate)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            object obj = cmd.ExecuteScalar();
            dac.Close();
            return Convert.ToInt32(obj);
        }

        public int updateAdminUsers(int idType, int countryId, int stateId, int userTypeId,
            int gender, string employeeId, string photo, string firstName, string username, string password, string email,
            string mobile, string dateOfJoining, string idNo, string city,
            string zipcode, string address, DateTime createdDate, int id)
        {
            cmd = dac.GetCommand("sp_updateAdminUsers");
            SqlParameter[] par = {
                new SqlParameter("@idType",idType) ,
                new SqlParameter("@countryId",countryId) ,
                new SqlParameter("@stateId",stateId) ,
                new SqlParameter("@userTypeId",userTypeId) ,
                new SqlParameter("@gender",gender) ,
                new SqlParameter("@employeeId",employeeId) ,
                new SqlParameter("@photo",photo) ,
                new SqlParameter("@firstName",firstName) ,
                new SqlParameter("@username", username),
                new SqlParameter("@password",password) ,
                new SqlParameter("@email",email) ,
                new SqlParameter("@mobile",mobile) ,
                new SqlParameter("@dateOfJoining",dateOfJoining) ,
                new SqlParameter("@idNo",idNo) ,
                new SqlParameter("@city",city) ,
                new SqlParameter("@zipcode",zipcode) ,
                new SqlParameter("@address",address) ,
                new SqlParameter("@createdDate",createdDate),
                new SqlParameter("@id",id)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            object obj = cmd.ExecuteScalar();
            dac.Close();
            return Convert.ToInt32(obj);
        }

        public void deleteAdminUserAndHotels(int adminUserId, string hotelId)
        {
            cmd = dac.GetCommand("sp_deleteAdminUserAndHotels");
            SqlParameter[] par = {
                new SqlParameter("@adminUserId",adminUserId),
                new SqlParameter("@hotelId",hotelId)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void deleteAdminUsers(int id)
        {
            cmd = dac.GetCommand("sp_deleteAdminUsers");
            SqlParameter[] par = {
                new SqlParameter("@id",id)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void insertAdminUserAndHotels(int adminUserId, string hotelId)
        {
            cmd = dac.GetCommand("sp_insertAdminUserAndHotels");
            SqlParameter[] par = {
                new SqlParameter("@adminUserId",adminUserId),
                new SqlParameter("@hotelId",hotelId)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public DataTable getAdminUsersDetails()
        {
            cmd = dac.GetCommand("sp_GetAdminUsersDetails");
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }
        public DataTable getAdminUserById(int id)
        {
            cmd = dac.GetCommand("sp_getAdminUserById");
            SqlParameter[] par = {
                new SqlParameter("@id",id)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }
        public DataTable getAdminUserDetailsNamesofIds(int id)
        {
            cmd = dac.GetCommand("sp_getAdminUserDetailsNamesofIds");
            SqlParameter[] par = {
                new SqlParameter("@id",id)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        
        public DataTable getPreferences(string username)
        {
            cmd = dac.GetCommand("sp_getPreferences");
            SqlParameter[] par = {
                new SqlParameter("@username",username)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public void updatePassword(string password, string username)
        {
            cmd = dac.GetCommand("sp_updatePassword");
            SqlParameter[] par = {
                new SqlParameter("@password",password),
                new SqlParameter("@username",username)
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
