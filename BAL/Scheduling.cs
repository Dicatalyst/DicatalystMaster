using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

using System.Xml.Linq;

using System.Data.SqlClient;


namespace BAL
{
    public class Scheduling

    {
      
        private DAL.Scheduling _sch = new DAL.Scheduling();
        private DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();


     
        public void InsertSchedule(DropDownList selectVenue, CheckBoxList selectDay, TextBox setPatientTime, RadioButtonList visible)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _sch.insertSchedule(randomId, selectVenue.Text, selectDay.Text, setPatientTime.Text, visible.Text);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }
        public void AddSchedulingVenue(TextBox venueName,TextBox venueAddress, TextBox venueContact, TextBox venueMap)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _sch.addSchedulingVenue(randomId, venueName.Text, venueAddress.Text,venueContact.Text, venueMap.Text);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }
        public DataTable GetVenueData()
        {

            DataTable dt = _sch.getVenueData();
            return dt;
        }

        public void DeleteVenueData(int id)
        {
            _sch.deleteVenueData(id);


        }
        //public DropDownList getSelectedVenue()
        //{

        //    DropDownList dt = sch.getSelectedVenue();
        //    return dt;
        //}
       
    }
}
