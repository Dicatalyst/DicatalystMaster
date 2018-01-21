using System;
using System.Web.UI;
using BAL;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.IO;
using System.Reflection;

namespace Admin
{
    public partial class Admin_AdminUsers : Page
    {
        private DAL.randomUniqueNumber rn = new DAL.randomUniqueNumber();
        private userlevels ul = new userlevels();
        private adminusers us_BAL = new adminusers();
        private GlobalSearch glb = new GlobalSearch();
        private string uniqueId = "";

        private SqlConnection conn = new SqlConnection("Data Source=THECSS;Initial Catalog=dicatalyst;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((String)Session["adminuserId"]) != true)
            {

            }
            else
            {
                Response.Redirect("adminlogin.aspx");
            }

            if (!IsPostBack)
            {
                ul.GetPrivilages(6);
                ul.getUserLevels(ddlUserLevels);
                glb.GetCountriesToDropdown(ddlCountry);
                bindgdvAdminDetails();
                us_BAL.getIdProofType(ddlIdType);

            }
        }

        private string dbfilepath = "";

        protected void imgAddUsers_Click(object sender, ImageClickEventArgs e)
        {
        }

        protected void ddlUserLevels_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ddlUserLevels.SelectedValue);
            DataTable dt = ul.getassociatedModulestoUsertype(id);

            //string modulesids = dt.Rows[0]["workAreas"].ToString();

            //DataTable dtmodules = new DataTable();
            //dtmodules.Columns.Add("ModuleName");

            //foreach (string item in modulesids.Split(new char[] { ',' }))
            //{
            //    DataRow dr = dtmodules.NewRow();
            //    dr["ModuleName"] = ul.projectModuleNames(Convert.ToInt32(item.ToString())).Rows[0]["moduleName"].ToString();
            //    dtmodules.Rows.Add(dr);
            //}

            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            uploadProfileImage();

            bool isPrimaryContact = false;
            bool isActive = true;

            int adminUserId = us_BAL.insertAdminUser(ddlIdType, ddlCountry, ddlState, ddlUserLevels,
                Convert.ToInt32(rblGender.SelectedItem.Value),
                isPrimaryContact, isActive, txtEmpId, dbfilepath,
                txtName, txtUsername, txtPassword, txtEmail, txtMobile,
                txtDateOfJoining, txtId, txtCity, txtZipCode, txtAddress, DateTime.Now);
            bindgdvAdminDetails();
            Response.Redirect(Request.RawUrl);
        }

        protected void uploadProfileImage()
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string fileBase = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                    string ext = Path.GetExtension(FileUpload1.FileName);
                    string filename = fileBase + rn.getRandomUniqueNumber() + ext;

                    string filePath = MapPath("~/Admin/adminuserImages/") + filename;
                    FileUpload1.SaveAs(filePath);
                    dbfilepath = "adminuserImages/" + filename;
                }
                catch (Exception)
                {
                }
            }
            else if(!string.IsNullOrEmpty(imgFileUpload.ImageUrl))
            {
                dbfilepath = imgFileUpload.ImageUrl;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            glb.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry.SelectedItem.Value), ddlState);
        }

        protected void ddlHotels_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindgdvAdminDetails();
        }

        protected void bindgdvAdminDetails()
        {
            // gdvAdminDetails.DataSource = us_BAL.getAdminUsers(ddlHotels.SelectedItem.Value.ToString());
            gdvAdminDetails.DataSource = us_BAL.getAdminUsers();
            gdvAdminDetails.DataBind();
        }

        protected void gdvAdminDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editrow")
            {
                btnSave.Visible = false;
                btnUpdate.Visible = true;
                btnCancel.Visible = true;
                int index = Convert.ToInt32(e.CommandArgument);
                index = index % gdvAdminDetails.PageSize;
                GridViewRow row = gdvAdminDetails.Rows[index];

                Label lblId = (Label)row.FindControl("lblId");
                string id = lblId.Text;
                Session["id"] = id;
                DataTable dtedit = us_BAL.getAdminUserById(Convert.ToInt32(id));



                txtEmpId.Text = dtedit.Rows[0]["employeeId"].ToString();
                
              
                imgFileUpload.ImageUrl = dtedit.Rows[0]["photo"].ToString();

               
                txtName.Text = dtedit.Rows[0]["firstName"].ToString();
               
                txtUsername.Text = dtedit.Rows[0]["username"].ToString();
            
             
                txtEmail.Text = dtedit.Rows[0]["email"].ToString();

                txtMobile.Text = dtedit.Rows[0]["mobile"].ToString();

                if (Convert.ToInt32(dtedit.Rows[0]["gender"]) == 1)
                {
                    rblGender.SelectedValue = "1";
                }
                else
                {
                    rblGender.SelectedValue = "0";
                }
               
                txtDateOfJoining.Text = dtedit.Rows[0]["dateOfJoining"].ToString();

                ddlIdType.SelectedValue = dtedit.Rows[0]["idType"].ToString();

                txtId.Text = dtedit.Rows[0]["idNo"].ToString();

                ddlCountry.SelectedValue = dtedit.Rows[0]["countryId"].ToString();
                glb.GetSatesToDropdownbycountryId(Convert.ToInt32(ddlCountry.SelectedItem.Value), ddlState);

                ddlState.SelectedValue = dtedit.Rows[0]["stateId"].ToString();
               
                txtCity.Text = dtedit.Rows[0]["city"].ToString();
              
                txtZipCode.Text = dtedit.Rows[0]["zipcode"].ToString();

                txtAddress.Text = dtedit.Rows[0]["address"].ToString();

                ddlUserLevels.SelectedValue = dtedit.Rows[0]["userTypeId"].ToString();

                //Literal hotelId = (Literal)row.FindControl("Literal2");
                //ddlHotels.SelectedValue = hotelId.Text;
                //us.usersbyHotelId(hotelId.Text, ddlHotelUsers);
                //txtDateofRelease.Text = row.Cells[4].Text;
                //rblModeofRelease.SelectedValue = row.Cells[5].Text;
                //txtAmount.Text = row.Cells[6].Text;
                //ddlHotelUsers.SelectedValue = row.Cells[7].Text;
            }
            else if (e.CommandName == "deleterow")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                index = index % gdvAdminDetails.PageSize;
                GridViewRow row = gdvAdminDetails.Rows[index];
                Label lblId = (Label)row.FindControl("lblId");


                string id = lblId.Text;
                us_BAL.deleteAdminUsers(Convert.ToInt32(id));
                bindgdvAdminDetails();
            }
        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            uploadProfileImage();
            us_BAL.updateAdminUsers(ddlIdType, ddlCountry, ddlState, ddlUserLevels,
                Convert.ToInt32(rblGender.SelectedItem.Value),
                txtEmpId, dbfilepath,
                txtName, txtUsername, txtPassword, txtEmail, txtMobile,
                txtDateOfJoining, txtId, txtCity, txtZipCode, txtAddress, DateTime.Now, Convert.ToInt32(Session["id"].ToString()));
            bindgdvAdminDetails();

            Response.Redirect(Request.RawUrl);
        }

        protected void gdvAdminDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdvAdminDetails.PageIndex = e.NewPageIndex;
            bindgdvAdminDetails();
        }

        protected void gdvAdminDetails_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
              
                Literal ltlUserType = e.Row.FindControl("ltlUserType") as Literal;
                Literal ltlState = e.Row.FindControl("ltlState") as Literal;
                Literal ltlCountry = e.Row.FindControl("ltlCountry") as Literal;
                Literal ltlIdType = e.Row.FindControl("ltlIdType") as Literal;
                Label hfduserid = e.Row.FindControl("lblId") as Label;
                DataTable dt = us_BAL.getAdminUserDetailsNamesofIds(Convert.ToInt32(hfduserid.Text));

                ltlUserType.Text = dt.Rows[0]["userTypeName"].ToString();
                ltlState.Text = dt.Rows[0]["state"].ToString();
                ltlCountry.Text = dt.Rows[0]["country"].ToString();
                ltlIdType.Text = dt.Rows[0]["idProofTypeName"].ToString();

            }
            
        }
}
}