using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class docInventory
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();

        public int insertDocProducts(string uniqueRandomId, string productName, string code, string packType, string packing, string genericForm, string manufacturer,
           string reOrderLevel, int costPrice, int salePrice, string maximumReOrderLevel, string packSize, string taxCategory, string selectProduct, string rackNo, string mrp, string schedule, string cst, int discount)
            
        {
            try
            {

                cmd = dac.GetCommand("sp_insertDocProducts");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
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
        public int insertDocPurchases(string uniqueRandomId, string purchaseBillNo, string invoiceNo, string suppiler, string invoiceDate,string recevingDate, string department, int financialYear, string selectPurchases, string duePaidBillNo
         )
        {
            try
            {

                cmd = dac.GetCommand("sp_insertDocPurchases");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@purchaseBillNo", purchaseBillNo),
                                     new SqlParameter("@invoiceNo", invoiceNo),
                                      new SqlParameter("@suppiler", suppiler),                                    
                                     new SqlParameter("@invoiceDate", invoiceDate),
                                      new SqlParameter("@recevingDate", recevingDate),
                                     new SqlParameter("@department", department),
                                     new SqlParameter("@financialYear", financialYear),                                    
                                     new SqlParameter("@selectPurchases", selectPurchases),
                                     new SqlParameter("@duePaidBillNo", duePaidBillNo)
                                   
                                  
                                    
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


        
        public int insertdocProductCategory(string uniqueRandomId, string code, string productCategory)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertdocProductCategory");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@code", code),
                                     new SqlParameter("@productCategory", productCategory)
                                    
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
        public int insertdocProductSubCategory(string uniqueRandomId, string selectCategory, string productSubCategory)
        {
            try
            {

                cmd = dac.GetCommand("sp_insertdocProductSubCategory");
                SqlParameter[] par = {
                                     new SqlParameter("@uniqueRandomId", uniqueRandomId),                                    
                                     new SqlParameter("@selectCategory", selectCategory),
                                     new SqlParameter("@productSubCategory", productSubCategory)
                                    
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
        public DataTable getdocProductCategory()
        {
            cmd = dac.GetCommand("sp_getdocProductCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDocProductCategory(int id)
        {
            cmd = dac.GetCommand("sp_deleteDocProductCategory");
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
        public DataTable getdocProductSubCategory()
        {
            cmd = dac.GetCommand("sp_getdocProductSubCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDocProductSubCategory(int id)
        {
            cmd = dac.GetCommand("sp_deleteDocProductSubCategory");
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
        public DataTable getdocProducts()
        {
            cmd = dac.GetCommand("sp_getdocProducts");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDocProducts(int id)
        {
            cmd = dac.GetCommand("sp_deleteDocProducts");
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

