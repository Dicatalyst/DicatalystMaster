using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using System.Xml.Linq;

using System.Data.SqlClient;
using System.Web.UI.WebControls;


namespace BAL
{
    
    public class DoctorFinancial
    {
        private DAL.doctorFinancial _fin = new DAL.doctorFinancial();
        private DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();


        public void InsertDocFinancialYearSetUp(TextBox financialYear,TextBox purchageBillNo, TextBox patientRegistrationSno, TextBox purchageReturnsBillNo, TextBox expiryBillNo)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _fin.insertDocFinancialYearSetUp(randomId, financialYear.Text,purchageBillNo.Text, patientRegistrationSno.Text, purchageReturnsBillNo.Text, expiryBillNo.Text);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }
        
        public void InsertdocBankAcc(TextBox bankName, TextBox accountNo)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _fin.insertdocBankAcc(randomId, bankName.Text, accountNo.Text);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }
        public void InsertDocExpenses(TextBox billDate, TextBox billTime, TextBox paidTo, TextBox paidBy, TextBox paidAmount, TextBox purposeRemarks)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _fin.insertDocExpenses(randomId, billDate.Text, billTime.Text, paidTo.Text, paidBy.Text, Convert.ToInt32(paidAmount.Text), purposeRemarks.Text);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }
        public DataTable GetdocBankAcc()
        {

            DataTable dt = _fin.getdocBankAcc();
            return dt;
        }
        public void DeleteDocBankAcc(int id)
        {
            _fin.deleteDocBankAcc(id);


        }
        public DataTable GetDocFinancial()
        {

            DataTable dt = _fin.getDocFinancial();
            return dt;
        }
        public void DeleteDocFinancial(int id)
        {
            _fin.deleteDocFinancial(id);


        }
        public DataTable GetDocExpenses()
        {

            DataTable dt = _fin.getDocExpenses();
            return dt;
        }
        public void DeleteDocExpenses(int id)
        {
            _fin.deleteDocExpenses(id);


        }
    }
}
