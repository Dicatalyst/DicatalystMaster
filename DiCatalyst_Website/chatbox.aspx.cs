using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.ServiceModel.Activities;
using BAL;
using System.Configuration;

public partial class chatbox : System.Web.UI.Page
{
    private readonly BAL.Users _usersbal = new BAL.Users();
    private readonly BAL.chat ch = new BAL.chat();
    private readonly BAL.Notify noty = new Notify();
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {

                var dtUser = _usersbal.GetLoginUserDetails(Session["userId"].ToString());
                imgLogInUser.ImageUrl = "~/images/" + dtUser.Rows[0]["picture"];
                lblLoginUser.Text = dtUser.Rows[0]["fullName"].ToString();
                BindInvitationsData();
                BindFriends();

            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

    }

    protected void BindInvitationsData()
    {

        string receiverId = Session["userId"].ToString();
        DataTable dt;
        dt = ch.getinvitedFriends(receiverId);
        dlInvitations.DataSource = dt;
        dlInvitations.DataBind();

    }

    protected void BindFriends()
    {
        string receiverId = Session["userId"].ToString();
        DataTable dt;
        dt = ch.getFriends(receiverId);

        dlFriends.DataSource = dt;
        dlFriends.DataBind();
    }

    //protected void LinkButton1_OnClick(object sender, EventArgs e)
    //{
    //    LinkButton lBtn = sender as LinkButton;
    //    string id = ((LinkButton)sender).CommandArgument.ToString();
    //    //Label1.Text = id;
    //    Label2.Text = lBtn.Text;

    //    DataListItem item = (DataListItem)lBtn.NamingContainer;
    //    Image NameLabel = (Image)item.FindControl("Image2");
    //    string url = NameLabel.ImageUrl.ToString();
    //    Image3.ImageUrl = url;
    //    LoadChatbox();
    //}
    protected void dlFriends_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "clickOnFriend") // check command is cmd_delete
        {
            string friendId = e.CommandArgument.ToString(); // value from CommandArgument
            LinkButton lnkClickFriend = (LinkButton)e.Item.FindControl("lnkClickFriend");

            Image img = (Image)e.Item.FindControl("imgFriend");
            Label2.Text = lnkClickFriend.Text;
            Image3.ImageUrl = img.ImageUrl;
            Session["FriendId"] = friendId;
        }

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AcceptRequest") // check command is cmd_delete
        {
            string senderId = e.CommandArgument.ToString(); // value from CommandArgument
            string receiverId = Session["userId"].ToString();
            ch.acceptInvitation(senderId, receiverId);
            BindInvitationsData();
            BindFriends();
        }
        if (e.CommandName == "IgnoreRequest") // check command is cmd_delete
        {
            string senderId = e.CommandArgument.ToString(); // value from CommandArgument
            string receiverId = Session["userId"].ToString();
            ch.getIgnoreChat(receiverId);
        }
    }

    //protected void lnkAcceptInvitation_Click(object sender, EventArgs e)
    //{

    //    ch.insertChatInvitation(senderId,receiverId);
    //}
    //protected void lnkIgnoreInvitation_Click(object sender, EventArgs e)
    //{
    //public void insertChatMessage(string senderId, string receiverId, TextBox message, string date, string time)
    //{

    //}
    protected void lnkInviteUsers_OnClick(object sender, EventArgs e)
    {
        string senderId = Session["userId"].ToString();
        DataTable dt = _usersbal.getUserDetailsByEmail(txtEmail.Text);
        if (dt.Rows.Count > 0)
        {

            string receiverId = dt.Rows[0]["uniqueRandomId"].ToString();
            ch.insertChatInvitation(senderId, receiverId);
            noty.Success_Display("Your invitation is successfully sent", Page);
        }
        else
        {
            noty.Error_Display("The user you requested is not registered with DiCatalyst, We have sent an Invitation to Register with Us", Page);


            var dtUser = _usersbal.GetLoginUserDetails(Session["userId"].ToString());
            string username = dtUser.Rows[0]["fullName"].ToString();
            var fromEmail = "captoremployee1@gmail.com";
            var password = "J@isriram123";
            using (var mm = new MailMessage(fromEmail, txtEmail.Text))
            {
                mm.Subject = "Invitation From DiCatalyst";
                mm.Body = "You are being invited by" + username + "to start using DiCatalyst";
                mm.IsBodyHtml = true;
                var smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                var networkCred = new NetworkCredential(fromEmail, password);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = networkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }

        }
    }

    protected void OnServerClick(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        string date3 = date.ToString("dd-MM-yyyy");
        string time = date.ToString("HH:mm:ss");

        ch.insertChatMessage(Session["userId"].ToString(), Session["FriendId"].ToString(), TextBox1, date3, time);

        TextBox1.Text = "";
        LoadChatbox();

    }

    public void LoadChatbox()
    {
        DateTime date = DateTime.Now;
        string date3 = date.ToString("dd-MM-yyyy");
        if (!string.IsNullOrEmpty(Session["FriendId"] as string))
        {
            string senderId = Session["userId"].ToString(); // value from CommandArgument
            string receiverId = Session["FriendId"].ToString();
            //string agent = Session["Admin"].ToString();
            DataTable dt = ch.getChatMessage(senderId, receiverId, date3);
            DataList3.DataSource = dt;
            DataList3.DataBind();
            conn.Close();
            ScriptManager.RegisterStartupScript(this.Page, typeof(Panel), "ms-scrollbar", ";ScrollToBottom();", true);
        }
      
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        LoadChatbox();
    }

    protected void DataList3_OnItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {  
            Literal ltlName = (Literal)e.Item.FindControl("ltlName");
            HiddenField hfdSenderId = (HiddenField)e.Item.FindControl("hfdSenderId");
            if (hfdSenderId.Value == Session["userId"].ToString())
            {
                ltlName.Text = "You";
            }
        }
    }
}