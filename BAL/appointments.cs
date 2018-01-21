using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BAL
{

    public class appointments
    {
        private readonly DAL.appointments app = new DAL.appointments();
        public void insertappointments(DateTime appointmentStart, DateTime appointmentEnd, string doctorId, string appointmentPatientId, string appointmentStatus)
        {
            app.insertappointments(appointmentStart, appointmentEnd, doctorId, appointmentPatientId, appointmentStatus);
        }

        public DataTable GetPatientDetailsForAppointments(int appointmentPatientId)
        {
            DataTable dt = app.GetPatientDetailsForAppointments(appointmentPatientId);
            return dt;
        }
        public DataTable getAppointments(string doctorId, DateTime startDate, DateTime endDate)
        {
            DataTable dt = app.getAppointments(doctorId, startDate, endDate);
            return dt;

        }

        public DataTable getPatientDetailsofDiagnosis(string patientId)
        {
            DataTable dt = app.getPatientDetailsofDiagnosis(patientId);
            return dt;
        }

    }
}
