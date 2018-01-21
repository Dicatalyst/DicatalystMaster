using System;
using System.Data;
using System.Web;
using System.Web.UI;
using  BAL;

public partial class Dentist_Edit : Page
{
    private DataRow dr;
    protected AddPatient pat = new AddPatient();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        dr = Db.LoadAppointment(Convert.ToInt32(Request.QueryString["id"]));

        if (dr == null)
            throw new Exception("The requested time slot was not found");

        if (!IsPostBack)
        {
            TextBoxStart.Text = Convert.ToDateTime(dr["AppointmentStart"]).ToString("MM/dd/yyyy hh:mm");
            TextBoxEnd.Text = Convert.ToDateTime(dr["AppointmentEnd"]).ToString("hh:mm tt");
            TextBoxName.Text = dr["AppointmentPatientName"] as string;
            DropDownListStatus.SelectedValue = (string) dr["AppointmentStatus"];

            DropDownListRoom.DataSource = Db.LoadDoctors(Session["userId"].ToString());
            DropDownListRoom.DataTextField = "DoctorName";
            DropDownListRoom.DataValueField = "DoctorId";
            DropDownListRoom.SelectedValue = Convert.ToString(dr["DoctorId"]);
            DropDownListRoom.DataBind();

            TextBoxName.Focus();
        }
    }

    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        //DateTime start = Convert.ToDateTime(TextBoxStart.Text);
        //DateTime end = Convert.ToDateTime(TextBoxEnd.Text);
        //int doctor = Convert.ToInt32(DropDownListRoom.SelectedValue);

        var start = (DateTime) dr["AppointmentStart"];
        var end = (DateTime) dr["AppointmentEnd"];
        var doctor = (int) dr["DoctorId"];

        var name = TextBoxName.Text;
        var status = DropDownListStatus.SelectedValue;

        var id = Convert.ToInt32(Request.QueryString["id"]);

        Db.UpdateAppointment(id, start, end, name, doctor, status);
        Modal.Close(this, "OK");
        
    }


    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Modal.Close(this);
    }

    protected void LinkButtonDelete_Click(object sender, EventArgs e)
    {
        var id = Convert.ToInt32(Request.QueryString["id"]);
        Db.DeleteAppointment(id);
        Modal.Close(this, "OK");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        var uniqueUserID = pat.InsertRegistrationDetails(TextBoxName, txtEmailId, txtMobileNo, "password");
        pat.InsertDentistAddPatient(uniqueUserID, ddlsal, txtAge, radmar, radgen, txtOccupation, txtChiefComplaint,
            txtConsultationFee,txtAddress);



    }



}