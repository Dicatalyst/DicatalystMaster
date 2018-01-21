using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Dentist_New : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBoxStart.Text = Convert.ToDateTime(Request.QueryString["start"]).ToShortDateString();
            TextBoxEnd.Text = Convert.ToDateTime(Request.QueryString["end"]).ToShortDateString();

            TextBoxName.Focus();

            DropDownList1.DataSource = dbGetResources();
            DropDownList1.DataTextField = "RoomName";
            DropDownList1.DataValueField = "RoomId";
            DropDownList1.SelectedValue = Request.QueryString["r"];
            DropDownList1.DataBind();
        }
    }

    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        var start = Convert.ToDateTime(TextBoxStart.Text).Date.AddHours(12);
        var end = Convert.ToDateTime(TextBoxEnd.Text).Date.AddHours(12);
        var name = TextBoxName.Text;
        var resource = DropDownList1.SelectedValue;

        dbInsertEvent(start, end, name, resource, 0);
        Modal.Close(this, "OK");
    }

    private DataTable dbGetResources()
    {
        var da = new SqlDataAdapter("SELECT [RoomId], [RoomName] FROM [Room]",
            ConfigurationManager.ConnectionStrings["daypilot"].ConnectionString);
        var dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    private void dbInsertEvent(DateTime start, DateTime end, string name, string resource, int status)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["daypilot"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "INSERT INTO [Reservation] (ReservationStart, ReservationEnd, ReservationName, RoomId, ReservationStatus) VALUES(@start, @end, @name, @resource, @status)",
                con);
            //cmd.Parameters.AddWithValue("id", id);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("resource", resource);
            cmd.Parameters.AddWithValue("status", status);
            cmd.ExecuteNonQuery();
        }
    }

    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Modal.Close(this);
    }
}