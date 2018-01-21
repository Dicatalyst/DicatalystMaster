using System;
using System.Collections.Generic;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using BAL;


public partial class Admin_globalResources : System.Web.UI.Page
{
    private readonly DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();
    private readonly GlobalSearch gal = new GlobalSearch();
    private readonly resources res = new resources();
    private DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gal.GetSpecialityForDropdown(ddlSpecialization);

            bindData();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string randomId = _ran.getRandomUniqueNumber();
        var serverPath = "";

        if (fileUpload.HasFile)
        {
            var filename = Path.GetFileName(fileUpload.FileName);
            fileUpload.SaveAs(Server.MapPath("~/Dentist/Files/") + filename);
            serverPath = "~/Dentist/Files/" + filename;



            res.insertGlobalResources(ddlSpecialization, txtRTitle, txtEmail, txtContact, txtAuthor, serverPath, txtLink, txtDescription);

            bindData();

        }
    }

    protected void bindData()
    {

        dt = res.getResources();
        DataList1.DataSource = dt;
        DataList1.DataBind();


    }
}