using System;
using System.Web.UI;
using System.Data;
using BAL;

public partial class Dentist_Default : Page
{
    private DataTable dt;
    private readonly BAL.news news1=new BAL.news(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dt = news1.getNews();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

    }

   

}