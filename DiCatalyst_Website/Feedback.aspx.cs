using BAL;
using System;
using System.Drawing;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Web.UI;

public partial class Feedback : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void EmailFeedback()
    {
        try
        {
            var fromEmail = "mail2raviadabala@gmail.com";
            string body = "<h2>" + "Enquiry from " + " " + txtName.Text + "</h2>" + "<br><br>" +
                 "Subject: " + txtSubject.Text + "<br>" +
                 "Email : " + txtEmail.Text.Trim() + "<br>" +
                 "Mobile : " + txtMobile.Text.Trim() + "<br>" +
                 "Comments: " + txtInquiry.Text.Trim() + "<br>" +
                 "Thank You";


            GlobalSearch s = new GlobalSearch();
            s.EmailFeedback(fromEmail, txtEmail.Text, body);
        }
        catch(Exception ex)
        {
            string FilePathSave = Server.MapPath("Log\\log.txt");
            File.WriteAllText(FilePathSave, ex.ToString());
        }
    }
    private void Clear()

    {

        txtName.Text = string.Empty;

        txtSubject.Text = string.Empty;

        txtEmail.Text = string.Empty;

        txtInquiry.Text = string.Empty;



    }



    protected void btnSubmit_Click1(object sender, EventArgs e)

    {



        EmailFeedback();

        lblMsg.ForeColor = Color.Green;

        Clear();

        lblMsg.Text = "Thank You for Your Inquiry";





    }
}