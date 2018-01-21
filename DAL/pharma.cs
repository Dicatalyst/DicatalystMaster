using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class pharma
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();


        public void insertPharmaFinancialYearSetup(string pharmaId, string financialYear, string patientRegistrationSNo)
        {

            cmd = dac.GetCommand("sp_insertPharmaFinancialYearSetup");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@pharmaId", pharmaId),
                                     new SqlParameter("@financialYear", financialYear),
                                     new SqlParameter("@patientRegistrationSNo", patientRegistrationSNo),
                                                                         
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public DataTable getPharmaFinancialYearSetup()
        {
            cmd = dac.GetCommand("sp_getPharmaFinancialYearSetup");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }



        public void insertPharmaBankAccount(string pharmaId, string bankName, string accountNo)
        {

            cmd = dac.GetCommand("sp_insertPharmaBankAccount");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@pharmaId", pharmaId),
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

        public DataTable getPharmaBankAccount()
        {
            cmd = dac.GetCommand("sp_getPharmaBankAccount");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }



        public void insertPharmaTaxCategory(string pharmaId, string taxName, string taxPercentage)
        {

            cmd = dac.GetCommand("sp_insertPharmaTaxCategory");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@pharmaId", pharmaId),
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

        public DataTable getPharmaTaxCategory()
        {
            cmd = dac.GetCommand("sp_getPharmaTaxCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }



        public void insertPharmaExpenses(string pharmaId, string paidTo, string paidBy, int paidAmount, string purposeRemarks)
        {

            cmd = dac.GetCommand("sp_insertPharmaExpenses");
            SqlParameter[] par = {
                                          
                                     new SqlParameter("@pharmaId", pharmaId),
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

        public DataTable getPharmaExpenses()
        {
            cmd = dac.GetCommand("sp_getPharmaExpenses");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }



        public void insertPharmaOpeningStockEntry(string pharmaId, string department, string financialYear, string productName, string category, string code, string batchNo, DateTime expiryDate, string quantity, string packSize, string free, string rackNo, string gst, int costPrice, int mrp, int salePrice, int totalStock)
        {


            cmd = dac.GetCommand("sp_insertPharmaOpeningStockEntry");
            SqlParameter[] par = {
                                     new SqlParameter("@pharmaId", pharmaId),                                    
                                     new SqlParameter("@department", department),
                                     new SqlParameter("@financialYear", financialYear),
                                      new SqlParameter("@productName", productName),                                    
                                     new SqlParameter("@category", category),
                                     new SqlParameter("@code", code),
                                     new SqlParameter("@batchNo", batchNo),                                    
                                     new SqlParameter("@expiryDate", expiryDate),
                                     new SqlParameter("@quantity", quantity),
                                      new SqlParameter("@packSize", packSize),                                    
                                     new SqlParameter("@free", free),
                                     new SqlParameter("@rackNo", rackNo),
                                     new SqlParameter("@gst", gst),
                                     new SqlParameter("@costPrice", costPrice),
                                                                 
                                     new SqlParameter("@mrp", mrp),
                                     new SqlParameter("@salePrice", salePrice),
                                       new SqlParameter("@totalStock", totalStock)
                                   
                                  
                                  
                                    
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();


        }

        public DataTable getPharmaOpeningStockEntry()
        {
            cmd = dac.GetCommand("sp_getPharmaOpeningStockEntry");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }




        public void insertPharmaProducts(string pharmaId, string productName, string code, string packType, string packing, string genericForm, string manufacturer,
           string reOrderLevel, int costPrice, int salePrice, string maximumReOrderLevel, string packSize, string taxCategory, string selectProduct, string rackNo, string mrp, string schedule, string cst, int discount)
        {


            cmd = dac.GetCommand("sp_insertPharmaProducts");
            SqlParameter[] par = {
                                     new SqlParameter("@pharmaId", pharmaId),                                    
                                     new SqlParameter("@productName", productName),
                                     new SqlParameter("@code", code),
                                      new SqlParameter("@packType", packType),                                    
                                     new SqlParameter("@packing", packing),
                                     new SqlParameter("@genericForm", genericForm),
                                     new SqlParameter("@manufacturer", manufacturer),                                    
                                     new SqlParameter("@reOrderLevel", reOrderLevel),
                                     new SqlParameter("@costPrice", costPrice),
                                      new SqlParameter("@salePrice", salePrice),                                    
                                     new SqlParameter("@maximumReOrderLevel", maximumReOrderLevel),
                                     new SqlParameter("@packSize", packSize),
                                     new SqlParameter("@taxCategory", taxCategory),
                                     new SqlParameter("@selectProduct", selectProduct),
                                      new SqlParameter("@rackNo", rackNo),                                    
                                     new SqlParameter("@mrp", mrp),
                                     new SqlParameter("@schedule", schedule),
                                       new SqlParameter("@cst", cst),
                                     new SqlParameter("@discount", discount)
                                  
                                  
                                    
            };


            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }





        public void insertPharmaProductCategory(string pharmaId, string code, string productCategory)
        {


            cmd = dac.GetCommand("sp_insertPharmaProductCategory");
            SqlParameter[] par = {
                                     new SqlParameter("@pharmaId", pharmaId),                                    
                                     new SqlParameter("@code", code),
                                     new SqlParameter("@productCategory", productCategory)
                                    
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();



        }

        public void insertPharmaProductSubCategory(string pharmaId, string selectCategory, string productSubCategory)
        {


            cmd = dac.GetCommand("sp_insertPharmaProductSubCategory");
            SqlParameter[] par = {
                                     new SqlParameter("@pharmaId", pharmaId),                                    
                                     new SqlParameter("@selectCategory", selectCategory),
                                     new SqlParameter("@productSubCategory", productSubCategory)
                                    
            };


            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();




        }


        public DataTable getPharmaProducts()
        {
            cmd = dac.GetCommand("sp_getPharmaProducts");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public DataTable getPharmaProductCategory()
        {
            cmd = dac.GetCommand("sp_getPharmaProductCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public DataTable getPharmaProductSubCategory()
        {
            cmd = dac.GetCommand("sp_getPharmaProductSubCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }



    }
}
