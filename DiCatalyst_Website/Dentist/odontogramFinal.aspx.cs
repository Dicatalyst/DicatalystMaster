using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dentist_odontogramFinal : System.Web.UI.Page
{
  
        
    DataTable dt1 = new DataTable();
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private DAL.Connections dac = new DAL.Connections();
    private readonly BAL.appointments _app = new BAL.appointments(); //Added by Ram
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Session["userId"].ToString()))
        {

            dt1.Columns.Add("examid");
            dt1.Columns.Add("toothNo");
            dt1.Columns.Add("examinationName");
            dt1.Columns.Add("comments");
            //Session["PId"] = Request.QueryString["id"].ToString();
            DataSet dstreatment = gettableofToothNumbers1();
            if (dstreatment.Tables[0].Rows.Count > 0)
            {
                Session["treatmentDatatable"] = dstreatment.Tables[0];
            }
            else
            {
                Session["treatmentDatatable"] = dt1;
            }
            var doctorId = Session["userId"].ToString();
            var patientId = Session["PId"].ToString();
            BindGrid(doctorId, patientId);
            lstDentalExamination.DataSource = bindDentalExamlist();
            lstDentalExamination.DataTextField = "dentalExaminationName";
            lstDentalExamination.DataValueField = "id";
            lstDentalExamination.DataBind();

            //Changes by Ram start
            DataTable dtPatient = _app.getPatientDetailsofDiagnosis(patientId);
            if (dtPatient != null && dtPatient.Rows.Count > 0)
            {
                ltlFullName.Text = dtPatient.Rows[0]["fullName"].ToString();
                ltlEmail.Text = dtPatient.Rows[0]["email"].ToString();
                ltlMobile.Text = dtPatient.Rows[0]["contactNumber"].ToString();
                ltlOccupation.Text = dtPatient.Rows[0]["occupation"].ToString();
                ltlPatientId.Text = dtPatient.Rows[0]["uniqueRandomId"].ToString();
                ltlGender.Text = dtPatient.Rows[0]["gender"].ToString();
                ltlMaritalStatus.Text = dtPatient.Rows[0]["maritalStatus"].ToString();
                ltlChiefComplaint.Text = dtPatient.Rows[0]["chiefComplaint"].ToString();
                ltlAge.Text = dtPatient.Rows[0]["age"].ToString();
            }
            else
            {
                ltlFullName.Text = "";
                ltlEmail.Text = "";
                ltlMobile.Text = "";
                ltlOccupation.Text = "";
                ltlPatientId.Text = "";
                ltlGender.Text = "";
                ltlMaritalStatus.Text = "";
                ltlChiefComplaint.Text = "";
                ltlAge.Text = "";
            }
            //changes by Ram end
        }
        else
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        //BindDummyRow();
    }

    private DataTable bindDentalExamlist()
    {
        DataTable dt = new DataTable();
        string query = "SELECT * from dentalExaminationDetails";
        string constr = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
            }
        }

        return dt;

    }

    private void BindGrid(string doctorId, string patientId)
    {

        DataTable dt = new DataTable();
        string query = "SELECT * FROM odontogramDentalExamination where doctorId = @doctorId and patientId = @patientId ";

        string constr = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    cmd.Parameters.AddWithValue("@doctorId", doctorId);
                    cmd.Parameters.AddWithValue("@patientId", patientId);
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
            }
        }
        //RAVI
        if (dt.Rows.Count == 0)
        {
            //If no records then add a dummy row.
            dt.Rows.Add();
        }

        gvCustomers.DataSource = dt;
        gvCustomers.DataBind();
    }

    private string getUserid()
    {
        return Session["userId"].ToString();
    }
    private string getPatientId()
    {
        return Session["PId"].ToString();
    }
    [WebMethod]
    public static string SaveOdontogram(string[][] array)
    {
        Dentist_odontogramFinal dd = new Dentist_odontogramFinal();
        string doctorID = dd.getUserid();
        string patientID = dd.getPatientId();
        string result = string.Empty;
        try
        {

            //One thing to keep in mind Column Names of DataTable must be same as Table-Valued Type parameters//
            //Please refer commented queries in the bottom.Just execute all of them in the Database sequentially//
            //Then change Webconfig connectionstring according to you//



            DataTable dt = new DataTable();
            dt.Columns.Add("toothNo");
            dt.Columns.Add("examinationName");
            dt.Columns.Add("examId");
            dt.Columns.Add("comments");
            dt.Columns.Add("doctorId");
            dt.Columns.Add("patientId");
            //dt.Columns.Add("Eligible");
            //dt.Columns.Add("HFID");

            foreach (var arr in array)
            {
                DataRow dr = dt.NewRow();
                dr["toothNo"] = arr[1];
                dr["examinationName"] = arr[2];
                dr["examId"] = arr[0];
                dr["comments"] = arr[3];
                dr["doctorId"] = doctorID;
                dr["patientid"] = patientID;
                //dr["Eligible"] = arr[6];
                //dr["HFId"] = arr[7];
                dt.Rows.Add(dr);
            }

            //RAVI
            SqlConnection cnn = new SqlConnection();
            try
            {
                cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dicatalyst"].ToString();
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_deleteodontogramDentalExamination";
                cmd.Connection = cnn;
                cmd.Parameters.Add("@doctorId", doctorID);
                cmd.Parameters.Add("@patientId", patientID);
                cmd.ExecuteNonQuery();
            }
            finally
            {
                cnn.Close();
            }
                //result = cmd.ExecuteNonQuery().ToString();
            //}

            foreach (DataRow r in dt.Rows)
            {
                cnn = new SqlConnection();
                cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dicatalyst"].ToString();
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_odontogramDentalExamination";
                cmd.Connection = cnn;
                cmd.Parameters.Add("@toothNo", r[0]);
                cmd.Parameters.Add("@examinationName", r[1]);
                cmd.Parameters.Add("@examId", r[2]);
                cmd.Parameters.Add("@comments", r[3]);
                cmd.Parameters.Add("@doctorId", r[4]);
                cmd.Parameters.Add("@patientId", r[5]);
                cmd.ExecuteNonQuery();
                //result = cmd.ExecuteNonQuery().ToString();
                result = "1";
            }


            foreach (DataRow r in dt.Rows)
            {
                cnn = new SqlConnection();
                cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dicatalyst"].ToString();
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_insertDiagnosisPrognosis";
                cmd.Connection = cnn;
                cmd.Parameters.Add("@toothNo", r[0]);
                cmd.Parameters.Add("@examId", r[2]);
                cmd.Parameters.Add("@examinationName", r[1]);
                cmd.Parameters.Add("@description", "");
                cmd.Parameters.Add("@prognosis", "- Select -");
                cmd.Parameters.Add("@additionalNotes", "");
                cmd.Parameters.Add("@dateTime", DateTime.Now);
                cmd.Parameters.Add("@doctorId", r[4]);
                cmd.Parameters.Add("@patientId", r[5]);
                cmd.ExecuteNonQuery();
                //result = cmd.ExecuteNonQuery().ToString();
                result = "1";
            }


            foreach (DataRow r in dt.Rows)
            {
                cnn = new SqlConnection();
                cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dicatalyst"].ToString();
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_insertTreatmentPlan";
                cmd.Connection = cnn;
                cmd.Parameters.Add("@toothNo", r[0]);
                cmd.Parameters.Add("@examinationName", r[1]);
                cmd.Parameters.Add("@treatmentAdvice", "");
                cmd.Parameters.Add("@duration", "");
                cmd.Parameters.Add("@fee", "");
                cmd.Parameters.Add("@discount", "");
                cmd.Parameters.Add("@amount", "");
                cmd.Parameters.Add("@doctorId", r[4]);
                cmd.Parameters.Add("@patientId", r[5]);
                cmd.Parameters.Add("@notestoReceptionist", "");
                cmd.ExecuteNonQuery();
                result = "1";
                //  result = cmd.ExecuteNonQuery().ToString();
            }

        }
        catch (Exception ex)
        {
            result = ex.Message;
        }
        return result;
    }

    private void InsertRecords(DataTable source)
    {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString))
        {
            using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(connection))
            {
                //Set the Database Table to use
                sqlBulkCopy.DestinationTableName = "dbo.odontogramDentalExamination";

                //[OPTIONAL]: Mappings of columns from Datatable against Database table
                sqlBulkCopy.ColumnMappings.Add("Field1", "Field1");
                sqlBulkCopy.ColumnMappings.Add("Field2", "Field2");
                sqlBulkCopy.ColumnMappings.Add("Field3", "Field3");
                sqlBulkCopy.ColumnMappings.Add("Field4", "Field4");
                connection.Open();
                sqlBulkCopy.WriteToServer(source);
            }
        }
    }
    public DataSet gettableofToothNumbers1()
    {
        DataSet dstooth = new DataSet();
        cmd = dac.GetCommand("sp_getPatientOdontogramDetails");
        SqlParameter[] par = {
                new SqlParameter("@doctorId", Session["userId"].ToString()),
                new SqlParameter("@patientId", Session["PId"].ToString())
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dstooth = dac.ExecuteNonQuery_selectQuery(cmd);


        return dstooth;
    }

    [WebMethod]
    public static IList<GetToothNumber> GetToothNumbers()
    {
        Dentist_odontogramFinal dd = new Dentist_odontogramFinal();

        DataSet ds = dd.gettableofToothNumbers();

        IList<GetToothNumber> GetToothNumbers = new List<GetToothNumber>();

        foreach (DataRow row in ds.Tables[0].Rows)
        {
            GetToothNumbers.Add(new GetToothNumber
            {
                examid = (string)row["examid"],
                toothNo = (string)row["toothNo"]
            });
        }

        return GetToothNumbers;

    }

    public class GetToothNumber
    {
        public string examid { get; set; }

        public string toothNo { get; set; }

    }

    public DataSet gettableofToothNumbers()
    {
        DataSet dstooth = new DataSet();
        cmd = dac.GetCommand("sp_getPatientOdontogramDetails");
        SqlParameter[] par = {
                new SqlParameter("@doctorId", Session["userId"].ToString()),
                new SqlParameter("@patientId", Session["PId"].ToString())
            };

        for (int i = 0; i < par.Length; i++)
        {
            cmd.Parameters.Add(par[i]);
        }

        dstooth = dac.ExecuteNonQuery_selectQuery(cmd);

        DataTable dttooth = new DataTable();
        dttooth.Columns.Add("examid");
        dttooth.Columns.Add("toothNo");
        dttooth.Columns.Add("examinationName");
        dttooth.Columns.Add("comments");

        foreach (DataRow row in dstooth.Tables[0].Rows)
        {

            string[] stringArray = row["toothNo"].ToString().Split(',');

            for (int i = 0; i < stringArray.Length; i++)
            {
                string toothNo = stringArray[i].ToString();
                DataRow dr = dttooth.NewRow();
                dr["toothNo"] = toothNo.Trim();
                dr["examinationName"] = row["examinationName"];
                dr["examid"] = row["examid"];
                dr["comments"] = row["comments"];
                dttooth.Rows.Add(dr);

            }
        }
        DataSet ds2 = new DataSet();
        ds2.Tables.Add(dttooth);
        return ds2;
    }
    [WebMethod]
    public static IList<Author> GetAuthors(string strExamId, string strToothNumber, string strExamName)
    {


        // Avoid sending queries through application code. Use stored procedures.
        //DataSet ds = data.GetDataSet("select au_id, au_fname, au_lname, city, state from authors", startRecord, maxRecords, "authors");
        Dentist_odontogramFinal dd = new Dentist_odontogramFinal();

        DataTable dt2 = dd.gettable();
        if (dt2.Rows.Count > 0)
        {
            foreach (DataRow row in dt2.Rows)
            {
                if (row[2].ToString() == strExamName)
                {

                    string[] stringArray = row[1].ToString().Split(',');

                    string value = strToothNumber;

                    int j = 0;
                    for (int i = 0; i < stringArray.Length; i++)
                    {
                        string compare = stringArray[i].ToString();
                        if (compare.Trim() == value.Trim())
                        {
                            goto Found;
                        }
                        else
                        {
                            j = j + 1;
                        }

                    }

                    if (j == stringArray.Length)
                    {
                        row[1] = row[1].ToString() + ", " + value;
                    }

                    goto Found;
                }

            }
            foreach (DataRow row in dt2.Rows)
            {
                if (row[2].ToString() != strExamName)
                {
                    DataRow dr = dt2.NewRow();
                    dr[0] = strExamId;
                    dr[1] = strToothNumber;
                    dr[2] = strExamName;
                    dr[3] = "";
                    dt2.Rows.Add(dr);
                    goto Found;
                }
            }
        }
        else
        {
            DataRow dr = dt2.NewRow();
            dr[0] = strExamId;
            dr[1] = strToothNumber;
            dr[2] = strExamName;
            dr[3] = "";
            dt2.Rows.Add(dr);
        }
    //this will add the row at the end of the datatable
    //string strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
    //using (SqlConnection con = new SqlConnection(strConnString))
    //{
    //    using (SqlDataAdapter sda = new SqlDataAdapter())
    //    {
    //        cmd.Connection = con;
    //        sda.SelectCommand = cmd;
    //        using (DataSet ds = new DataSet())
    //        {
    //            sda.Fill(ds);
    //            return ds;

        //        }
    //    }
    //}
    Found:
        DataSet ds = new DataSet();
        ds.Clear();
        DataTable dtCopy = dt2.Copy();
        ds.Tables.Add(dtCopy);

        IList<Author> authors = new List<Author>();

        foreach (DataRow row in ds.Tables[0].Rows)
        {
            authors.Add(new Author
            {
                examid = (string)row["examid"],
                toothNo = (string)row["toothNo"],
                examinationName = (string)row["examinationName"],
                comments = (string)row["comments"]
            });
        }

        return authors;
    }

    public DataTable gettable()
    {
        DataTable dt2 = Session["treatmentDatatable"] as DataTable;
        return dt2;
    }
    public class Author
    {
        public string examid { get; set; }

        public string toothNo { get; set; }

        public string examinationName { get; set; }

        public string comments { get; set; }
    }

    [WebMethod]
    public static List<ListItem> getDentalexamdetails(string strExamId, string strToothNumber)
    {
        string temp = strToothNumber;
        string query = "SELECT * from dentalExamElement where dentalExamId = @dentalExamId";
        string constr = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Parameters.AddWithValue("dentalExamId", strExamId);
                List<ListItem> dentalExamElements = new List<ListItem>();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        dentalExamElements.Add(new ListItem
                        {
                            Value = sdr["id"].ToString(),
                            Text = sdr["dentalExamElement"].ToString()
                        });
                    }
                }
                con.Close();
                return dentalExamElements;
            }
        }

    }
    
}