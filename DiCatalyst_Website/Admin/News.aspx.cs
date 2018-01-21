using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;


public partial class Admin_News : System.Web.UI.Page
{

  
    private readonly BAL.news news1=new BAL.news();
    private DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindData();
        }

    }

    



    protected void bindData()
    {

        dt = news1.getNews();
        DataList1.DataSource = dt;
        DataList1.DataBind();


    }

    protected void btnNews_OnClick(object sender, EventArgs e)
    {
        var serverPath = "";



        if (flPicture.PostedFile.ContentType == "image/jpeg")
            if (flPicture.PostedFile.ContentLength < 204800)
            {
                var filename = Path.GetFileName(flPicture.FileName);
                flPicture.SaveAs(Server.MapPath("~/Admin/adminuserImages/") + filename);
                serverPath = "~/Admin/adminuserImages/" + filename;

                news1.insertNews(txtTitle, txtDescription, txtReferenceLink, serverPath);

                bindData();

            }
    }
}


