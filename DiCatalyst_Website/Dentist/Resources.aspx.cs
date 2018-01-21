using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using BAL;


public partial class Dentist_Resources : System.Web.UI.Page
{
    private DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
    private  readonly  GlobalSearch gal=new GlobalSearch();
    private  readonly resources res=new resources();
    private DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gal.GetSpecialityForDropdown(ddlSpecialization);

            bindResources();
        }

    }

    protected void btnOk_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string randomId = string.Empty;
        if (ViewState["RandomId"] != null && Convert.ToString(ViewState["RandomId"]) != "")
            randomId = Convert.ToString(ViewState["RandomId"]);
        else
            randomId = _ran.getRandomUniqueNumber();


        var serverPath = "";

        if (fileUpload.HasFile)
        {
            var filename = Path.GetFileName(fileUpload.FileName);
            fileUpload.SaveAs(Server.MapPath("~/Dentist/Files/") + filename);
            serverPath = "~/Dentist/Files/" + filename;



            //res.insertResources(randomId,ddlSpecialization, txtRTitle, txtEmail, txtContact, txtAuthor, serverPath, txtLink, txtDescription, Convert.ToString(Session["userId"]));

            //bindResources();

        }


        res.insertResources(randomId, ddlSpecialization, txtRTitle, txtEmail, txtContact, txtAuthor, serverPath, txtLink, txtDescription, Convert.ToString(Session["userId"]));
        bindResources();
        Clear();
    }

    private void Clear()
    {
        ddlSpecialization.ClearSelection();
        txtRTitle.Text = txtEmail.Text = txtContact.Text = txtAuthor.Text = txtLink.Text = txtDescription.Text = string.Empty;
    }




    protected void DataList1_ItemCommand(object sender, RepeaterCommandEventArgs e)
    {
        ViewState["RandomId"] = null;

        if (e.CommandName == "update")
        {
            ddlSpecialization.SelectedValue = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("special"))).InnerText;
            txtContact.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("contact"))).InnerText;
            txtLink.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("refLink"))).InnerText;
            txtRTitle.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("title"))).InnerText;
            txtAuthor.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("author"))).InnerText;
            txtDescription.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("desc"))).InnerText;
            txtEmail.Text = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("email"))).InnerText;
            ViewState["RandomId"] = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("uniqueId"))).InnerText;
        }

        if (e.CommandName == "delete")
        {
            string UniqueId = ((System.Web.UI.HtmlControls.HtmlContainerControl)(e.Item.FindControl("uniqueId"))).InnerText;
            int i = 0;
            i = res.DeleteResource(UniqueId);
            if (i > 0)
            {
                divPopUp.Style.Add("display", "block");
                lblmsg.Text = "Resource deleted successfully";
            }
            else
            {
                divPopUp.Style.Add("display", "block");
                lblmsg.Text = "Error occured while deleting resource";
            }
        }
    }



    protected void bindResources()
    {

        dt = res.getDentistResources(Session["userId"].ToString());
        DataList1.DataSource = dt;
        DataList1.DataBind();


    }
   
}