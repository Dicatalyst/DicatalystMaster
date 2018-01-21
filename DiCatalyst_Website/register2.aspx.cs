using System;
using System.Web.UI;
using BAL;
public partial class register2 : Page
{
    private readonly userLogin usrlogin = new userLogin();
    private readonly Notify notify = new Notify();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void lnkResendActivation_Click(object sender, EventArgs e)
    {
       
        usrlogin.SendActivationLink(Session["userEmail"].ToString(), Session["userId"].ToString());
        notify.Success_Display("We have resent activation link to your email.  Please activate your account", Page);
    }
}