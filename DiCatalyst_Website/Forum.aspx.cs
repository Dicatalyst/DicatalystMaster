using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;

public partial class Forum : System.Web.UI.Page
{
    DataTable dt;
    DataTable dt1;

    private readonly BAL.forum fm = new BAL.forum();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            
            //dfTopic
            dt = fm.getDfTopic();
            grdTopic.DataSource = dt;
            grdTopic.DataBind();
            //dfThread
            dt1 = fm.GetDfThread();
          
          

        }


    }
    protected void btntopic_Click(object sender, EventArgs e)
    {
        var uniqueUserId = "7G9WMHFM32";
        //var uniqueUserId = Session["uniqueUserId"].ToString();
        fm.insertDfTopic(txtTopic, txtDescription, uniqueUserId);

    }

  




    protected void grdTopic_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleterow")
        {
            var index = Convert.ToInt32(e.CommandArgument);
            index = index % grdTopic.PageSize;
            var row = grdTopic.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            fm.deleteDfTopic(Convert.ToInt32(lblId.Text));
            bindGridView();
        }
    }

    protected void bindGridView()
    {
        dt = fm.getDfTopic();
        grdTopic.DataSource = dt;
        grdTopic.DataBind();
    }
   

    protected void bindGridView1()
    {
        dt = fm.GetDfThread();
        grdTopic.DataSource = dt;
        grdTopic.DataBind();
    }
    protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        //var file = (Image)e.Item.FindControl("imgDoctor");
        //if (string.IsNullOrEmpty(file.ImageUrl))
        //    file.ImageUrl = "images/doctor.png";
    }
}