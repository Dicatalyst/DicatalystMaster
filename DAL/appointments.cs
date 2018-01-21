using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
   public class appointments
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private DAL.Connections dc = new DAL.Connections();

        public void insertappointments(DateTime appointmentStart, DateTime appointmentEnd, string doctorId, string appointmentPatientId, string appointmentStatus)
        {
            cmd = dc.GetCommand("sp_insertappointments");

            SqlParameter[] par = {
                new SqlParameter("@AppointmentStart", appointmentStart),
                new SqlParameter("@AppointmentEnd", appointmentEnd),
                new SqlParameter("@DoctorId", doctorId),
                new SqlParameter("@AppointmentPatientId", appointmentPatientId),
                new SqlParameter("@AppointmentStatus", appointmentStatus)
               
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dc.EnsureOpen();
            cmd.ExecuteNonQuery();
            dc.Close();
        }

        public void updateappointments(int AppointmentId, string appointmentPatientId, string appointmentStatus)
        {
            cmd = dc.GetCommand("sp_updateappointments");

            SqlParameter[] par = {
             
                new SqlParameter("@AppointmentId", AppointmentId),
                new SqlParameter("@AppointmentPatientId", appointmentPatientId),
                new SqlParameter("@AppointmentStatus", appointmentStatus)
               
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dc.EnsureOpen();
            cmd.ExecuteNonQuery();
            dc.Close();
        }


        public DataTable GetPatientDetailsForAppointments(int AppointmentId)
        {
            cmd = dc.GetCommand("sp_GetPatientDetailsForAppointments");

            SqlParameter[] par = {
                new SqlParameter("@AppointmentId", AppointmentId)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getAppointments(string doctorId, DateTime startDate, DateTime endDate)
        {
            cmd = dc.GetCommand("sp_getAppointments");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId),
                new SqlParameter("@start", startDate),
                new SqlParameter("@end", endDate)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }
        public DataTable getPatientDetailsofDiagnosis(string patientId)
        {
            cmd = dc.GetCommand("sp_getPatientDetailsofDiagnosis");

            SqlParameter[] par = {
                new SqlParameter("@patientId", patientId)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dc.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }
       
       
    }
}
