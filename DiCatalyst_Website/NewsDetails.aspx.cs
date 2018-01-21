using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class NewsDetails : System.Web.UI.Page
{

     DataTable dt;
    private readonly BAL.news news1 = new BAL.news(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dt = news1.getNews();
            DataList1.DataSource = dt;
            DataList1.DataBind();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

    }
}