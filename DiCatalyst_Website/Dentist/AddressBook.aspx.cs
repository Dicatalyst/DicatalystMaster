using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;

public partial class Dentist_AddressBook : Page
{
    DataTable dt;


    private readonly BAL.addressBook add = new BAL.addressBook();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindAddress();
            bindContact();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    }
    protected void btnAddress_Click(object sender, EventArgs e)
    {
        string doctorId="hfdaegfj";

        add.insertDentistAddressBook(doctorId,txtFullName,txtDateOfBirth,txtMobile,txtAddress,txtEmailId,txtOccupation,txtOrganization,txtWorkAddress,txtWorkPhone,txtWorkEmail,txtFacebook,txtYouTube,txtLinkedIn,txtTwitter,txtGoogle);
        bindAddress();
    }
    //protected void gdAddress_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdAddress.PageSize;
    //        var row = gdAddress.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        add.deleteDentistAddressBook(Convert.ToInt32(lblId.Text));
    //        bindAddress();
    //    }
    //}

    protected void bindAddress()
    {
        dt = add.getdentistAddressBook();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    //protected void gdContact_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //     if (e.CommandName == "deleterow")
    //    {
    //        var index = Convert.ToInt32(e.CommandArgument);
    //        index = index % gdContact.PageSize;
    //        var row = gdContact.Rows[index];
    //        var lblId = (Label)row.FindControl("lblId");
    //        add.deleteDentistAddressBook(Convert.ToInt32(lblId.Text));
    //        bindContact();
    //    }
    //}

    protected void bindContact()
    {
        dt = add.getdentistAddressBook();
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }

    }
