using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
///     Summary description for Db
/// </summary>
public static class Db
{
    public static DataTable LoadDoctors(string doctorId)
    {
        var da = new SqlDataAdapter("SELECT fullName, uniqueRandomId FROM [registeredUsers] where uniqueRandomId = @doctorId",
            ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        da.SelectCommand.Parameters.AddWithValue("@doctorId", doctorId);
        var dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public static DataRow LoadDoctor(int id)
    {
        var da = new SqlDataAdapter("SELECT * FROM [Doctor] WHERE [DoctorId] = @id",
            ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        da.SelectCommand.Parameters.AddWithValue("id", id);

        var dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
            return dt.Rows[0];
        return null;
    }

    public static DataRow LoadAppointment(int id)
    {
        var da = new SqlDataAdapter("SELECT * FROM [Appointment] WHERE [AppointmentId] = @id",
            ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        da.SelectCommand.Parameters.AddWithValue("id", id);

        var dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
            return dt.Rows[0];
        return null;
    }


    public static DataTable LoadAppointmentsForDoctor(int id, DateTime start, DateTime end)
    {
        var da = new SqlDataAdapter(
            "SELECT * FROM [Appointment] WHERE [DoctorId] = @doctor AND NOT (([AppointmentEnd] <= @start) OR ([AppointmentStart] >= @end))",
            ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        da.SelectCommand.Parameters.AddWithValue("doctor", id);
        da.SelectCommand.Parameters.AddWithValue("start", start);
        da.SelectCommand.Parameters.AddWithValue("end", end);
        var dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public static DataTable LoadAppointments(DateTime start, DateTime end)
    {
        var da = new SqlDataAdapter(
            "SELECT * FROM [Appointment] WHERE NOT (([AppointmentEnd] <= @start) OR ([AppointmentStart] >= @end))",
            ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        da.SelectCommand.Parameters.AddWithValue("start", start);
        da.SelectCommand.Parameters.AddWithValue("end", end);
        var dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

  


    public static void CreateAppointment(string doctor, DateTime start, DateTime end)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "INSERT INTO [Appointment] ([AppointmentStart], [AppointmentEnd], [DoctorId]) VALUES(@start, @end, @doctor)",
                con);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("doctor", doctor);
            cmd.ExecuteNonQuery();

            /*
            cmd = new SqlCommand("select @@identity;", con);
            int id = Convert.ToInt32(cmd.ExecuteScalar());
            return id;
             */
        }
    }

    public static void DeleteAppointmentsFree(DateTime start, DateTime end, string doctorId)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "DELETE FROM [Appointment] WHERE [AppointmentStatus] = 'free' AND NOT (([AppointmentEnd] <= @start) OR ([AppointmentStart] >= @end) and doctorId= @doctorId)",
                con);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("doctorId", doctorId);
            cmd.ExecuteNonQuery();
        }
    }

    public static void DeleteAppointmentIfFree(int id)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "DELETE FROM [Appointment] WHERE [AppointmentId] = @id AND [AppointmentStatus] = 'free'", con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
        }
    }

    public static DataRow LoadFirstDoctor()
    {
        var da = new SqlDataAdapter("SELECT top 1 * FROM [Doctor] ORDER BY [DoctorName]",
            ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);

        var dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
            return dt.Rows[0];
        return null;
    }

    public static void UpdateAppointment(int id, DateTime start, DateTime end, string name, int doctor, string status)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "UPDATE [Appointment] SET [AppointmentStart] = @start, [AppointmentEnd] = @end, [AppointmentPatientName] = @name, [AppointmentStatus] = @status WHERE [AppointmentId] = @id",
                con);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
        }
    }

    public static void DeleteAppointment(int id)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand("DELETE FROM [Appointment] WHERE [AppointmentId] = @id", con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
        }
    }

    public static void RequestAppointment(int id, string patientId)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "UPDATE [Appointment] SET [AppointmentPatientId] = @patientId, [AppointmentStatus] = @status WHERE [AppointmentId] = @id",
                con);
            cmd.Parameters.AddWithValue("patientId", patientId);
            cmd.Parameters.AddWithValue("status", "waiting");
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
        }
    }

    public static void MoveAppointment(string id, DateTime start, DateTime end)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "UPDATE [Appointment] SET [AppointmentStart] = @start, [AppointmentEnd] = @end WHERE [AppointmentId] = @id",
                con);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
        }
    }
}