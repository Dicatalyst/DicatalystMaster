using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class labInventory
    {

            private SqlCommand cmd;
            private DataSet ds;
            private DAL.Connections dac = new Connections();


            public void insertLabStockStatus(string labId, string reportType, string fieldValue, string searchBy, string productCategory)
            {


                cmd = dac.GetCommand("sp_insertLabStockStatus");
                SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@labId", labId),
                                     new SqlParameter("@reportType", reportType),
                                        new SqlParameter("@fieldValue", fieldValue),
                                         new SqlParameter("@searchBy", searchBy),
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


            public void insertLabStockReturns(string labId, string financialYear, string department, string returnType, string purchaseBillNo, string adjustedPurchaseBillNo,
                int totalAmount, string discountReturn, int discountReturnAmount, string totalTax, int netAmount, int totalCostPrice)
            {


                cmd = dac.GetCommand("sp_insertLabStockReturns");
                SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@labId", labId),
                                     new SqlParameter("@financialYear", financialYear),
                                        new SqlParameter("@department", department),
                                         new SqlParameter("@returnType", returnType),
                                          new SqlParameter("@purchaseBillNo", purchaseBillNo),
                                           new SqlParameter("@adjustedPurchaseBillNo", adjustedPurchaseBillNo),
                                     new SqlParameter("@totalAmount", totalAmount),
                                        new SqlParameter("@discountReturn", discountReturn),
                                         new SqlParameter("@discountReturnAmount", discountReturnAmount),
                                          new SqlParameter("@totalTax", totalTax),

                                           new SqlParameter("@netAmount", netAmount),
                                           new SqlParameter("@totalCostPrice", totalCostPrice)
                                    
                                    
                                    
            };
                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

                dac.EnsureOpen();
                cmd.ExecuteNonQuery();
                dac.Close();


            }




            public void insertLabExpiryProduct(string labId, string searchBy, string fieldValue)
            {


                cmd = dac.GetCommand("sp_insertLabExpiryProduct");
                SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@labId", labId),
                                     new SqlParameter("@searchBy", searchBy),
                                        new SqlParameter("@fieldValue", fieldValue),
                                        

                                    
            };
                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

                dac.EnsureOpen();
                cmd.ExecuteNonQuery();
                dac.Close();


            }

            public void insertLabStockAdjustment(string labId, string productCategory, string searchBy, string fieldValue)
            {


                cmd = dac.GetCommand("sp_insertLabStockAdjustment");
                SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@labId", labId),

                                          new SqlParameter("@productCategory", productCategory),
                                     new SqlParameter("@searchBy", searchBy),
                                        new SqlParameter("@fieldValue", fieldValue),
                                        

                                    
            };
                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

                dac.EnsureOpen();
                cmd.ExecuteNonQuery();
                dac.Close();


            }


            public void insertLabOpeningStockEntry(string labId, string department, string financialYear, string productName, string category, string code, string batchNo, DateTime expiryDate, string quantity, string packSize, string free, string rackNo, string gst, int costPrice, int mrp, int salePrice, int totalStock)
            {


                cmd = dac.GetCommand("sp_insertLabOpeningStockEntry");
                SqlParameter[] par = {
                                     new SqlParameter("@labId", labId),                                    
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










            public void insertLabProducts(string labId, string productName, string code, string packType, string packing, string genericForm, string manufacturer,
               string reOrderLevel, int costPrice, int salePrice, string maximumReOrderLevel, string packSize, string taxCategory, string selectProduct, string rackNo, string mrp, string schedule, string cst, string discount)
            {


                cmd = dac.GetCommand("sp_insertLabProducts");
                SqlParameter[] par = {
                                     new SqlParameter("@labId", labId),                                    
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
            public void insertLabPurchases(string labId, string purchaseBillNo, string invoiceNo, string supplier, string invoiceDate, string receivingDate, string department, string financialYear, string selectPurchases, string duePaidBillNo
             )
            {


                cmd = dac.GetCommand("sp_insertLabPurchases");
                SqlParameter[] par = {
                                     new SqlParameter("@labId", labId),                                    
                                     new SqlParameter("@purchaseBillNo", purchaseBillNo),
                                     new SqlParameter("@invoiceNo", invoiceNo),
                                      new SqlParameter("@supplier", supplier),                                    
                                     new SqlParameter("@invoiceDate", invoiceDate),
                                      new SqlParameter("@receivingDate", receivingDate),
                                     new SqlParameter("@department", department),
                                     new SqlParameter("@financialYear", financialYear),                                    
                                     new SqlParameter("@selectPurchases", selectPurchases),
                                     new SqlParameter("@duePaidBillNo", duePaidBillNo)
                                   
                                  
                                    
            };


                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

                dac.EnsureOpen();
                cmd.ExecuteNonQuery();
                dac.Close();
            }



            public void insertLabProductCategory(string labId, string code, string productCategory)
            {


                cmd = dac.GetCommand("sp_insertLabProductCategory");
                SqlParameter[] par = {
                                     new SqlParameter("@labId", labId),                                    
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
            public void insertLabProductSubCategory(string labId, string selectCategory, string productSubCategory)
            {


                cmd = dac.GetCommand("sp_insertLabProductSubCategory");
                SqlParameter[] par = {
                                     new SqlParameter("@labId", labId),                                    
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
            public void insertLabStockist(string labId, string supplierName, string apgstRegNo, string cstNo, string tinNo,
                string form20B, string form21B, string address, int city, int area, int state, string zipCode, string telephoneNo,
                string faxNo, string contactPerson, string availablePerson, string mobileNo,
          string designation, string department, string website, string email, string totalProducts, int country)
            {


                cmd = dac.GetCommand("sp_insertLabStockist");
                SqlParameter[] par = {
                                     new SqlParameter("@labId", labId),                                    
                                     new SqlParameter("@supplierName", supplierName),
                                     new SqlParameter("@apgstRegNo", apgstRegNo),
                                      new SqlParameter("@cstNo", cstNo),                                    
                                     new SqlParameter("@tinNo", tinNo),
                                     new SqlParameter("@form20B", form20B),
                                      new SqlParameter("@form21B", form21B),                                    
                                     new SqlParameter("@address", address),
                                     new SqlParameter("@city", city),
                                      new SqlParameter("@area", area),                                    
                                     new SqlParameter("@state", state),

                                     new SqlParameter("@zipCode", zipCode),
                                      new SqlParameter("@telephoneNo", telephoneNo),                                    
                                     new SqlParameter("@faxNo", faxNo),
                                   
                                      new SqlParameter("@contactPerson", contactPerson),                                    
                                     new SqlParameter("@availablePerson", availablePerson),
                                     new SqlParameter("@mobileNo", mobileNo),
           new SqlParameter("@designation", designation),                                    
                                     new SqlParameter("@department", department),
                                     new SqlParameter("@website", website),
           new SqlParameter("@email", email),                                    
                                     new SqlParameter("@totalProducts", totalProducts),
                                      new SqlParameter("@country", country)
                                     
                                    
            };

                for (int i = 0; i < par.Length; i++)
                {
                    cmd.Parameters.Add(par[i]);
                }

                dac.EnsureOpen();
                cmd.ExecuteNonQuery();
                dac.Close();





            }

            public DataTable getLabOpeningStockEntry()
            {
                cmd = dac.GetCommand("sp_getLabOpeningStockEntry");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }
            public DataTable getLabProductCategory()
            {
                cmd = dac.GetCommand("sp_getLabProductCategory");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }
            
           
            public DataTable getLabProductSubCategory()
            {
                cmd = dac.GetCommand("sp_getLabProductSubCategory");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }
          
            public DataTable getLabProducts()
            {
                cmd = dac.GetCommand("sp_getLabProducts");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }
            public DataTable getLabPurchases()
            {
                cmd = dac.GetCommand("sp_getLabPurchases");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }

            public DataTable getLabStockist()
            {
                cmd = dac.GetCommand("sp_getLabStockist");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }


          


            public DataTable getLabStockStatus()
            {
                cmd = dac.GetCommand("sp_getLabStockStatus");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }


            public DataTable getLabExpiryProduct()
            {
                cmd = dac.GetCommand("sp_getLabExpiryProduct");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }






            public DataTable getLabStockReturns()
            {
                cmd = dac.GetCommand("sp_getLabStockReturns");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }

            public DataTable getLabStockAdjustment()
            {
                cmd = dac.GetCommand("sp_getLabStockAdjustment");

                ds = dac.ExecuteNonQuery_selectQuery(cmd);
                return ds.Tables[0];

            }



        }
    }

