using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data.SqlClient;
using System.Data;
using DAL;

public partial class Dentist_addReceptionist : System.Web.UI.Page
{

    private DAL.randomUniqueNumber rn = new DAL.randomUniqueNumber();
    private BAL.userlevels ul = new BAL.userlevels();
    private BAL.adminusers us_BAL = new BAL.adminusers();
    private BAL.GlobalSearch glb = new BAL.GlobalSearch();
    private string uniqueId = "";
    private SqlCommand cmd;
    private DataSet ds;
    private DAL.Connections dac = new Connections();
    private SqlConnection conn = new SqlConnection("Data Source=THECSS;Initial Catalog=dicatalyst;Integrated Security=True");




    private string dbfilepath = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty((String)Session["userId"]) != true)
        {
            //glb.GetCountriesToDropdown(ddlCountry);
            bindgdvAdminDetails();
            // us_BAL.getIdProofType(ddlIdType);
            Bindrepeater();

        }
        else
        {
            Response.Redirect("~/login.aspx");
        }


    }



    protected void imgAddUsers_Click(object sender, ImageClickEventArgs e)
    {
    }

    protected void ddlUserLevels_SelectedIndexChanged(object sender, EventArgs e)
    {
        //int id = Convert.ToInt32(ddlUserLevels.SelectedValue);
        //DataTable dt = ul.getassociatedModulestoUsertype(id);

        //string modulesids = dt.Rows[0]["workAreas"].ToString();

        //DataTable dtmodules = new DataTable();
        //dtmodules.Columns.Add("ModuleName");

        //foreach (string item in modulesids.Split(new char[] { ',' }))
        //{
        //    DataRow dr = dtmodules.NewRow();
        //    dr["ModuleName"] = ul.projectModuleNames(Convert.ToInt32(item.ToString())).Rows[0]["moduleName"].ToString();
        //    dtmodules.Rows.Add(dr);
        //}

        //DataList1.DataSource = dt;
        //DataList1.DataBind();
    }

    //Changes by Ram start
    private DataTable GetReceptionist()
    {
        //USP_Get_Receptionist_dtls
        cmd = dac.GetCommand("USP_Get_Receptionist_dtls");
        SqlParameter[] par = {
                    new SqlParameter("@doctorId", Convert.ToString(Session["userId"]))
                };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dac.EnsureOpen();
        ds = dac.ExecuteNonQuery_selectQuery(cmd);
        return ds.Tables[0];
    }

    private int DeleteReceptionist(string UserName, string Email)
    {
        int result = 0;
        dac.EnsureOpen();
        cmd = dac.GetCommand("USP_Delete_Receptionist");
        SqlParameter[] par = {
                    new SqlParameter("@email", Email),
                    new SqlParameter("@UserName", UserName)
                };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        result = cmd.ExecuteNonQuery();
        dac.Close();
        return result;
    }

    //Changes by Ram end

    protected void btnSave_Click(object sender, EventArgs e)
    {


        cmd = dac.GetCommand("sp_insertReceptionist");
        SqlParameter[] par = {
                    new SqlParameter("@fullName", txtName.Text),                                    
                    new SqlParameter("@Username", txtUsername.Text),                                   
                        new SqlParameter("@Password", txtPassword.Text),                                    
                    new SqlParameter("@email", txtEmail.Text),    
                                  new SqlParameter("@mobile", txtMobile.Text),                                    
                    new SqlParameter("@gender", Convert.ToInt32( rblGender.SelectedItem.Value)),    
                        new SqlParameter("@dateOfJoining",Convert.ToDateTime(txtDateOfJoining.Text)),                                    
                    new SqlParameter("@Address", TextBox1.Text),
                    new SqlParameter("@doctorId",Session["userId"].ToString())
                };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dac.EnsureOpen();
        cmd.ExecuteNonQuery();
        dac.Close();


        //uploadProfileImage();

        //bool isPrimaryContact = false;
        //bool isActive = true;

        //int adminUserId = us_BAL.insertAdminUser(ddlIdType, ddlCountry, ddlState, ddlUserLevels,
        //    Convert.ToInt32(rblGender.SelectedItem.Value),
        //    isPrimaryContact, isActive, txtEmpId, dbfilepath,
        //    txtName, txtUsername, txtPassword, txtEmail, txtMobile,
        //    txtDateOfJoining, txtId, txtCity, txtZipCode, txtAddress, DateTime.Now);
        //bindgdvAdminDetails();
        Response.Redirect(Request.RawUrl);
    }

    protected void uploadProfileImage()
    {
        //if (FileUpload1.HasFile)
        //{
        //    try
        //    {
        //        string fileBase = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
        //        string ext = Path.GetExtension(FileUpload1.FileName);
        //        string filename = fileBase + rn.getRandomUniqueNumber() + ext;

        //        string filePath = MapPath("~/Admin/adminuserImages/") + filename;
        //        FileUpload1.SaveAs(filePath);
        //        dbfilepath = "adminuserImages/" + filename;
        //    }
        //    catch (Exception)
        //    {
        //    }
        //}
        //else if (!string.IsNullOrEmpty(imgFileUpload.ImageUrl))
        //{
        //    dbfilepath = imgFileUpload.ImageUrl;
        //}
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        // glb.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry.SelectedItem.Value), ddlState);
    }

    protected void ddlHotels_SelectedIndexChanged(object sender, EventArgs e)
    {
        // bindgdvAdminDetails();
    }

    protected void Bindrepeater()
    {
        DataTable dt = GetReceptionist();

        if (dt != null && dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        else
        {
            DataList1.DataSource = null;
            DataList1.DataBind();
        }
    }

    protected void bindgdvAdminDetails()
    {
        // gdvAdminDetails.DataSource = us_BAL.getAdminUsers(ddlHotels.SelectedItem.Value.ToString());
        //gdvAdminDetails.DataSource = us_BAL.getAdminUsers();
        //gdvAdminDetails.DataBind();
    }

    protected void gdvAdminDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "editrow")
        //{
        //    btnSave.Visible = false;
        //    btnUpdate.Visible = true;
        //    btnCancel.Visible = true;
        //    int index = Convert.ToInt32(e.CommandArgument);
        //    index = index % gdvAdminDetails.PageSize;
        //    GridViewRow row = gdvAdminDetails.Rows[index];

        //    Label lblId = (Label)row.FindControl("lblId");
        //    string id = lblId.Text;
        //    Session["id"] = id;
        //    DataTable dtedit = us_BAL.getAdminUserById(Convert.ToInt32(id));



        //    txtEmpId.Text = dtedit.Rows[0]["employeeId"].ToString();


        //    imgFileUpload.ImageUrl = dtedit.Rows[0]["photo"].ToString();


        //    txtName.Text = dtedit.Rows[0]["firstName"].ToString();

        //    txtUsername.Text = dtedit.Rows[0]["username"].ToString();


        //    txtEmail.Text = dtedit.Rows[0]["email"].ToString();

        //    txtMobile.Text = dtedit.Rows[0]["mobile"].ToString();

        //    if (Convert.ToInt32(dtedit.Rows[0]["gender"]) == 1)
        //    {
        //        rblGender.SelectedValue = "1";
        //    }
        //    else
        //    {
        //        rblGender.SelectedValue = "0";
        //    }

        //    txtDateOfJoining.Text = dtedit.Rows[0]["dateOfJoining"].ToString();

        //    ddlIdType.SelectedValue = dtedit.Rows[0]["idType"].ToString();

        //    txtId.Text = dtedit.Rows[0]["idNo"].ToString();

        //    ddlCountry.SelectedValue = dtedit.Rows[0]["countryId"].ToString();
        //    glb.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry.SelectedItem.Value), ddlState);

        //    ddlState.SelectedValue = dtedit.Rows[0]["stateId"].ToString();

        //    txtCity.Text = dtedit.Rows[0]["city"].ToString();

        //    txtZipCode.Text = dtedit.Rows[0]["zipcode"].ToString();

        //    txtAddress.Text = dtedit.Rows[0]["address"].ToString();

        //    ddlUserLevels.SelectedValue = dtedit.Rows[0]["userTypeId"].ToString();

        //    //Literal hotelId = (Literal)row.FindControl("Literal2");
        //    //ddlHotels.SelectedValue = hotelId.Text;
        //    //us.usersbyHotelId(hotelId.Text, ddlHotelUsers);
        //    //txtDateofRelease.Text = row.Cells[4].Text;
        //    //rblModeofRelease.SelectedValue = row.Cells[5].Text;
        //    //txtAmount.Text = row.Cells[6].Text;
        //    //ddlHotelUsers.SelectedValue = row.Cells[7].Text;
        //}
        //else if (e.CommandName == "deleterow")
        //{
        //    int index = Convert.ToInt32(e.CommandArgument);
        //    index = index % gdvAdminDetails.PageSize;
        //    GridViewRow row = gdvAdminDetails.Rows[index];
        //    Label lblId = (Label)row.FindControl("lblId");


        //    string id = lblId.Text;
        //    us_BAL.deleteAdminUsers(Convert.ToInt32(id));
        //    bindgdvAdminDetails();
        //}
    }



    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        //uploadProfileImage();
        //us_BAL.updateAdminUsers(ddlIdType, ddlCountry, ddlState, ddlUserLevels,
        //    Convert.ToInt32(rblGender.SelectedItem.Value),
        //    txtEmpId, dbfilepath,
        //    txtName, txtUsername, txtPassword, txtEmail, txtMobile,
        //    txtDateOfJoining, txtId, txtCity, txtZipCode, txtAddress, DateTime.Now, Convert.ToInt32(Session["id"].ToString()));
        //bindgdvAdminDetails();

        Response.Redirect(Request.RawUrl);
    }

    protected void gdvAdminDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //gdvAdminDetails.PageIndex = e.NewPageIndex;
        //bindgdvAdminDetails();
    }

    protected void gdvAdminDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{

        //    Literal ltlUserType = e.Row.FindControl("ltlUserType") as Literal;
        //    Literal ltlState = e.Row.FindControl("ltlState") as Literal;
        //    Literal ltlCountry = e.Row.FindControl("ltlCountry") as Literal;
        //    Literal ltlIdType = e.Row.FindControl("ltlIdType") as Literal;
        //    Label hfduserid = e.Row.FindControl("lblId") as Label;
        //    DataTable dt = us_BAL.getAdminUserDetailsNamesofIds(Convert.ToInt32(hfduserid.Text));

        //    ltlUserType.Text = dt.Rows[0]["userTypeName"].ToString();
        //    ltlState.Text = dt.Rows[0]["state"].ToString();
        //    ltlCountry.Text = dt.Rows[0]["country"].ToString();
        //    ltlIdType.Text = dt.Rows[0]["idProofTypeName"].ToString();

        //}

    }

    //Changes by Ram start

    protected void DataList1_ItemCommand(object sender, RepeaterCommandEventArgs e)
    {
        string UserName = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("UserName"))).InnerText;
        string Email = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Email"))).InnerText;

        if (e.CommandName == "update")
        {
            txtName.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Name"))).InnerText;
            txtUsername.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("UserName"))).InnerText;
            txtUsername.Enabled = false;
            txtPassword.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Pwd"))).InnerText;
            txtConfirmPwd.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Pwd"))).InnerText;
            txtEmail.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Email"))).InnerText;
            txtEmail.Enabled = false;
            txtMobile.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Mobile"))).InnerText;
            rblGender.SelectedValue = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Gender"))).InnerText;
            //txtDateOfJoining.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("DOJ"))).InnerText;
            TextBox1.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("Address"))).InnerText;
        }

        if (e.CommandName == "delete")
        {
            int result = 0;
            result = DeleteReceptionist(UserName, Email);
            if (result > 0)
            {
                divPopUp.Style.Add("display", "block");
                lblmsg.Text = "Record deleted successfully";
            }
            else
            {
                divPopUp.Style.Add("display", "block");
                lblmsg.Text = "Error occured while deleting record";
            }
        }
    }

    protected void btnOk_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Dentist/addReceptionist.aspx");
    }

    //protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);

    //    if (e.CommandName == "update")
    //    {
    //txtName.Text = row.Cells[1].Text;
    //txtUsername.Text = row.Cells[2].Text;
    //txtPassword.Text = row.Cells[3].Text;
    //txtConfirmPwd.Text = row.Cells[3].Text;
    //txtEmail.Text = row.Cells[4].Text;
    //txtMobile.Text = row.Cells[5].Text;
    //rblGender.SelectedValue = row.Cells[6].Text;
    ////txtDateOfJoining.Text = row.Cells[7].Text;
    //TextBox1.Text = row.Cells[8].Text;
    //    }
    //}

    //Changes by ram end


}