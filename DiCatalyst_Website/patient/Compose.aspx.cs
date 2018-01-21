using System;
using System.Web.UI;
using System.IO;
using System.Data;

public partial class patient_Compose : Page
{

    DataTable dt;
    private readonly BAL.message msg = new BAL.message();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void lnkSend_Click(object sender, EventArgs e)
    {


        var serverPath = "";
        var toUserId = "YC5HNUKF2H";
        var fromuserId = "BL2J97H7QP";
        var id = 1;
        //var uniqueUserId = Session["uniqueUserId"].ToString();


        //if (dfFile.PostedFile.ContentLength < 204800)
        if (fileAttachment.HasFile)
        {
            var filename = Path.GetFileName(fileAttachment.FileName);
            fileAttachment.SaveAs(Server.MapPath("~/Hospital/MessageFiles/") + filename);
            serverPath = "~/Hospital/MessageFiles/" + filename;

           // msg.insertMessage(txtSubject, txtMessage, serverPath, fromuserId, toUserId, id);

        }



    }
}