using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForumThreads : System.Web.UI.Page
{
  
    DataTable dt1;

    private readonly BAL.forum fm = new BAL.forum();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            fm.GetTopicForDropdown(ddlTopic);
            //dfTopic
           
          
            //dfThread
            dt1 = fm.GetDfThread();
            grdThread.DataSource = dt1;
            grdThread.DataBind();
            //dataalist
            DataList2.DataSource = dt1;
            DataList2.DataBind();

        }


    }
   
    protected void btnDfThread_Click(object sender, EventArgs e)
    {
        var serverPath = "";

        var uniqueUserId = "7G9WMHFM32";
        //var uniqueUserId = Session["uniqueUserId"].ToString();


        //if (dfFile.PostedFile.ContentLength < 204800)
        if (dfFile.HasFile)
        {
            var filename = Path.GetFileName(dfFile.FileName);
            dfFile.SaveAs(Server.MapPath("~/Hospital/Files/") + filename);
            serverPath = "~/Hospital/Files/" + filename;

            fm.insertDfThread(ddlTopic, txtSubject, txtMessage, serverPath, uniqueUserId, txtReply);

        }

    }





   
    
   
    
    protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        //var file = (Image)e.Item.FindControl("imgDoctor");
        //if (string.IsNullOrEmpty(file.ImageUrl))
        //    file.ImageUrl = "images/doctor.png";
    }
}