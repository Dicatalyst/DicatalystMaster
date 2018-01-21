using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Net.Mail;
using System.Net;
using DAL;

public partial class ResetPassword : System.Web.UI.Page
{
    private readonly BAL.Users userbal = new BAL.Users();

    DAL.randomUniqueNumber rn = new randomUniqueNumber();
    private readonly BAL.Notify noty = new BAL.Notify();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            else
            {
                pnlEmail.Visible = true;
                btnEmail.Visible = true;
            }
        }
    }
    protected void btnEmail_Click(object sender, EventArgs e)
    {
        DataTable dt = userbal.checkUserEmail(txtEmail.Text, Convert.ToInt32(ddlModule.SelectedItem.Value));
        if (dt.Rows.Count > 0)
        {
            SendResetPasswordLink(txtEmail.Text);
            txtCode.Visible = true;
            btnCheckSecurity.Visible = true;
            noty.Success_Display("Please check your email and enter the security code sent to it", Page);

        }
        else if (dt.Rows.Count <= 0)
        {
            txtCode.Visible = false;
            noty.Warning_Display("You are not Registered with us. Please register it is free!", Page);


        }

    }

    public void SendResetPasswordLink(string toEmail)
    {
      
        //no-reply@dicatalyst.com
        string randomnumber = rn.getRandomUniqueNumberforResetPassword();
        userbal.insertUniqueCodeForResetPassword(randomnumber, txtEmail);


        //Ravi todo for hosting

        var fromEmail = "info@Dicatalyst.com";
        var password = "India@206$";
        using (var mm = new MailMessage(fromEmail, toEmail))
        {
            mm.Subject = "No Reply - Reset Password";
            mm.Body = "Your Password Reset Code is:<br />" + randomnumber;
            mm.IsBodyHtml = true;

            var smtp = new SmtpClient("relay-hosting.secureserver.net", 25);



            smtp.EnableSsl = false;
            var networkCred = new NetworkCredential(fromEmail, password);
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = networkCred;
            //smtp.Port = 587;
            smtp.Send(mm);
        }
        btnEmail.Visible = false;
        Session["email"] = toEmail;

        //Ravi todo for hosting


        ////no-reply@dicatalyst.com
        //string randomnumber = rn.getRandomUniqueNumberforResetPassword();
        //userbal.insertUniqueCodeForResetPassword(randomnumber, txtEmail);


        //var fromEmail = "mail2raviadabala@gmail.com";
        //var password = "ravi6500";

        //using (var mm = new MailMessage(fromEmail, toEmail))
        //{
        //    mm.Subject = "No Reply - Reset Password";
        //    mm.Body = "Your Password Reset Code is:<br />" + randomnumber;
        //    mm.IsBodyHtml = true;
        //    var smtp = new SmtpClient();
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.EnableSsl = true;
        //    var networkCred = new NetworkCredential(fromEmail, password);
        //    smtp.UseDefaultCredentials = true;
        //    smtp.Credentials = networkCred;
        //    smtp.Port = 587;
        //    smtp.Send(mm);
        //}

        //btnEmail.Visible = false;
        //Session["email"] = toEmail;
    }

    protected void btnCheckSecurity_OnClick(object sender, EventArgs e)
    {

        DataTable dt = userbal.getResetPassword(txtCode.Text);

        if (dt.Rows.Count > 0)
        {
            pnlPassword.Visible = true;
            pnlEmail.Visible = false;
            btnEmail.Visible = false;
            btnCheckSecurity.Visible = false;
            txtCode.Visible = false;
            btnPassword.Visible = true;
          
        }
        else
        {
            noty.Error_Display("The code you entered is not valid", Page);
            pnlEmail.Visible = true;
            btnEmail.Visible = true;
            txtCode.Visible = false;
            pnlPassword.Visible = false;
            btnCheckSecurity.Visible = false;
            btnPassword.Visible = false;
           

        }



    }
    protected void btnPassword_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        string password = txtPassword.Text;
        userbal.ResetPassword(email, password);
        noty.Success_Display("Your Password is Changed Successfully. Please login to proceed further", Page);
        pnlPassword.Visible = false;
        btnPassword.Visible = false;
        pnlFinalMsg.Visible = true;

    }
}