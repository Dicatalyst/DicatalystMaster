using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public class doctorFinancial
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();
        public int insertDocFinancialYearSetUp(string uniqneRandomId, string financialYear, string purchageBillNo, string patientRegistrationSno, string purchageReturnsBillNo, string expiryBillNo)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertDocFinancialYearSetUp");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqneRandomId", uniqneRandomId),                                    
                                     new SqlParameter("@financialYear", financialYear),
                                     new SqlParameter("@purchageBillNo", purchageBillNo),
                                      new SqlParameter("@patientRegistrationSno", patientRegistrationSno),                                    
                                     new SqlParameter("@purchageReturnsBillNo", purchageReturnsBillNo),
                                     new SqlParameter("@expiryBillNo", expiryBillNo)
                                  
                                    
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
                //    dac.EnsureOpen();
                //    cmd.ExecuteNonQuery();
                //    dac.Close();
                //    return true;
                //}
                //catch (Exception)
                //{ }
                //finally
                //{
                //    dac.Close();
                //}
                //return false;
                dac.EnsureOpen();
                int userId = Convert.ToInt32(cmd.ExecuteScalar());
                dac.Close();

                return userId;
            }
            catch (Exception)
            {

            }
            return 0;




        }
        
        public int insertdocBankAcc(string uniqueRandomId, string bankName, string accountNo)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertdocBankAcc");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@bankName", bankName),
                                     new SqlParameter("@accountNo", accountNo)
                                    
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
                //    dac.EnsureOpen();
                //    cmd.ExecuteNonQuery();
                //    dac.Close();
                //    return true;
                //}
                //catch (Exception)
                //{ }
                //finally
                //{
                //    dac.Close();
                //}
                //return false;
                dac.EnsureOpen();
                int userId = Convert.ToInt32(cmd.ExecuteScalar());
                dac.Close();

                return userId;
            }
            catch (Exception)
            {

            }
            return 0;




        }
        public int insertDocExpenses(string uniqueRandomId, string billDate, string billTime, string paidTo, string paidBy, int paidAmount, string purposeRemarks)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertDocExpenses");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@billDate", billDate),
                                     new SqlParameter("@billTime", billTime),
                                      new SqlParameter("@paidTo", paidTo),                                    
                                     new SqlParameter("@paidBy", paidBy),
                                     new SqlParameter("@paidAmount", paidAmount),
                                       new SqlParameter("@purposeRemarks", purposeRemarks)
                                    
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }
                //    dac.EnsureOpen();
                //    cmd.ExecuteNonQuery();
                //    dac.Close();
                //    return true;
                //}
                //catch (Exception)
                //{ }
                //finally
                //{
                //    dac.Close();
                //}
                //return false;
                dac.EnsureOpen();
                int userId = Convert.ToInt32(cmd.ExecuteScalar());
                dac.Close();

                return userId;
            }
            catch (Exception)
            {

            }
            return 0;




        }
        public DataTable getdocBankAcc()
        {
            cmd = dac.GetCommand("sp_getdocBankAcc");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDocBankAcc(int id)
        {
            cmd = dac.GetCommand("sp_deleteDocBankAcc");
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
        public DataTable getDocFinancial()
        {
            cmd = dac.GetCommand("sp_getDocFinancial");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDocFinancial(int id)
        {
            cmd = dac.GetCommand("sp_deleteDocFinancial");
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
        public DataTable getDocExpenses()
        {
            cmd = dac.GetCommand("sp_getDocExpenses");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDocExpenses(int id)
        {
            cmd = dac.GetCommand("sp_deleteDocExpenses");
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
     

    }
}
