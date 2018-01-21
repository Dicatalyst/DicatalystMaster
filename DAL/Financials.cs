using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Financials
    {

        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();


        public void insertFinancialYearSetup(string doctorId, string financialYear, string patientRegistrationSNo, string expiryBillNo, string purchaseBillNo, string purchaseReturnsBillNo, string sampleCollBillNo)
        {

            cmd = dac.GetCommand("sp_insertFinancialYearSetup");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@financialYear", financialYear),
                                     new SqlParameter("@patientRegistrationSNo", patientRegistrationSNo),
                                     new SqlParameter("@expiryBillNo", expiryBillNo),
                                     new SqlParameter("@purchaseBillNo", purchaseBillNo),
                                     new SqlParameter("@purchaseReturnsBillNo", purchaseReturnsBillNo),
                                     new SqlParameter("@sampleCollBillNo", sampleCollBillNo),
                                     
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        //todo Ravi finUpdate
        public void UpdateFinancialYearSetup(int id, string doctorId, string financialYear, string patientRegistrationSNo, string expiryBillNo, string purchaseBillNo, string purchaseReturnsBillNo, string sampleCollBillNo)
        {

            cmd = dac.GetCommand("sp_UpdateFinancialYearSetup");
            SqlParameter[] par = {
                                     new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@financialYear", financialYear),
                                     new SqlParameter("@patientRegistrationSNo", patientRegistrationSNo),
                                     new SqlParameter("@expiryBillNo", expiryBillNo),
                                     new SqlParameter("@purchaseBillNo", purchaseBillNo),
                                     new SqlParameter("@purchaseReturnsBillNo", purchaseReturnsBillNo),
                                     new SqlParameter("@sampleCollBillNo", sampleCollBillNo),

            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public DataTable getFinancialYearSetup()
        {
            cmd = dac.GetCommand("sp_getFinancialYearSetup");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        
        public void deleteFinancialYearSetup(int id)
        {
            cmd = dac.GetCommand("sp_deleteFinancialYearSetup");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }



        public void insertBankAccount(string doctorId, string bankName, string accountNo)
        {

            cmd = dac.GetCommand("sp_insertBankAccount");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@bankName", bankName),
                                     new SqlParameter("@accountNo", accountNo),                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        //todo Ravi BankUpdate
        public void UpdateBankAccount(int id, string doctorId, string bankName, string accountNo)
        {

            cmd = dac.GetCommand("sp_UpdateBankAccount");
            SqlParameter[] par = {
                                     new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@bankName", bankName),
                                     new SqlParameter("@accountNo", accountNo),
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public DataTable getBankAccount()
        {
            cmd = dac.GetCommand("sp_getBankAccount");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public void deleteBankAccount(int id)
        {
            cmd = dac.GetCommand("sp_deleteBankAccount");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }

        public void insertExpenses(string doctorId, string paidTo, string paidBy,int paidAmount,string purposeRemarks)
        {

            cmd = dac.GetCommand("sp_insertExpenses");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@paidTo", paidTo),
                                     new SqlParameter("@paidBy", paidBy), 
                                     new SqlParameter("@paidAmount", paidAmount),
                                     new SqlParameter("@purposeRemarks", purposeRemarks), 
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        //todo Ravi ExpenseUpdate
        public void UpdateExpenses(int id, string doctorId, string paidTo, string paidBy, int paidAmount, string purposeRemarks)
        {

            cmd = dac.GetCommand("sp_UpdateExpenses");
            SqlParameter[] par = {

                                    new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@paidTo", paidTo),
                                     new SqlParameter("@paidBy", paidBy),
                                     new SqlParameter("@paidAmount", paidAmount),
                                     new SqlParameter("@purposeRemarks", purposeRemarks),
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        public DataTable getExpenses()
        {
            cmd = dac.GetCommand("sp_getExpenses");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable getPatients()
        {
            cmd = dac.GetCommand("sp_getPatients");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        //public DataTable GetPatientsinfo()
        //{
        //    cmd = dac.GetCommand("sp_getPatientDetailsInfo");

        //    ds = dac.ExecuteNonQuery_selectQuery(cmd);
        //    return ds.Tables[0];

        //}
        public DataTable GetPatientsinfo(string doctorId)
        {
            cmd = dac.GetCommand("sp_getPatientDetailsInfo");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable GetPatientsBillinfo(string doctorId) //, DateTime startDateTime ,DateTime endDateTime)
        {
            DateTime startDateTime = DateTime.UtcNow.AddHours(5).AddMinutes(30).Date;
            DateTime endDateTime = DateTime.UtcNow.AddDays(1).AddHours(5).AddMinutes(30).Date;
            //cmd = dac.GetCommand("sp_getPatientsBillInfo");

            //SqlParameter[] par = {
            //    new SqlParameter("@doctorId", doctorId)
            //};

            cmd = dac.GetCommand("sp_getPatientsBillInfo");

            SqlParameter[] par = {
                new SqlParameter("@doctorId", doctorId),
                new SqlParameter("@Starttime", startDateTime),
                 new SqlParameter("@Endtime", endDateTime)
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public void deleteExpenses(int id)
        {
            cmd = dac.GetCommand("sp_deleteExpenses");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }

        public void insertTaxCategory(string doctorId, string taxName, string taxPercentage)
        {

            cmd = dac.GetCommand("sp_insertTaxCategory");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@taxName", taxName),
                                     new SqlParameter("@taxPercentage", taxPercentage),                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        //todo Ravi BankUpdate
        public void UpdateTaxCategory(int id, string doctorId, string taxName, string taxPercentage)
        {

            cmd = dac.GetCommand("sp_UpdateTaxCategory");
            SqlParameter[] par = {

                                     new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@taxName", taxName),
                                     new SqlParameter("@taxPercentage", taxPercentage),
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        public DataTable getTaxCategory()
        {
            cmd = dac.GetCommand("sp_getTaxCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public void deleteTaxCategory(int id)
        {
            cmd = dac.GetCommand("sp_deleteTaxCategory");
            SqlParameter[] par = {
                                     new SqlParameter("@id", id)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }




        //LabFinancials
        public void insertLabFinancialYearSetup(string labId, string financialYear, string patientRegistrationSNo, string expiryBillNo, string purchaseBillNo, string purchaseReturnsBillNo)
        {

            cmd = dac.GetCommand("sp_insertLabFinancialYearSetup");
            SqlParameter[] par = {
                                          
                new SqlParameter("@labId", labId),
                new SqlParameter("@financialYear", financialYear),
                new SqlParameter("@patientRegistrationSNo", patientRegistrationSNo),
                new SqlParameter("@expiryBillNo", expiryBillNo),
                new SqlParameter("@purchaseBillNo", purchaseBillNo),
                new SqlParameter("@purchaseReturnsBillNo", purchaseReturnsBillNo)
                                     
                                     
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        public DataTable getLabFinancialYearSetup()
        {
            cmd = dac.GetCommand("sp_getlabFinancialYearSetup");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public void insertLabBankAccount(string labId, string bankName, string accountNo)
        {

            cmd = dac.GetCommand("sp_insertLabBankAcc");
            SqlParameter[] par = {
                                          
                new SqlParameter("@labId", labId),
                new SqlParameter("@bankName", bankName),
                new SqlParameter("@accountNo", accountNo),                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }
        public DataTable getLabBankAccount()
        {
            cmd = dac.GetCommand("sp_getLabBankAccount");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void insertLabTaxCategory(string labId, string taxName, string taxPercentage)
        {

            cmd = dac.GetCommand("sp_insertLabTaxCategory");
            SqlParameter[] par = {
                                          
                new SqlParameter("@labId", labId),
                new SqlParameter("@taxName", taxName),
                new SqlParameter("@taxPercentage", taxPercentage),                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public DataTable getLabTaxCategory()
        {
            cmd = dac.GetCommand("sp_getLabTaxCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void insertLabExpenses(string labId, string paidTo, string paidBy, int paidAmount, string purposeRemarks)
        {

            cmd = dac.GetCommand("sp_insertLabExpenses");
            SqlParameter[] par = {
                                          
                new SqlParameter("@labId", labId),
                new SqlParameter("@paidTo", paidTo),
                new SqlParameter("@paidBy", paidBy), 
                new SqlParameter("@paidAmount", paidAmount),
                new SqlParameter("@purposeRemarks", purposeRemarks), 
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public DataTable getLabExpenses()
        {
            cmd = dac.GetCommand("sp_getLabExpenses");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void insertLabDueCollections(string labId, 
            string billNo ,       string finanacialYear ,
            string 	registrationNo ,string 	branch ,string	payMode ,string	patientName ,
            DateTime registrationDate ,	string dueAmount,	string towards,
            string 	paidAmount ,	string customerPaid,
            string returnsToCustomer,string 	remarks,
            string paidBy,	string discount, 
            string currentDueAmount ,	string chequeNo, 
            string chequeDetails)
        {

            cmd = dac.GetCommand("sp_insertLabExpenses");
            SqlParameter[] par = {
                                          
                new SqlParameter("@labId", labId),
                new SqlParameter("@billNo", billNo),
                new SqlParameter("@finanacialYear", finanacialYear), 
                new SqlParameter("@registrationNo", registrationNo),
                new SqlParameter("@branch", branch), 
                new SqlParameter("@payMode", payMode),
                new SqlParameter("@patientName", patientName),
                new SqlParameter("@registrationDate", registrationDate), 
                new SqlParameter("@dueAmount", dueAmount),
                new SqlParameter("@towards", towards), 
                new SqlParameter("@paidAmount", paidAmount),
                new SqlParameter("@customerPaid", customerPaid),
                new SqlParameter("@returnsToCustomer", returnsToCustomer), 
                new SqlParameter("@remarks", remarks),
                new SqlParameter("@paidBy", paidBy), 
                new SqlParameter("@discount", discount),
                new SqlParameter("@customerPaid", customerPaid),
                new SqlParameter("@currentDueAmount", currentDueAmount), 
                new SqlParameter("@chequeNo", chequeNo),
                new SqlParameter("@chequeDetails", chequeDetails), 
            };


            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

    }

    }

