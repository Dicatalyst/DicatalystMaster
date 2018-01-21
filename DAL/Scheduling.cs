using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace DAL
{
   public class Scheduling
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();
        public int insertSchedule(string uniqueRandomId, string selectVenue, string selectDay, String setPatientTime, string visible)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertdocBankAcc");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@selectVenue", selectVenue),
                                     new SqlParameter("@selectDay", selectDay),
                                     new SqlParameter("@setPatientTime", setPatientTime),
                                     new SqlParameter("@visible", visible)
                                    
                                    
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

      
        public int addSchedulingVenue(string uniqueRandomId, string venueName,string venueAddress, string venueContact, string venueMap)
        {
            try
            {

                cmd = dac.GetCommand("sp_addSchedulingVenue");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@venueName", venueName),
                                     new SqlParameter("@venueAddress", venueAddress),
                                     new SqlParameter("@venueContact", venueContact),
                                        new SqlParameter("@venueMap", venueMap)
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

        public DataTable getVenueData()
        {
            cmd = dac.GetCommand("sp_getVenueData");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteVenueData(int id)
        {
            cmd = dac.GetCommand("sp_deleteVenueData");
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
