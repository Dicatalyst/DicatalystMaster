using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;

namespace Admin
{
    public partial class Admin_Manage_Clinic : Page
    {
        private DataTable dt;
        private readonly ManageModules mngmod = new ManageModules();
        private userlevels ul = new userlevels();
   

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ul.GetPrivilages(12);
                dt = mngmod.GetClinicData();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var excelPath = Server.MapPath("~/Admin/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(excelPath);

            var conString = string.Empty;
            var extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            switch (extension)
            {
                case ".xls": //Excel 97-03
                    conString = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                    break;
                case ".xlsx": //Excel 07 or higher
                    conString = ConfigurationManager.ConnectionStrings["Excel07+ConString"].ConnectionString;
                    break;
            }
            conString = string.Format(conString, excelPath);
            using (var excel_con = new OleDbConnection(conString))
            {
                excel_con.Open();
                var sheet1 = excel_con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null).Rows[0]["TABLE_NAME"].ToString();
                var dtExcelData = new DataTable();

                //[OPTIONAL]: It is recommended as otherwise the data will be considered as String by default.
                dtExcelData.Columns.AddRange(new DataColumn[14]
                {
                    new DataColumn("clinicName", typeof(string)),
                    new DataColumn("email", typeof(string)),
                    new DataColumn("website", typeof(string)),
                    new DataColumn("mobileNo", typeof(string)),


                    new DataColumn("foundedYear", typeof(string)),
                    new DataColumn("registrationNo", typeof(string)),

                    new DataColumn("address", typeof(string)),
                    new DataColumn("city", typeof(string)),
                    new DataColumn("state", typeof(string)),
                    new DataColumn("country", typeof(string)),
                    new DataColumn("pincode", typeof(string)),
                    new DataColumn("specialities", typeof(string)),
                    new DataColumn("servicesFacilities", typeof(string)),
                    new DataColumn("keywords", typeof(string))
                });

                using (var oda = new OleDbDataAdapter("SELECT * FROM [" + sheet1 + "]", excel_con))
                {
                    oda.Fill(dtExcelData);
                }
                excel_con.Close();

                var consString = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
                using (var con = new SqlConnection(consString))
                {
                    using (var sqlBulkCopy = new SqlBulkCopy(con))
                    {
                        //Set the database table name
                        sqlBulkCopy.DestinationTableName = "dbo.clinic_Data";

                        //[OPTIONAL]: Map the Excel columns with that of the database table

                        sqlBulkCopy.ColumnMappings.Add("ClinicName", "clinicName");
                        sqlBulkCopy.ColumnMappings.Add("Email", "email");
                        sqlBulkCopy.ColumnMappings.Add("Website", "website");

                        sqlBulkCopy.ColumnMappings.Add("[Mobile No]", "mobileNo");

                        sqlBulkCopy.ColumnMappings.Add("[Founded Year]", "foundedYear");
                        sqlBulkCopy.ColumnMappings.Add("[Registration No]", "registrationNo");


                        sqlBulkCopy.ColumnMappings.Add("Address", "address");

                        sqlBulkCopy.ColumnMappings.Add("City", "city");
                        sqlBulkCopy.ColumnMappings.Add("State", "state");
                        sqlBulkCopy.ColumnMappings.Add("Country", "country");
                        sqlBulkCopy.ColumnMappings.Add("[Pin Code]", "pincode");
                        sqlBulkCopy.ColumnMappings.Add("Specialities", "specialities");
                        sqlBulkCopy.ColumnMappings.Add("ServicesAndFacilities", "servicesFacilities");
                        sqlBulkCopy.ColumnMappings.Add("Keywords", "keywords");
                        con.Open();
                        sqlBulkCopy.WriteToServer(dtExcelData);
                        con.Close();
                    }
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "deleterow")
            {
                var index = Convert.ToInt32(e.CommandArgument);
                index = index % GridView1.PageSize;
                var row = GridView1.Rows[index];
                var lblId = (Label) row.FindControl("lblId");
                mngmod.DeleteClinictData(Convert.ToInt32(lblId.Text));
                bindGridView();
            }
        }

        protected void bindGridView()
        {
            dt = mngmod.GetClinicData();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}