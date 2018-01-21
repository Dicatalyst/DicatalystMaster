/* Copyright © 2005 - 2013 Annpoint, s.r.o.
   Use of this software is subject to license terms. 
   http://www.daypilot.org/

   If you have purchased a DayPilot Pro license, you are allowed to use this 
   code under the conditions of DayPilot Pro License Agreement:

   http://www.daypilot.org/files/LicenseAgreement.pdf

   Otherwise, you are allowed to use it for evaluation purposes only under 
   the conditions of DayPilot Pro Trial License Agreement:
   
   http://www.daypilot.org/files/LicenseAgreementTrial.pdf
   
*/

using System;
using System.Data;
using System.Web;
using System.Web.UI;

public partial class Request : Page
{
    private DataRow dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        dr = Db.LoadAppointment(Convert.ToInt32(Request.QueryString["id"]));

        if (dr == null)
            throw new Exception("The slot was not found");

        if (!IsPostBack)
        {
            TextBoxStart.Text = Convert.ToDateTime(dr["AppointmentStart"]).ToString();
            TextBoxEnd.Text = Convert.ToDateTime(dr["AppointmentEnd"]).ToString();
            TextBoxName.Text = dr["AppointmentPatientName"] as string;

            TextBoxName.Focus();
        }
    }

    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        var name = TextBoxName.Text;

        var id = Convert.ToInt32(Request.QueryString["id"]);

        Db.RequestAppointment(id, name);
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
}