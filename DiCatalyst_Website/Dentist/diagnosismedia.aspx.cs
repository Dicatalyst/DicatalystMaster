using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Dentist_diagnosismedia : System.Web.UI.Page
{
       private readonly BAL.dentistDiagnosis medical = new BAL.dentistDiagnosis();
       DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            bindMedia();
        }
    }
    protected void gdMedia_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleterow")
        {
            var index = Convert.ToInt32(e.CommandArgument);
            index = index % gdMedia.PageSize;
            var row = gdMedia.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            medical.deleteMedia(Convert.ToInt32(lblId.Text));
            bindMedia();
        }
    }
    protected void bindMedia()
    {
        string patientId = Session["PId"].ToString();
        string doctorId = Session["userId"].ToString();
        dt = medical.getMedia(doctorId, patientId);
        gdMedia.DataSource = dt;
        gdMedia.DataBind();
    }
    protected void btnMedia_Click(object sender, EventArgs e)
    {
        string patientId = Session["PId"].ToString();
        string doctorId = Session["userId"].ToString();
        var serverPath = "";

        if (uploadFile.HasFile)
        {
            var filename = Path.GetFileName(uploadFile.FileName);
            uploadFile.SaveAs(Server.MapPath("~/Dentist/Files/") + filename);
            serverPath = "~/Dentist/Files/" + filename;

            medical.insertMedia(patientId, doctorId, txtDate, txtDescription, serverPath);
            bindMedia();
        }


    }
}