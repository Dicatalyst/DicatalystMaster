using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using BAL;

public partial class SearchResult : Page
{
    private SqlConnection conn =
        new SqlConnection(ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);

    private readonly GlobalSearch loc = new GlobalSearch();
    private readonly Notify noty = new Notify();
    private readonly Users _user = new Users();

    protected void Page_Load(object sender, EventArgs e)
    {     
        if (!IsPostBack)
        {
            
            loc.GetcitiesByStateId(2, ddlCity);
            var specialistid = Request.QueryString["id"];
            Session["specialistId"] = specialistid;
            BindData(specialistid);
           
          
        }
    }

    protected void BindData(string specialistid)
    {
        var dt = loc.GetSpecialityKeywords(Convert.ToInt32(specialistid));


        //conn.Open();
        //string cmdspl = @"select * from specialityKeywords where specialityId=" + specialistid;
        //SqlCommand cmd1 = new SqlCommand(cmdspl, conn);
        //SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
        //adp1.Fill(dt);

        var ds = new DataSet();
        var ds1 = new DataSet();
        var dt1 = new DataTable();
        var dt2 = new DataTable();
        var locality = Session["locality"].ToString();
        foreach (DataRow dr in dt.Rows)
        {
            //string cmdstr = @"select top 10 id,doctorName,qualification,experience,speciality,address,mobileNo,mailId, picture from doctors_Data where speciality like '%"+ dr[1].ToString()+"%' and address like '%" + locality + "%'";
            //SqlCommand cmd = new SqlCommand(cmdstr, conn);
            //SqlDataAdapter adp = new SqlDataAdapter();
            dt1 = loc.GetDoctorSearchResults(dr[1].ToString(), locality);
            ds.Merge(dt1);
        }
        foreach (DataRow dr in dt.Rows)
        {

            dt2 = loc.GetDoctorSearchResultsbypreferred(dr[1].ToString(), locality);
            ds1.Merge(dt2);
        }
        //        string cmdstr = @"Select top 10 d.id,d.doctorName,d.qualification,d.experience,d.speciality,d.address,d.mobileNo,d.mailId from doctors_Data d 
        //                        inner join speciality s on s.name = d.speciality where s.id=" + specialistid;
        var distinctTable = ds.Tables[0].DefaultView.ToTable( /*distinct*/ true);
        DataList1.DataSource = distinctTable;
        DataList1.DataBind(); 
        
        var distinctTable1 = ds1.Tables[0].DefaultView.ToTable( /*distinct*/ true);
        DataList2.DataSource = distinctTable1;
        DataList2.DataBind();

        if (distinctTable.Rows.Count == 0 && distinctTable1.Rows.Count == 0)
            noty.Warning_Display("There are no results found in this search criteria. Please try another area", Page);

       
    }

   

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            var doctorid = e.CommandArgument.ToString();
            Session["doctorid"] = doctorid;
            Session["latit"] = TextBox1.Text;
            Session["longit"] = TextBox2.Text;
            Response.Redirect("~/ViewDetails.aspx?did=" + doctorid);
            //Response.Redirect("~/ViewDetails.aspx");
        }
    }


    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            // use the item's DataItem property or the DataList's DataSource property directly
            //DataTable tbl = ((DataRowView)e.Item.DataItem).Row.Table;
            //if (e.Item.ItemIndex == tbl.Rows.Count)
            //{
            var img = (Image) e.Item.FindControl("imgDoctor");

            if (string.IsNullOrEmpty(img.ImageUrl))
                img.ImageUrl = "images/doctor.png";
            HiddenField hfdoctorid = (HiddenField) e.Item.FindControl("hfdoctorid");
            string docId = hfdoctorid.Value;
            Rating ra = (Rating)e.Item.FindControl("Rating1");
            ra.CurrentRating = _user.GetRating(docId);
            //}
        }

        //Label lblId = (Label)e.Item.FindControl("lblId");
        //SubPage objEntity = new SubPage()
        //{

        //    ParentPageId = Convert.ToInt32(lblId.Text)

        //};
        //dlRight.DataSource = objSubBll.GetByParentPageId(objEntity);
        //dlRight.DataBind();


        //foreach (DataListItem dl in DataList1.Items)
        //{
        //    Image img = (Image)dl.FindControl("imgDoctor");
        //    if (string.IsNullOrEmpty(img.ImageUrl)) 
        //    {
        //        img.ImageUrl = "images/doctor.png";
        //    }
        //}
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            var doctorid = e.CommandArgument.ToString();
            Session["doctorid"] = doctorid;
            Session["latit"] = TextBox1.Text;
            Session["longit"] = TextBox2.Text;
            Response.Redirect("~/ViewDetails.aspx?did=" + doctorid);
            //Response.Redirect("~/ViewDetails.aspx");
        }
    }


    protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            // use the item's DataItem property or the DataList's DataSource property directly
            //DataTable tbl = ((DataRowView)e.Item.DataItem).Row.Table;
            //if (e.Item.ItemIndex == tbl.Rows.Count)
            //{
            var img = (Image)e.Item.FindControl("imgDoctor");

            if (string.IsNullOrEmpty(img.ImageUrl))
                img.ImageUrl = "images/doctor.png";
            HiddenField hfdoctorid = (HiddenField)e.Item.FindControl("hfdoctorid");
            string docId =hfdoctorid.Value ;
            Rating ra = (Rating)e.Item.FindControl("Rating1");
            ra.CurrentRating = _user.GetRating(docId);
            //}
        }

        //Label lblId = (Label)e.Item.FindControl("lblId");
        //SubPage objEntity = new SubPage()
        //{

        //    ParentPageId = Convert.ToInt32(lblId.Text)

        //};
        //dlRight.DataSource = objSubBll.GetByParentPageId(objEntity);
        //dlRight.DataBind();


        //foreach (DataListItem dl in DataList1.Items)
        //{
        //    Image img = (Image)dl.FindControl("imgDoctor");
        //    if (string.IsNullOrEmpty(img.ImageUrl)) 
        //    {
        //        img.ImageUrl = "images/doctor.png";
        //    }
        //}
    }


    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc.GetLocalityByCity(Convert.ToInt32(ddlCity.SelectedItem.Value), ddlLocality);
        loc.GetLocalityByCityforCheckbox(Convert.ToInt32(ddlCity.SelectedItem.Value), chkLocations);

    }

    [ScriptMethod]
    [WebMethod]
    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (var conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString;
            using (var cmd = new SqlCommand())
            {
                cmd.CommandText =
                    "select top 10 id as specialityid, UPPER(keywords) as keyword from speciality where " +
                    "keywords like '%' + @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                var customers = new List<string>();
                using (var sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        var item = AutoCompleteExtender.CreateAutoCompleteItem(sdr["keyword"].ToString(),
                            sdr["specialityid"].ToString());
                        customers.Add(item);
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }


    protected void btnsearch_Click(object sender, EventArgs e)
    {
        var id = "";
        id = Request.Form[hfCustomerId.UniqueID];
        var name = Request.Form[txtspeciality.UniqueID];
        //var locality = ddlLocality.SelectedItem.Text;
        Session["locality"] = txtLocality.Text;
        BindData(id);

    }




    protected void chkLocations_SelectedIndexChanged(object sender, EventArgs e)
    {
        bool isAnySelected = chkLocations.SelectedIndex != -1;
        if (isAnySelected)
        {
        Session["locality"] = chkLocations.SelectedItem.Text;
        BindData(Session["specialistId"].ToString());
        }

    }
}