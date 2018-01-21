using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class manageLabInvestigations
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();
        public int insertLabInvestigationProfile(string investigationProfileName)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertLabInvestigationProfile");
                SqlParameter[] par = {
                                     new SqlParameter("@investigationProfileName", investigationProfileName)                                   
                                 
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
        public int insertLabTest(string testName, string specimen, string conventionalUnit, string siUnit, string gender)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertLabTest");
                SqlParameter[] par = {
                                     new SqlParameter("@testName", testName),   
                                      new SqlParameter("@specimen", specimen),   
                                       new SqlParameter("@conventionalUnit", conventionalUnit),   
                                        new SqlParameter("@siUnit", siUnit)   ,
                                         new SqlParameter("@gender", gender)   

                                 
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
               
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
        public int insertLabSpecimen(string specimenName,string description)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertLabSpecimen");
                SqlParameter[] par = {
                                     new SqlParameter("@specimenName", specimenName)  ,
                                     new SqlParameter("@description",description)
                                 
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
                
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
        public int insertLabConventionalUnits(string agent, string conventionalUnit, string conversionFactor, string siUnit)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertLabConventionalUnits");
                SqlParameter[] par = {
                                     new SqlParameter("@agent", agent),   
                                      new SqlParameter("@conventionalUnit", conventionalUnit),   
                                       new SqlParameter("@conversionFactor", conversionFactor),   
                                        new SqlParameter("@siUnit", siUnit)   
                                         

                                 
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

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
        public DataTable getLabInvestigationProfile()
        {
            cmd = dac.GetCommand("sp_getLabInvestigationProfile");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getLabTest()
        {
            cmd = dac.GetCommand("sp_getLabTest");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getLabSpecimen()
        {
            cmd = dac.GetCommand("sp_getLabSpecimen");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getLabConventionalUnits()
        {
            cmd = dac.GetCommand("sp_getLabConventionalUnits");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteLabInvestigationProfile(int id)
        {
            cmd = dac.GetCommand("sp_deleteLabInvestigationProfile");
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
        public void deleteLabTest(int id)
        {
            cmd = dac.GetCommand("sp_deleteLabTest");
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
        public void deleteLabSpecimen(int id)
        {
            cmd = dac.GetCommand("sp_deleteLabSpecimen");
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
        public void deleteLabConventionalSIUnits(int id)
        {
            cmd = dac.GetCommand("sp_deleteLabConventionalSIUnits");
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
