using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

public partial class Edit : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        if (!IsPostBack)
        {
            var dr = dbGetEvent(Request.QueryString["id"]);

            if (dr == null)
                throw new Exception("The event was not found");

            TextBoxStart.Text = Convert.ToDateTime(dr["ReservationStart"]).ToShortDateString();
            TextBoxEnd.Text = Convert.ToDateTime(dr["ReservationEnd"]).ToShortDateString();
            TextBoxName.Text = dr["ReservationName"] as string;

            DropDownListRoom.DataSource = dbGetResources();
            DropDownListRoom.DataTextField = "RoomName";
            DropDownListRoom.DataValueField = "RoomId";
            DropDownListRoom.SelectedValue = Convert.ToString(dr["RoomId"]);
            DropDownListRoom.DataBind();

            DropDownListStatus.SelectedValue = Convert.ToString(dr["ReservationStatus"]);

            DropDownListPaid.SelectedValue = Convert.ToString(dr["ReservationPaid"]);

            TextBoxName.Focus();
        }
    }

    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        var start = Convert.ToDateTime(TextBoxStart.Text).Date.AddHours(12);
        var end = Convert.ToDateTime(TextBoxEnd.Text).Date.AddHours(12);
        var name = TextBoxName.Text;
        var resource = DropDownListRoom.SelectedValue;
        var id = Request.QueryString["id"];
        var status = Convert.ToInt32(DropDownListStatus.SelectedValue);
        var paid = Convert.ToInt32(DropDownListPaid.SelectedValue);

        dbUpdateEvent(id, start, end, name, resource, status, paid);
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

    private DataRow dbGetEvent(string id)
    {
        var da = new SqlDataAdapter("SELECT * FROM [Reservation] WHERE ReservationId = @id",
            ConfigurationManager.ConnectionStrings["daypilot"].ConnectionString);
        da.SelectCommand.Parameters.AddWithValue("id", id);
        var dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
            return dt.Rows[0];
        return null;
    }

    private void dbUpdateEvent(string id, DateTime start, DateTime end, string name, string resource, int status,
        int paid)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["daypilot"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand(
                "UPDATE [Reservation] SET ReservationStart = @start, ReservationEnd = @end, ReservationName = @name, RoomId = @resource, ReservationStatus = @status, ReservationPaid = @paid WHERE ReservationId = @id",
                con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.Parameters.AddWithValue("start", start);
            cmd.Parameters.AddWithValue("end", end);
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("resource", resource);
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("paid", paid);
            cmd.ExecuteNonQuery();
        }
    }

    private void dbDeleteEvent(string id)
    {
        using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["daypilot"].ConnectionString))
        {
            con.Open();
            var cmd = new SqlCommand("DELETE FROM [Reservation] WHERE ReservationId = @id", con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
        }
    }

    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Modal.Close(this);
    }

    protected void LinkButtonDelete_Click(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"];
        dbDeleteEvent(id);
        Modal.Close(this, "OK");
    }
}