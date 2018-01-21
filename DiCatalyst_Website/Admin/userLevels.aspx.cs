using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_userLevels : System.Web.UI.Page
{
    private readonly BAL.userlevels _ul = new BAL.userlevels();
    private SqlConnection conn = new SqlConnection("Data Source=THECSS;Initial Catalog=dicatalyst;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (string.IsNullOrEmpty((String)Session["userId"]) != true)
        //{
        //}
        //else
        //{
        //    Response.Redirect("~/adminLogin.aspx");
        //}

        if (!IsPostBack)
        {
            new BAL.userlevels().GetPrivilages(17);
            _ul.getUserLevelsToGrid(gdvUsers);
            GridView1.DataSource = _ul.getProjectModules();
            GridView1.DataBind();
            //chkModules.DataSource = _ul.getProjectModules();
            //chkModules.DataTextField = "pageName";
            //chkModules.DataValueField = "id";
            //chkModules.DataBind();
        }
    }

    protected void imgAddUserLevel_Click(object sender, ImageClickEventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        bool chkReadChecked = false;
        bool chkWriteChecked = false;
        bool chkEditChecked = false;
        bool chkDeleteChecked = false;
        
        int userTypeId = _ul.insertUserTypes(txtTitle.Text);
        int pageId;
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            var chkSelect = gvrow.FindControl("chkSelect") as CheckBox;
            if (chkSelect != null && chkSelect.Checked)
            {
                var hfdid = gvrow.FindControl("hfdid") as HiddenField;
                var chkRead = gvrow.FindControl("chkRead") as CheckBox;
                var chkWrite = gvrow.FindControl("chkWrite") as CheckBox;
                var chkEdit = gvrow.FindControl("chkEdit") as CheckBox;
                var chkDelete = gvrow.FindControl("chkDelete") as CheckBox;
                
                if (chkRead != null && chkRead.Checked)
                {
                    chkReadChecked = true;
                }
                if (chkWrite != null && chkWrite.Checked)
                {
                    chkWriteChecked = true;
                }
                if (chkEdit != null && chkEdit.Checked)
                {
                    chkEditChecked = true;
                }
                if (chkDelete != null && chkDelete.Checked)
                {
                    chkDeleteChecked = true;
                }
              
                pageId = Convert.ToInt32(hfdid.Value);
                _ul.InsertUserLevels(userTypeId, pageId, chkReadChecked, chkWriteChecked, chkEditChecked, chkDeleteChecked);

            }

        }
       
        //int userTypeId = _ul.insertUserTypes(txtTitle.Text);
        //int pageId;
        //int hasAccess;
        //foreach (ListItem li in chkModules.Items)
        //{
        //    if (li.Selected == true)
        //    {
        //        pageId = Convert.ToInt32(li.Value);
        //        hasAccess = 1;
        //        _ul.insertUserLevels(userTypeId, pageId, hasAccess);
        //    }
        //    else if (li.Selected == false)
        //    {
        //        pageId = Convert.ToInt32(li.Value);
        //        hasAccess = 0;
        //        _ul.insertUserLevels(userTypeId, pageId, hasAccess);
        //    }
        //}
        Response.Redirect(Request.RawUrl);


    }

    protected void gdvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)gdvUsers.Rows[e.RowIndex];
        HiddenField hfdid = (HiddenField)row.FindControl("hfdid");
        conn.Open();
        SqlCommand cmd = new SqlCommand("delete FROM userTypes where id='" + hfdid.Value + "'", conn);
        SqlCommand cmd1 = new SqlCommand("delete FROM adminTypePrivileges where adminTypeId='" + hfdid.Value + "'", conn);
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        conn.Close();
        _ul.getUserLevelsToGrid(gdvUsers);
    }

    protected void gdvUsers_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // loop all data rows
            foreach (DataControlFieldCell cell in e.Row.Cells)
            {
                // check all cells in one row
                foreach (Control control in cell.Controls)
                {
                    // Must use LinkButton here instead of ImageButton
                    // if you are having Links (not images) as the command button.
                    ImageButton button = control as ImageButton;
                    if (button != null && button.CommandName == "Delete")
                        // Add delete confirmation
                        button.OnClientClick = "if (!confirm('Are you sure " +
                                               "you want to delete this record?')) return;";
                }
            }
        }
    }

    protected void gdvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editRow")
        {
            btnSave.Visible = false;
            btnUpdate.Visible = true;
            int index = Convert.ToInt32(e.CommandArgument);
            index = index % gdvUsers.PageSize;
            GridViewRow row = gdvUsers.Rows[index];
            HiddenField hfdid = (HiddenField) row.FindControl("hfdid");
            Session["userTypeId"] = hfdid.Value;
            DataTable dt = _ul.getassociatedModulestoUsertype(Convert.ToInt32(hfdid.Value));
            txtTitle.Text = dt.Rows[0]["userTypeName"].ToString();

            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                var chkSelect = gvrow.FindControl("chkSelect") as CheckBox;
                var hfpageid = gvrow.FindControl("hfdid") as HiddenField;
                var chkRead = gvrow.FindControl("chkRead") as CheckBox;
                var chkWrite = gvrow.FindControl("chkWrite") as CheckBox;
                var chkEdit = gvrow.FindControl("chkEdit") as CheckBox;
                var chkDelete = gvrow.FindControl("chkDelete") as CheckBox;

                foreach (DataRow dr in dt.Rows)
                {
                    if (hfpageid.Value == dr["id"].ToString())
                    {
                        chkSelect.Checked = true;
                        chkRead.Checked = Convert.ToBoolean(dr["read"].ToString());
                        chkWrite.Checked = Convert.ToBoolean(dr["write"].ToString());
                        chkEdit.Checked = Convert.ToBoolean(dr["edit"].ToString());
                        chkDelete.Checked = Convert.ToBoolean(dr["delete"].ToString());

                    }
                  
                }

                //        if (chkRead != null && chkRead.Checked)
                //        {
                //            chkReadChecked = true;
                //        }
                //        if (chkWrite != null && chkWrite.Checked)
                //        {
                //            chkWriteChecked = true;
                //        }
                //        if (chkEdit != null && chkEdit.Checked)
                //        {
                //            chkEditChecked = true;
                //        }
                //        if (chkDelete != null && chkDelete.Checked)
                //        {
                //            chkDeleteChecked = true;
                //        }


                ////chkModules.DataSource = _ul.getProjectModules();
                ////chkModules.DataTextField = "pageName";
                ////chkModules.DataValueField = "id";
                ////chkModules.DataBind();

                //foreach (ListItem li in chkModules.Items)
                //{
                //    li.Selected = false;
                //    foreach (DataRow dr in dt.Rows)
                //    {
                //        if (li.Value == dr["id"].ToString())
                //        {
                //            li.Selected = true;
                //        }
                //    }
                //}
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //conn.Open();
        //bool isActive = false;
        //SqlCommand cmd = new SqlCommand("update userTypes set userTypeName='" + txtTitle.Text + "' where id='" + Convert.ToInt32(Session["userTypeId"].ToString()) + "'", conn);
        //foreach (ListItem li in chkModules.Items)
        //{
        //    if (li.Selected == true)
        //    {
        //        isActive = true;
        //    }
        //    else
        //    {
        //        isActive = false;
        //    }
        //    SqlCommand cmd1 = new SqlCommand("update adminTypePrivileges set hasAccess='" + isActive + "' where pageId='" + li.Value + "' and  adminTypeId='" + Convert.ToInt32(Session["userTypeId"].ToString()) + "'", conn);
        //    cmd1.ExecuteNonQuery();
        //}

        //cmd.ExecuteNonQuery();
        //conn.Close();
        //Response.Redirect(Request.RawUrl);
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
    protected void chkAllPages_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ChkBoxHeader = (CheckBox)GridView1.HeaderRow.FindControl("chkAllPages");
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkBoxRows = (CheckBox)row.FindControl("chkSelect");
            if (ChkBoxHeader.Checked == true)
            {
                chkBoxRows.Checked = true;
            }
            else
            {
                chkBoxRows.Checked = false;
            }
        }
    }
    protected void chkAllRead_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ChkBoxHeader = (CheckBox)GridView1.HeaderRow.FindControl("chkAllRead");
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkBoxRows = (CheckBox)row.FindControl("chkRead");
            if (ChkBoxHeader.Checked == true)
            {
                chkBoxRows.Checked = true;
            }
            else
            {
                chkBoxRows.Checked = false;
            }
        }
    }
    protected void chkAllWrite_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ChkBoxHeader = (CheckBox)GridView1.HeaderRow.FindControl("chkAllWrite");
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkBoxRows = (CheckBox)row.FindControl("chkWrite");
            if (ChkBoxHeader.Checked == true)
            {
                chkBoxRows.Checked = true;
            }
            else
            {
                chkBoxRows.Checked = false;
            }
        }
    }
    protected void chkAllEdit_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ChkBoxHeader = (CheckBox)GridView1.HeaderRow.FindControl("chkAllEdit");
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkBoxRows = (CheckBox)row.FindControl("chkEdit");
            if (ChkBoxHeader.Checked == true)
            {
                chkBoxRows.Checked = true;
            }
            else
            {
                chkBoxRows.Checked = false;
            }
        }
    }
    protected void chkAllDelete_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ChkBoxHeader = (CheckBox)GridView1.HeaderRow.FindControl("chkAllDelete");
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkBoxRows = (CheckBox)row.FindControl("chkDelete");
            if (ChkBoxHeader.Checked == true)
            {
                chkBoxRows.Checked = true;
            }
            else
            {
                chkBoxRows.Checked = false;
            }
        }
    }
}