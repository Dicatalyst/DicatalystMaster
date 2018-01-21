using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;

namespace BAL
{
   public class userLogin
    {
        private DAL.userLogins uL = new DAL.userLogins();

        public DataTable CheckUserLogin(TextBox txtUsername, TextBox txtPassword)
        {
            return uL.GetAdminLoginDetails(txtUsername.Text, txtPassword.Text);
        }

        public DataTable GetAdminUsersLoginDetails(TextBox txtUsername, TextBox txtPassword)
        {
            return uL.GetAdminUsersLoginDetails(txtUsername.Text, txtPassword.Text);
        }

        //Below method Added by Ram
        private string GetEmailtemplate(string UserId)
        {
            string sTemplate = string.Empty;
            System.IO.StreamReader sreamreader = null;
            var strLocation = System.Web.HttpContext.Current.Server.MapPath("EmailTemplates/Registration.html");
            try
            {
                sreamreader = new System.IO.StreamReader(strLocation);
                sTemplate = sreamreader.ReadToEnd();
                sreamreader.Close();
                sTemplate = sTemplate.Replace("{UserId}", UserId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return sTemplate;
        }
        public void SendActivationLink(string toEmail, string uniqueUserId)  // For Hosting code
        {

            var txtEmail = "info@Dicatalyst.com";
            var password = "India@206$";
           
            using (var mm = new MailMessage(txtEmail, toEmail))
            {
                mm.Subject = "No Reply - Registration Confirmation From DiCatalyst";
                //Below mm.Body commented by Ram
                //mm.Body =
                //    "Please click the following link to activate your account with DiCatalyst http://www.dicatalyst.com/activateUser.aspx?id=" +
                //    // "Please click the following link to activate your account with DiCatalyst http://localhost:7378/activateUser.aspx?id=" +
                //    uniqueUserId + "DXDEGDWEixkaKLADIENLDHJZ9dhd9AFEJCVNVXIFSJ3nmj3j";
                mm.Body = GetEmailtemplate(uniqueUserId);

                mm.IsBodyHtml = true;

                var smtp = new SmtpClient("relay-hosting.secureserver.net", 25);

                smtp.EnableSsl = false;

                var networkCred = new NetworkCredential(txtEmail, password);
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = networkCred;
                smtp.Send(mm);
            }
        }

        //public void SendActivationLink(string toEmail, string uniqueUserId)
        //{

        //    var txtEmail = "mail2raviadabala@gmail.com";
        //    var password = "ravi6500";
        //    using (var mm = new MailMessage(txtEmail, toEmail))
        //    {
        //        mm.Subject = "No Reply - Registration Confirmation From DiCatalyst";
        //        //Below mm.Body commented by Ram
        //        //mm.Body =
        //        //    "Please click the following link to activate your account with DiCatalyst http://www.dicatalyst.com/activateUser.aspx?id=" +
        //        //    // "Please click the following link to activate your account with DiCatalyst http://localhost:7378/activateUser.aspx?id=" +
        //        //    uniqueUserId + "DXDEGDWEixkaKLADIENLDHJZ9dhd9AFEJCVNVXIFSJ3nmj3j";
        //        mm.Body = GetEmailtemplate(uniqueUserId);

        //        mm.IsBodyHtml = true;
        //        var smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.EnableSsl = true;
        //        var networkCred = new NetworkCredential(txtEmail, password);
        //        smtp.UseDefaultCredentials = true;
        //        smtp.Credentials = networkCred;
        //        smtp.Port = 587;
        //        smtp.Send(mm);

        //        //var smtp = new SmtpClient("relay-hosting.secureserver.net", 25);

        //        //smtp.EnableSsl = false;

        //        //var networkCred = new NetworkCredential(txtEmail, password);
        //        //smtp.UseDefaultCredentials = false;
        //        //smtp.Credentials = networkCred;
        //        //smtp.Send(mm);
        //    }
        //}


    }
}
