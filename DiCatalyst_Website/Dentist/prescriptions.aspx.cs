using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using DAL;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Dentist_prescriptions : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private Connections dac = new Connections();
    private DAL.randomUniqueNumber rn = new DAL.randomUniqueNumber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["PrescripId"] = null;

            GridViewHelper helper = new GridViewHelper(this.GridView3);
            helper.RegisterGroup("prescriptionId", true, true);
            helper.GroupHeader += new GroupEvent(helper_GroupHeader);
            //helper.ApplyGroupSort();
            FirstGridViewRow();

            getPrescriptionData();
        }
    }

    private void helper_GroupHeader(string groupName, object[] values, GridViewRow row)
    {
        if (groupName == "prescriptionId")
        {
            row.BackColor = Color.DodgerBlue;
            row.ForeColor = Color.White;
            row.CssClass = "headerrow";
            row.Cells[0].Text = "Prescription No. : &nbsp;&nbsp;" + row.Cells[0].Text;
        }
        //else if (groupName == "ShipName")
        //{
        //    row.BackColor = Color.FromArgb(236, 236, 236);
        //    row.Cells[0].Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + row.Cells[0].Text;
        //}
    }
    protected void btnPrescription_Click(object sender, EventArgs e)
    {
        var doctorId = Session["userId"].ToString();
        var patientId = Session["PId"].ToString();
        string randomId = String.IsNullOrEmpty(Convert.ToString(Session["PrescripId"])) ? rn.getRandomUniqueNumber() : Session["PrescripId"].ToString();
        
        try
        {
            SetRowData();
            DataTable table = ViewState["CurrentTable"] as DataTable;

            if (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    string ddlMedicineType = row.ItemArray[1] as string;
                    string txtMedicineName = row.ItemArray[2] as string;
                    string txtDose = row.ItemArray[3] as string;
                    string txtQty = row.ItemArray[4] as string;
                    string txtDays = row.ItemArray[5] as string;
                    string txtPerDay = row.ItemArray[6] as string;
                    string CheckBoxList1 = row.ItemArray[7] as string;
                    string txtCommentsPres = row.ItemArray[8] as string;
                    string id = row.ItemArray[9] as string;
                    //int multi = (table.Rows.Count > 0) ? 1 : 0;

                    if (ddlMedicineType != null ||
                        txtMedicineName != null ||
                        txtDose != null ||
                        txtQty != null ||
                        txtDays != null ||
                        txtPerDay != null ||
                        CheckBoxList1 != null ||
                        txtCommentsPres != null)
                    {
                        // Do whatever is needed with this data, 
                        // Possibily push it in database
                        // I am just printing on the page to demonstrate that it is working.
                        cmd = dac.GetCommand("[sp_upsertDentistPrescription]");
                        SqlParameter[] par = {

                         new SqlParameter("@medicineType", ddlMedicineType),
                         new SqlParameter("@MedicineName", txtMedicineName),
                         new SqlParameter("@Dose", txtDose),
                         new SqlParameter("@Quantity", txtQty),
                         new SqlParameter("@Days", txtDays),
                         new SqlParameter("@PerDay", txtPerDay),
                         new SqlParameter("@Interval", CheckBoxList1),
                         new SqlParameter("@Comments", txtCommentsPres),
                          new SqlParameter("@datetime", DateTime.Now),
                         new SqlParameter("@doctorId", doctorId),
                         new SqlParameter("@patientId", patientId),
                         new SqlParameter("@prescriptionId", randomId),
                         new SqlParameter("@id", id)

                            };

                        for (int i = 0; i < par.Length; i++)
                        {
                            cmd.Parameters.Add(par[i]);
                        }

                        dac.EnsureOpen();

                        cmd.ExecuteNonQuery();

                        dac.Close();

                        // DateTime startdate = Convert.ToDateTime(txtStartDateNotes.Text);
                        //DateTime nextvisitdate = Convert.ToDateTime(txtEndDateNotes.Text);

                        getPrescriptionData();
                        //dataTable.DefaultView.Sort = e.SortExpression;
                        //GridView3.DataSource = table;
                        //GridView3.DataBind();
                        GridViewHelper helper = new GridViewHelper(this.GridView3);
                        helper.RegisterGroup("prescriptionId", true, true);
                        helper.GroupHeader += new GroupEvent(helper_GroupHeader);
                        //helper.ApplyGroupSort();
                        //   Response.Write(string.Format("{0} {1} {2} {3} {4}<br/>", txName, txAge, txAdd, rbGen, drpQual));
                    }

                }
            }
            Response.Redirect("prescriptions.aspx");
        }
        catch (Exception ex)
        {
            if(!ex.Message.Contains("Thread was being aborted"))            
                throw new Exception(ex.Message);
        }
    }


    protected void GridView3_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataTable dt = new DataTable();

        dt = (DataTable)ViewState["CurrentTable"];
        dt.DefaultView.Sort = e.SortExpression;
        GridView3.DataSource = dt;
        GridView3.DataBind();
    }

    private void FirstGridViewRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        dt.Columns.Add(new DataColumn("Col8", typeof(string)));
        dt.Columns.Add(new DataColumn("Col9", typeof(string)));

        dr = dt.NewRow();
        dr["RowNumber"] = 1;
        dr["Col1"] = string.Empty;
        dr["Col2"] = string.Empty;
        dr["Col3"] = string.Empty;
        dr["Col4"] = string.Empty;
        dr["Col5"] = string.Empty;
        dr["Col6"] = string.Empty;
        dr["Col7"] = string.Empty;
        dr["Col8"] = string.Empty;
        dr["Col9"] = string.Empty;
        dt.Rows.Add(dr);

        ViewState["CurrentTable"] = dt;


        grvStudentDetails.DataSource = dt;
        grvStudentDetails.DataBind();


        //DropDownList txn = (DropDownList)grvStudentDetails.Rows[0].Cells[1].FindControl("ddlMedicineType");
        //txn.Focus();
        Button btnAdd = (Button)grvStudentDetails.FooterRow.Cells[5].FindControl("ButtonAdd");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRow()
    {
        int rowIndex = 0;


        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {

                    DropDownList ddlMedicineType = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("DropDownList1");
                    TextBox txtMedicineName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtMedicineName");
                    TextBox txtDose = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtDose");
                    TextBox txtQty = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtQty");
                    TextBox txtDays = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtDays");
                    TextBox txtPerDay = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtPerDay");
                    CheckBoxList CheckBoxList1 = (CheckBoxList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("CheckBoxList1");
                    TextBox txtCommentsPres = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtCommentsPres");
                    Label lblId = (Label)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("lblId");

                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    string interval = "";
                    foreach (ListItem ls in CheckBoxList1.Items)
                    {
                        if (ls.Selected)
                        {
                            interval = interval + "," + ls.Text;
                        }
                    }

                    dtCurrentTable.Rows[i - 1]["Col1"] = ddlMedicineType.SelectedValue;
                    dtCurrentTable.Rows[i - 1]["Col2"] = txtMedicineName.Text;
                    dtCurrentTable.Rows[i - 1]["Col3"] = txtDose.Text;
                    dtCurrentTable.Rows[i - 1]["Col4"] = txtQty.Text;
                    dtCurrentTable.Rows[i - 1]["Col5"] = txtDays.Text;
                    dtCurrentTable.Rows[i - 1]["Col6"] = txtPerDay.Text;
                    dtCurrentTable.Rows[i - 1]["Col7"] = interval;
                    dtCurrentTable.Rows[i - 1]["Col8"] = txtCommentsPres.Text;
                    dtCurrentTable.Rows[i - 1]["Col9"] = lblId.Text;
                    rowIndex++;

                    //TextBox TextBoxName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtName");
                    //TextBox TextBoxAge = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtAge");
                    //TextBox TextBoxAddress = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtAddress");
                    //RadioButtonList RBLGender = (RadioButtonList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("RBLGender");
                    //DropDownList DrpQualification = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("drpQualification");
                    //drCurrentRow = dtCurrentTable.NewRow();
                    //drCurrentRow["RowNumber"] = i + 1;

                    //dtCurrentTable.Rows[i - 1]["Col1"] = TextBoxName.Text;
                    //dtCurrentTable.Rows[i - 1]["Col2"] = TextBoxAge.Text;
                    //dtCurrentTable.Rows[i - 1]["Col3"] = TextBoxAddress.Text;
                    //dtCurrentTable.Rows[i - 1]["Col4"] = RBLGender.SelectedValue;
                    //dtCurrentTable.Rows[i - 1]["Col5"] = DrpQualification.SelectedValue;
                    //rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;

                grvStudentDetails.DataSource = dtCurrentTable;
                grvStudentDetails.DataBind();                
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousData();
    }
    private void SetPreviousData()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DropDownList ddlMedicineType = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("DropDownList1");
                    TextBox txtMedicineName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtMedicineName");
                    TextBox txtDose = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtDose");
                    TextBox txtQty = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtQty");
                    TextBox txtDays = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtDays");
                    TextBox txtPerDay = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtPerDay");
                    CheckBoxList CheckBoxList1 = (CheckBoxList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("CheckBoxList1");
                    TextBox txtCommentsPres = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtCommentsPres");
                    Label lblId = (Label)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("lblId");

                    // drCurrentRow["RowNumber"] = i + 1;
                    grvStudentDetails.Rows[i].Cells[0].Text = Convert.ToString(i + 1);

                    ddlMedicineType.SelectedValue = dt.Rows[i]["Col1"].ToString();
                    txtMedicineName.Text = dt.Rows[i]["Col2"].ToString();
                    txtDose.Text = dt.Rows[i]["Col3"].ToString();
                    txtQty.Text = dt.Rows[i]["Col4"].ToString();
                    txtDays.Text = dt.Rows[i]["Col5"].ToString();
                    txtPerDay.Text = dt.Rows[i]["Col6"].ToString();

                    string str = null;
                    string[] strArr = null;
                    str = dt.Rows[i]["Col7"].ToString();
                    char[] splitchar = { ',' };
                    strArr = str.Split(splitchar);
                    
                    foreach (string s in strArr)
                    {
                        foreach (ListItem item in CheckBoxList1.Items)
                        {
                            if (item.Value == s)
                            {
                                item.Selected = true;
                                break;
                            }
                        }

                    }

                    //CheckBoxList1.SelectedValue = dt.Rows[i]["Col7"].ToString();                    
                    txtCommentsPres.Text = dt.Rows[i]["Col8"].ToString();
                    lblId.Text = dt.Rows[i]["Col9"].ToString();

                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRow();
    }

    
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowData();
        DataTable presTable = (DataTable)Session["presTable"];

        DeleteRowData(presTable.Rows[e.RowIndex].ItemArray[0].ToString(), presTable.Rows[e.RowIndex].ItemArray[1].ToString());

        getPrescriptionData();

        Response.Redirect("prescriptions.aspx");
    }

    protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewRow row = grvStudentDetails.Rows[0];
        //(row.FindControl("DropDownList1") as DropDownList).SelectedValue = GridView3.Rows[e.NewEditIndex].Cells[0].Text;
        //(row.FindControl("txtMedicineName") as TextBox).Text = GridView3.Rows[e.NewEditIndex].Cells[1].Text;
        DropDownList ddlMedicineType = (DropDownList)row.Cells[0].FindControl("DropDownList1");
        TextBox txtMedicineName = (TextBox)row.Cells[1].FindControl("txtMedicineName");
        TextBox txtDose = (TextBox)row.Cells[2].FindControl("txtDose");
        TextBox txtQty = (TextBox)row.Cells[3].FindControl("txtQty");
        TextBox txtDays = (TextBox)row.Cells[4].FindControl("txtDays");
        TextBox txtPerDay = (TextBox)row.Cells[5].FindControl("txtPerDay");
        CheckBoxList CheckBoxList1 = (CheckBoxList)row.Cells[6].FindControl("CheckBoxList1");
        TextBox txtCommentsPres = (TextBox)row.Cells[7].FindControl("txtCommentsPres");               
        Label lblId = (Label)row.Cells[8].FindControl("lblId");               

        DataTable presTbl = new DataTable();
        presTbl = (DataTable)Session["presTable"];
        DataRow prescripRow = presTbl.Rows[e.NewEditIndex];

        Session["PrescripId"] = prescripRow.ItemArray[0].ToString();

        //int counter = 0;
        //for (int i = e.NewEditIndex; i >= 0; i--)
        //    if (GridView3.Rows[i].Cells[0].Text.Contains("Prescription No."))
        //    {
        //        counter++;
        //    }

        //ddlMedicineType.SelectedValue = GridView3.Rows[e.NewEditIndex + counter].Cells[2].Text;
        //txtMedicineName.Text = GridView3.Rows[e.NewEditIndex + counter].Cells[3].Text;
        //txtDose.Text = GridView3.Rows[e.NewEditIndex + counter].Cells[4].Text;
        //txtQty.Text = GridView3.Rows[e.NewEditIndex + counter].Cells[5].Text;
        //txtDays.Text = GridView3.Rows[e.NewEditIndex + counter].Cells[6].Text;
        //txtPerDay.Text = GridView3.Rows[e.NewEditIndex + counter].Cells[7].Text;

        //string interval = GridView3.Rows[e.NewEditIndex + counter].Cells[8].Text.TrimStart(',');
        //char[] intval = Array.ConvertAll(interval.Split(','), char.Parse);
        //foreach (char i in intval)
        //    for (int item = 0; item <= (CheckBoxList1.Items.Count - 1); item++)
        //        if (CheckBoxList1.Items[item].Value == i.ToString())
        //        {
        //            CheckBoxList1.Items[item].Selected = true;
        //            break;
        //        }
        //txtCommentsPres.Text = GridView3.Rows[e.NewEditIndex + counter].Cells[9].Text;

        ddlMedicineType.SelectedValue = prescripRow.ItemArray[2].ToString();
        txtMedicineName.Text = prescripRow.ItemArray[3].ToString();
        txtDose.Text = prescripRow.ItemArray[4].ToString();
        txtQty.Text = prescripRow.ItemArray[5].ToString();
        txtDays.Text = prescripRow.ItemArray[6].ToString();
        txtPerDay.Text = prescripRow.ItemArray[7].ToString();

        string interval = prescripRow.ItemArray[8].ToString().TrimStart(',');
        char[] intval = Array.ConvertAll(interval.Split(','), char.Parse);
        foreach (char i in intval)
            for (int item = 0; item <= (CheckBoxList1.Items.Count - 1); item++)
                if (CheckBoxList1.Items[item].Value == i.ToString())
                {
                    CheckBoxList1.Items[item].Selected = true;
                    break;
                }
        txtCommentsPres.Text = prescripRow.ItemArray[9].ToString();
        lblId.Text = prescripRow.ItemArray[1].ToString();
    }

    private void getPrescriptionData()
    {
        cmd = dac.GetCommand("sp_getDentistPrescription");
        SqlParameter[] par = {
                         new SqlParameter("@patientId", String.IsNullOrEmpty(Session["PId"].ToString())? "0" : Session["PId"].ToString()),
                         new SqlParameter("@doctorId", String.IsNullOrEmpty(Session["userId"].ToString())? "0" : Session["userId"].ToString())
                        };
        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dac.EnsureOpen();

        SqlDataAdapter da = new SqlDataAdapter();
        DataTable PrescripTable = new DataTable();

        da.SelectCommand = cmd;
        da.Fill(PrescripTable);
        dac.Close();

        Session["presTable"] = PrescripTable;
        GridView3.DataSource = PrescripTable;
        GridView3.DataBind();
    }

    private void DeleteRowData(string prescription, string id)
    {
        cmd = dac.GetCommand("sp_deleteDentistPrescription");
        SqlParameter[] par = {
                         //new SqlParameter("@doctorId", Session["userId"].ToString()),
                         //new SqlParameter("@patientId", Session["PId"].ToString()),
                         new SqlParameter("@prescriptionId", prescription),
                         new SqlParameter("@Id", id)
                        };
        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dac.EnsureOpen();
        cmd.ExecuteNonQuery();
        dac.Close();
    }

    private void SetRowData()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    DropDownList ddlMedicineType = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("DropDownList1");
                    TextBox txtMedicineName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtMedicineName");
                    TextBox txtDose = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtDose");
                    TextBox txtQty = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtQty");
                    TextBox txtDays = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtDays");
                    TextBox txtPerDay = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtPerDay");
                    CheckBoxList CheckBoxList1 = (CheckBoxList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("CheckBoxList1");
                    TextBox txtCommentsPres = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtCommentsPres");
                    Label lblId = (Label)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("lblId");
                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;


                    string interval = "";
                    foreach (ListItem ls in CheckBoxList1.Items)
                    {
                        if (ls.Selected)
                        {
                            interval = interval + "," + ls.Text;
                        }
                    }


                    dtCurrentTable.Rows[i - 1]["Col1"] = ddlMedicineType.SelectedValue;
                    dtCurrentTable.Rows[i - 1]["Col2"] = txtMedicineName.Text;
                    dtCurrentTable.Rows[i - 1]["Col3"] = txtDose.Text;
                    dtCurrentTable.Rows[i - 1]["Col4"] = txtQty.Text;
                    dtCurrentTable.Rows[i - 1]["Col5"] = txtDays.Text;
                    dtCurrentTable.Rows[i - 1]["Col6"] = txtPerDay.Text;
                    dtCurrentTable.Rows[i - 1]["Col7"] = interval;
                    dtCurrentTable.Rows[i - 1]["Col8"] = txtCommentsPres.Text;
                    dtCurrentTable.Rows[i - 1]["Col9"] = lblId.Text;
                    rowIndex++;





                    //TextBox TextBoxName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtName");
                    //TextBox TextBoxAge = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtAge");
                    //TextBox TextBoxAddress = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtAddress");
                    //RadioButtonList RBLGender = (RadioButtonList)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("RBLGender");
                    //DropDownList DrpQualification = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("drpQualification");
                    //drCurrentRow = dtCurrentTable.NewRow();
                    //drCurrentRow["RowNumber"] = i + 1;
                    //dtCurrentTable.Rows[i - 1]["Col1"] = TextBoxName.Text;
                    //dtCurrentTable.Rows[i - 1]["Col2"] = TextBoxAge.Text;
                    //dtCurrentTable.Rows[i - 1]["Col3"] = TextBoxAddress.Text;
                    //dtCurrentTable.Rows[i - 1]["Col4"] = RBLGender.SelectedValue;
                    //dtCurrentTable.Rows[i - 1]["Col5"] = DrpQualification.SelectedValue;
                    //rowIndex++;
                }

                ViewState["CurrentTable"] = dtCurrentTable;
                //grvStudentDetails.DataSource = dtCurrentTable;
                //grvStudentDetails.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousData();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    SetRowData();
        //    DataTable table = ViewState["CurrentTable"] as DataTable;

        //    if (table != null)
        //    {
        //        foreach (DataRow row in table.Rows)
        //        {
        //            string txName = row.ItemArray[1] as string;
        //            string txAge = row.ItemArray[2] as string;
        //            string txAdd = row.ItemArray[3] as string;
        //            string rbGen = row.ItemArray[4] as string;
        //            string drpQual = row.ItemArray[5] as string;


        //            if (txName != null ||
        //                txAge != null ||
        //                txAdd != null ||
        //                rbGen != null ||
        //                drpQual != null)
        //            {
        //                // Do whatever is needed with this data, 
        //                // Possibily push it in database
        //                // I am just printing on the page to demonstrate that it is working.
        //                Response.Write(string.Format("{0} {1} {2} {3} {4}<br/>", txName, txAge, txAdd, rbGen, drpQual));
        //            }

        //        }
        //    }
        //}
        //catch (Exception ex)
        //{
        //    throw new Exception(ex.Message);
        //}
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('PrintHelper.aspx','PrintMe','scrollbars=1');</script>");
    }
}