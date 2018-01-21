using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using BAL;


public partial class patient_media : Page
{
    private DataTable dt;
    private readonly media med = new media();
    protected void Page_Load(object sender, EventArgs e)
    {

        bindData();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var serverPath = "";

        if (uploadFile.HasFile)
        {
            var filename = Path.GetFileName(uploadFile.FileName);
            uploadFile.SaveAs(Server.MapPath("~/Dentist/Files/") + filename);
            serverPath = "~/Dentist/Files/" + filename;
            med.insertDentistMedia(txtTitle, serverPath, txtVideo, txtReferenceLink, txtDescription, txtAuthor, txtPublishedOn, txtPublishedIn);

            bindData();



        }
    }



    protected void bindData()
    {
        dt = med.getDentistMedia();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}