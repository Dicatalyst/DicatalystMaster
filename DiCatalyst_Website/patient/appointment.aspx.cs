using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;
using DayPilot.Web.Ui;
using DayPilot.Web.Ui.Data;
using DayPilot.Web.Ui.Enums;
using DayPilot.Web.Ui.Events;
using DayPilot.Web.Ui.Events.Scheduler;
using System.Web.UI.WebControls;


public partial class patient_appointment : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          string patientId =  Session["P_userId"].ToString();
          string useremail =  Session["P_userEmail"].ToString();
          string usertype = Session["userType"].ToString();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string quantity = e.Row.Cells[5].Text;

            foreach (TableCell cell in e.Row.Cells)
            {
                if (quantity == "confirmed")
                {
                    cell.BackColor = Color.Green;
                    cell.ForeColor = Color.White;
                }
                if (quantity == "waiting")
                {
                    cell.BackColor = Color.Orange;
                    cell.ForeColor = Color.White;
                }
                //if (quantity > 50 && quantity <= 100)
                //{
                //    cell.BackColor = Color.Orange;
                //}
            }


        }
    }
}