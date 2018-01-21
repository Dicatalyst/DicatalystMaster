using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;
using BAL;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dentist_profile6 : System.Web.UI.Page
{
    private DataTable _dt;
    private readonly GlobalSearch _loc = new GlobalSearch();


    private readonly ManageModules _mngmod = new ManageModules();
    private readonly Notify _noty = new Notify();
    public string Location = String.Empty;
    string doctorId = null;
    protected BAL.AddPatient _addPatient = new BAL.AddPatient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindTimings();
            gdTimings.DataSource = _mngmod.Getdays();
            gdTimings.DataBind();
            LoadDoctors();
            getDoctorTimings();
        }
    }
    protected void LoadDoctors()
    {
        doctorId = Session["userId"].ToString();
        DataTable doctors = Db.LoadDoctors(doctorId);
        if (doctors.Rows.Count > 0)
        {
            lblDocFullName.Text = doctors.Rows[0]["fullName"].ToString();            
        }        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string userid = Session["userId"].ToString();
        //if (gdTimings.Rows.Count > 0)
        //{
            for (var i = 0; i < gdTimings.Rows.Count; i++)
            {
                var chkDay = (CheckBox)gdTimings.Rows[i].Cells[1].FindControl("chkDay");
                if (chkDay.Checked)
                {
                    var lblId = (Label)gdTimings.Rows[i].Cells[1].FindControl("lblId");
                    var txtFFrom = (TextBox)gdTimings.Rows[i].Cells[2].FindControl("txtFFrom");
                    var txtFTo = (TextBox)gdTimings.Rows[i].Cells[3].FindControl("txtFTo");
                    var txtsFrom = (TextBox)gdTimings.Rows[i].Cells[4].FindControl("txtsFrom");
                    var txtsTo = (TextBox)gdTimings.Rows[i].Cells[5].FindControl("txtsTo");

                    var txtFFr = txtFFrom.Text;
                    var txtFt = txtFTo.Text;
                    var txtSFr = txtsFrom.Text;
                    var txtSt = txtsTo.Text;
                    var dayId = Convert.ToInt32(lblId.Text);
                    _mngmod.insertDoctorTimings(userid, dayId, txtFFr, txtFt, txtSFr, txtSt);
                }
            }
        //}
        //else
        //{
        //    string ValidationMessage = "Please select the check to insert data.....";
        //}
        getDoctorTimings();

    }

    protected void gdTimings_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        throw new NotImplementedException();
    }

    protected void bindTimings()
    {
        DataTable dt = _mngmod.GetDoctorTimings(Session["userId"].ToString());
        gdTimings.DataSource = dt;
        gdTimings.DataBind();
    }

    protected void getDoctorTimings()
    {
        DataTable dt = _mngmod.ViewDoctorTimings(Session["userId"].ToString());
        gdvTimeSlots.DataSource = dt;
        gdvTimeSlots.DataBind();
             
    }

    protected void btnDeleteSlots_Click(object sender, EventArgs e)
    {
        string userid = Session["userId"].ToString();
        for (var i = 0; i < gdTimings.Rows.Count; i++)
        {
            var chkDay = (CheckBox)gdTimings.Rows[i].Cells[1].FindControl("chkDay");
            if (chkDay.Checked)
            {
                var lblId = (Label)gdTimings.Rows[i].Cells[1].FindControl("lblId");
                var dayId = Convert.ToInt32(lblId.Text);
                _mngmod.DeleteDoctorTimings(userid, dayId);
            }
        }
        getDoctorTimings();
    }

    protected void btnCreateAppointment_Click(object sender, EventArgs e)
    {
        DateTime Start, End; 
        int Slot = 0;
        doctorId = Session["userId"].ToString();
        Start = Convert.ToDateTime(hdnCreateStart.Value.ToString());
        End = Convert.ToDateTime(hdnCreateEnd.Value.ToString());
        Slot = Convert.ToInt32(hdnTimeSlot.Value);
        DateTime dt1 = Convert.ToDateTime(hdnCreateStart.Value);
       // DateTime dt2 = DateTime.ParseExact(hdnCreateEnd.Value.ToString(), "dd-MM-yyyy", null);
        //call sp to create slots sp_CreateAppointmentsByDoctorTimings
        if (Start.Date <= End.Date && doctorId != null && Slot > 0)
        {
            _addPatient.CreateAppointmentsByDoctorTimings(doctorId, Slot, Start, End);
        }
        else
        {
            //LblErrorMessage.Text="Please select valid start and enddate and Slot"
        }
    }

    protected void btnDeleteAppointment_Click(object sender, EventArgs e)
    {
        DateTime Start, End;      
        doctorId = Session["userId"].ToString();
        Start = Convert.ToDateTime(hdnCreateStart.Value.ToString());
        End = Convert.ToDateTime(hdnCreateEnd.Value.ToString());
        //call sp to delete appoinments sp_CreateAppointmentsByDoctorTimings
        if (Start.Date <= End.Date && doctorId != null)
        {
            _addPatient.DeleteAppointmentsByStartandEnddate(doctorId, Start, End);
        }
        else
        {
            //LblErrorMessage.Text="Please select valid start and enddate"
        }
    }

}