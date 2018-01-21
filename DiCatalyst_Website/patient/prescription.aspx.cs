using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using DAL;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using BAL;

public partial class patient_prescription : Page
{
    protected BAL.AddPatient _addPatient = new BAL.AddPatient();
    private DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridViewHelper helper = new GridViewHelper(this.GridView3);
            helper.RegisterGroup("prescriptionId", true, true);
            helper.GroupHeader += new GroupEvent(helper_GroupHeader);
            //helper.ApplyGroupSort();
            string userid = Session["P_userId"].ToString();
            dt = new DataTable();
            dt = _addPatient.getPatientPrescriptionDetails(userid);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
    }

    private void helper_GroupHeader(string groupName, object[] values, GridViewRow row)
    {
        if (groupName == "prescriptionId")
        {
            row.BackColor = Color.DodgerBlue;
            row.ForeColor = Color.White;
            row.CssClass = "headerrow";
            row.Cells[0].Text = "Prescription No. : &nbsp;&nbsp;" + row.Cells[0].Text;
        }
        //else if (groupName == "ShipName")
        //{
        //    row.BackColor = Color.FromArgb(236, 236, 236);
        //    row.Cells[0].Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + row.Cells[0].Text;
        //}
    }   

}