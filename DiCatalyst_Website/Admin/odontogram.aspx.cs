using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;

public partial class Admin_odontogram : System.Web.UI.Page
{
    private DataTable dt;
    private readonly OdontogramDentalElements dental = new OdontogramDentalElements();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dental.getDentalExamNameToDropDown(ddlDentalExamName);

            bindDentalExaminationName();
            bindDentalExamElement();
        }
    }


    protected void btnDentalExamName_Click(object sender, EventArgs e)
    {


        dental.insertDentalExamName(txtDentalExamName);
        bindDentalExaminationName();
    }
    protected void btnSaveDentalElement_Click(object sender, EventArgs e)
    {
        dental.insertDentalExamElement(ddlDentalExamName, txtDentalExamElement);
        bindDentalExamElement();
    }



    protected void gdDentalExaminationName_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleterow")
        {
            var index = Convert.ToInt32(e.CommandArgument.ToString());
       
            var row = gdDentalExaminationName.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            dental.deleteDentalExamName(Convert.ToInt32(lblId.Text));
            bindDentalExaminationName();
        }
    }
    protected void gdDentalExamElement_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleterow")
        {
            var index = Convert.ToInt32(e.CommandArgument.ToString());
           
            var row = gdDentalExamElement.Rows[index];
            var lblId = (Label)row.FindControl("lblId");
            dental.deleteDentalExamElements(Convert.ToInt32(lblId.Text));
            bindDentalExamElement();
        }
    }


    protected void bindDentalExaminationName()
    {
        dt = dental.getDentalExamName();
        gdDentalExaminationName.DataSource = dt;
        gdDentalExaminationName.DataBind();
    }


    protected void bindDentalExamElement()
    {
        dt = dental.getDentalExamElements();
        gdDentalExamElement.DataSource = dt;
        gdDentalExamElement.DataBind();
    }

}