using System;
using System.Web.UI;
using System.Data;
public partial class patient_settings : Page
{
    DAL.AddPatient objPatient = new DAL.AddPatient();
    BAL.AddPatient objBAL = new BAL.AddPatient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getPatientData();
        }
    }

    #region Methods
    private void getPatientData()
    {
        DataTable dt = objPatient.getPatientProfile(Convert.ToString(Session["P_userId"]));

        if (dt != null && dt.Rows.Count > 0)
        {
            txtName.Text = Convert.ToString(dt.Rows[0]["fullName"]);
            txtAge.Text = Convert.ToString(dt.Rows[0]["age"]);
            txtMobileNo.Text = Convert.ToString(dt.Rows[0]["contactNumber"]);
            txtEmailId.Text = Convert.ToString(dt.Rows[0]["email"]);
            txtAddress.Text = Convert.ToString(dt.Rows[0]["address"]);
            txtOccupation.Text = Convert.ToString(dt.Rows[0]["occupation"]);
            ddlsal.SelectedValue = Convert.ToString(dt.Rows[0]["salutation"]);
            rblMarital.SelectedValue = Convert.ToString(dt.Rows[0]["maritalStatus"]);
            rblGender.SelectedValue = Convert.ToString(dt.Rows[0]["gender"]);
        }
        else
        {
            txtName.Text = "";
            txtAge.Text = "";
            txtMobileNo.Text = "";
            txtEmailId.Text = "";
            txtAddress.Text = "";
            txtOccupation.Text = "";
        }
    }



    #endregion

    #region Events

    protected void btnOk_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Patient/settings.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int i = objBAL.UpdatePatientProfile(Convert.ToString(Session["P_userId"]), ddlsal.SelectedValue.ToString(), txtName.Text.Trim(), txtMobileNo.Text.Trim(),
            txtAge.Text != "" ? Convert.ToInt32(txtAge.Text.Trim()) : 0, Convert.ToInt32(rblGender.SelectedValue), txtOccupation.Text.Trim(), txtAddress.Text.Trim(),
            Convert.ToInt32(rblMarital.SelectedValue));

        if (i > 0)
        {
            divPopUp.Style.Add("display", "block");
            lblmsg.Text = "Profile updated successfully";
        }
        else
        {
            divPopUp.Style.Add("display", "block");
            lblmsg.Text = "Error occured while updating profile";
        }

    }

    #endregion
}