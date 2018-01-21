using System;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Web.UI;
using BAL;

public partial class Register : Page
{
    private readonly Notify notify = new Notify();
    private readonly Users usersBal = new Users();
    private readonly userLogin userlog = new userLogin();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
              
            }
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (chkTerms.Checked)
        {
            DataTable dt = usersBal.checkUserEmail(txtEmail.Text, Convert.ToInt32(ddlModule.SelectedItem.Value));
            if (dt.Rows.Count > 0)
            {
                notify.Error_Display("The email you entered is already registered with us", Page);
            }
            else
            {
            var uniqueUserId = usersBal.InsertRegistrationDetails(txtFullName, txtEmail, txtContactNumber, txtPassword, "", ddlModule);
            Session["userEmail"] = txtEmail.Text;
            Session["userId"] = uniqueUserId; 
            userlog.SendActivationLink(txtEmail.Text, uniqueUserId);
            Response.Redirect("register2.aspx");
            }
          
        }
        else
        {
            notify.Error_Display("Please accept the terms and conditions to proceed with registration", Page);
        }
    }


    
}