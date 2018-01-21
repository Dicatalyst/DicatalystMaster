using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class laboratory_messages : Page
{

    private BAL.message msg = new BAL.message();
    DataTable dt;



    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) { BindData(); }

    }


    protected void BindData()
    {
        dt = msg.getMessage();

        DataList1.DataSource = dt;
        DataList1.DataBind();

    }

    protected void lnkTrash_Click(object sender, EventArgs e)
    {
        bool isDeleted;

        // Check each box and see if the item should be deleted.
        foreach (DataListItem anItem in DataList1.Items)
        {
            CheckBox chkRows = (CheckBox)anItem.FindControl("chkRows");

            if (chkRows.Checked == true)
            {
                HiddenField hdfId = (HiddenField)anItem.FindControl("hdfId");
                msg.deleteMessage(Convert.ToInt32(hdfId.Value));
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
                msg.deleteMessage(Convert.ToInt32(hdfId.Value));
                // Add code here to delete the item, using anItem.ItemIndex.
            }
        }

        

        BindData();

    }


}