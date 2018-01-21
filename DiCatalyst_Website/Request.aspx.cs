using System;
using System.Data;
using System.Web;
using System.Web.UI;
using DAL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Request : Page
{
    private DataRow dr;
    private SqlCommand cmd;
    private DataSet ds;
    private DAL.Connections dac = new Connections();
    private BAL.AddPatient addPatient = new BAL.AddPatient();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        dr = Db.LoadAppointment(Convert.ToInt32(Request.QueryString["id"]));

        if (dr == null)
            throw new Exception("The slot was not found");

        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Session["P_userId"] as string))
            {

                ltlPatientId.Text = Session["P_userId"].ToString();
                txtEmailId.Text = Session["P_userEmail"].ToString();
                TextBoxCreateStart.Text = Convert.ToDateTime(dr["AppointmentStart"]).ToString();
                TextBoxCreateEnd.Text = Convert.ToDateTime(dr["AppointmentEnd"]).ToString();

                DataSet ds = new DataSet();
                SqlCommand cmd = new SqlCommand();                
                cmd = dac.GetCommand("[sp_getPatientDetailsbyId]");
                SqlParameter[] par = {
                new SqlParameter("@patientId", Session["P_userId"].ToString())
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
                ds = dac.ExecuteNonQuery_selectQuery(cmd);

                TextBoxCreateName.Text = ds.Tables[0].Rows[0]["fullName"].ToString();
                txtMobileNo.Text = ds.Tables[0].Rows[0]["contactNumber"].ToString();
                txtEmailId.Text = ds.Tables[0].Rows[0]["email"].ToString();

                var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
                var ds1 = new DataSet();
                if (!string.IsNullOrEmpty(Session["doctorid"] as string))
                {
                   string _doctorid = Session["doctorid"].ToString();

                    var query = "Select fullName from registeredUsers where uniqueRandomId ='" + _doctorid + "'";

                    var cmd1 = new SqlCommand(query, con);

                    var da = new SqlDataAdapter(cmd1);
                    da.Fill(ds1);

                }
                ltlDoctorName.Text = ds1.Tables[0].Rows[0]["fullName"].ToString();
            }
            else
            {
                Modal.Close(this);
                Response.Redirect("~/PatientLogin.aspx");
            }

            // TextBoxName.Focus();
        }
    }

    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        var patientId = ltlPatientId.Text;
      
       
        var id = Convert.ToInt32(Request.QueryString["id"]);
        Db.RequestAppointment(id, patientId);

        var con = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);
        var ds1 = new DataSet();
        string _doctorid = "";
        if (!string.IsNullOrEmpty(Session["doctorid"] as string))
        {
            _doctorid  = Session["doctorid"].ToString();

            var query = "Select * from doctorsData where uniqueRandomId ='" + _doctorid + "'";

            var cmd1 = new SqlCommand(query, con);

            var da = new SqlDataAdapter(cmd1);
            da.Fill(ds1);

        }

        int consultationFee = Convert.ToInt32(ds1.Tables[0].Rows[0]["fee"].ToString());

        addPatient.InsertAddAppointmentPatient(patientId, ddlsalutation, txtAge, radmar, radgen, txtOccupation, txtChiefComplaint, consultationFee, txtAddress, _doctorid);

        //no-reply@dicatalyst.com
        //var txtEmail = "captoremployee1@gmail.com";
        //var password = "J@isriram123";
        //using (var mm = new MailMessage(txtEmail, txtEmailId.Text))
        //{
        //    mm.Subject = "No Reply - Appointment Confirmation From DiCatalyst";
        //    mm.Body =
        //        "Please login to your account to manage your appointment, http://www.dicatalyst.com/login.aspx" + "<br />" + "Username: " + txtEmailId.Text + "<br />Your Tempororary Password is: " + randomId;
        //    mm.IsBodyHtml = true;
        //    var smtp = new SmtpClient();
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.EnableSsl = true;
        //    var networkCred = new NetworkCredential(txtEmail, password);
        //    smtp.UseDefaultCredentials = true;
        //    smtp.Credentials = networkCred;
        //    smtp.Port = 587;
        //    smtp.Send(mm);
        //}

        Modal.Close(this, "OK");
    }


    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Modal.Close(this);
    }

    protected void LinkButtonDelete_Click(object sender, EventArgs e)
    {
        var id = Convert.ToInt32(Request.QueryString["id"]);
        Db.DeleteAppointmentIfFree(id);
        Modal.Close(this, "OK");
    }
    //protected void ButtonCreateSave_Click(object sender, EventArgs e)
    //{

    //}
}