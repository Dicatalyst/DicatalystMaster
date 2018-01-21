using System;

using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Dentist_Messages : Page
{
    private BAL.message msg = new BAL.message();
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
            BindData1();
        }

    }



    protected void BindData()
    {
        dt = msg.getInboxMessages();

        DataList1.DataSource = dt;
        DataList1.DataBind();

    }
    protected void BindData1()
    {


        DataList2.DataSource = dt;
        DataList2.DataBind();

    }

    protected void lnkTrash_Click(object sender, EventArgs e)
    {

        // Check each box and see if the item should be deleted.
        foreach (DataListItem anItem in DataList1.Items)
        {
            CheckBox chkRows = (CheckBox)anItem.FindControl("chkRows");

            if (chkRows.Checked == true)
            {
                HiddenField hdfId = (HiddenField)anItem.FindControl("hdfId");
                msg.MoveToTrash(Convert.ToInt32(hdfId.Value));
                // Add code here to delete the item, using anItem.ItemIndex.
            }
        }

        BindData();


    }




    protected void lnkDelete_Click(object sender, EventArgs e)
    {
        bool isDeleted;

        // Check each box and see if the item should be deleted.
        foreach (DataListItem anItem in DataList1.Items)
        {
            CheckBox chkRows = (CheckBox)anItem.FindControl("chkRows");

            if (chkRows.Checked == true)
            {
                HiddenField hdfId = (HiddenField)anItem.FindControl("hdfId");
                msg.MoveToTrash(Convert.ToInt32(hdfId.Value));
                // Add code here to delete the item, using anItem.ItemIndex.
            }
        }

        BindData();





    }
    protected void lnkSendReply_Click(object sender, EventArgs e)
    {
        var serverPath = "";

        var fromuserId = "K5WTKICOLV";

        var id = 1;
        //var uniqueUserId = Session["uniqueUserId"].ToString();


        //if (dfFile.PostedFile.ContentLength < 204800)
        if (fileAttachment.HasFile)
        {
            var filename = Path.GetFileName(fileAttachment.FileName);
            fileAttachment.SaveAs(Server.MapPath("~/Hospital/MessageFiles/") + filename);
            serverPath = "~/Hospital/MessageFiles/" + filename;

            msg.insertMessage(txtSubject, txtMessage, serverPath, fromuserId, txtTo, id);

        }



    }
    protected void lnkForward_Click(object sender, EventArgs e)
    {


        var serverPath = "";

        var fromuserId = "K5WTKICOLV";

        var id = 1;
        //var uniqueUserId = Session["uniqueUserId"].ToString();


        //if (dfFile.PostedFile.ContentLength < 204800)
        if (fileAttachment.HasFile)
        {
            var filename = Path.GetFileName(fileAttachment.FileName);
            fileAttachment.SaveAs(Server.MapPath("~/Hospital/MessageFiles/") + filename);
            serverPath = "~/Hospital/MessageFiles/" + filename;

            msg.insertMessage(txtSubject, txtMessage, serverPath, fromuserId, txtTo, id);

        }
        foreach (DataListItem anItem in DataList1.Items)
        {
            CheckBox chkRows1 = (CheckBox)anItem.FindControl("chkRows1");

            if (chkRows1.Checked == true)
            {
                HiddenField hdfId = (HiddenField)anItem.FindControl("hdfId");
                msg.ForwardMessage(Convert.ToInt32(hdfId.Value));
                // Add code here to delete the item, using anItem.ItemIndex.
            }
        }

        BindData1();

    }

}