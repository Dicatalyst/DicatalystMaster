using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class inventory
    {


        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();






        public void insertDentistStockStatus(string doctorId, string reportType, string fieldValue, string searchBy, string productCategory)
        {


            cmd = dac.GetCommand("sp_insertDentistStockStatus");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@doctorId", doctorId),
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


        public void insertDentistStockReturns(string doctorId, string financialYear, string department, string returnType, string purchaseBillNo, string adjustedPurchaseBillNo,
            int totalAmount, string discountReturn, int discountReturnAmount, string totalTax, int netAmount, int totalCostPrice)
        {


            cmd = dac.GetCommand("sp_insertDentistStockReturns");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@doctorId", doctorId),
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

        public void UpdateDentistStockReturns(int id, string doctorId, string financialYear, string department, string returnType, string purchaseBillNo, string adjustedPurchaseBillNo,
           int totalAmount, string discountReturn, int discountReturnAmount, string totalTax, int netAmount, int totalCostPrice)
        {


            cmd = dac.GetCommand("sp_UpdateDentistStockReturns");
            SqlParameter[] par = {
                                    new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
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


        public void insertDentistExpiryProduct(string doctorId, string searchBy, string fieldValue)
        {


            cmd = dac.GetCommand("sp_insertDentistExpiryProduct");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@doctorId", doctorId),
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

        public void UpdateDentistExpiryProduct(int id, string doctorId, string searchBy, string fieldValue)
        {
                  

            cmd = dac.GetCommand("sp_UpdateDentistExpiryProduct");
            SqlParameter[] par = {
                                     new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
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

        public void insertDentistStockAdjustment(string doctorId,string productCategory, string searchBy, string fieldValue)
        {


            cmd = dac.GetCommand("sp_insertDentistStockAdjustment");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@doctorId", doctorId),

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

        public void UpdateDentistStockAdjustment(int id, string doctorId, string productCategory, string searchBy, string fieldValue)
        {
                  

            cmd = dac.GetCommand("sp_UpdateDentistStockAdjustment");
            SqlParameter[] par = {
                                     new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
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


        public void insertDentOpeningStockEntry(string doctorId, string department, string financialYear, string productName, string category, string code, string batchNo, DateTime expiryDate, string quantity, string packSize, string free, string rackNo, string gst, int costPrice, int mrp, int salePrice, int totalStock)
        {
            cmd = dac.GetCommand("sp_insertDentOpeningStockEntry");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),                                    
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

        public void UpdateDentOpeningStockEntry(int id, string doctorId, string department, string financialYear, string productName, string category, string code, string batchNo, DateTime expiryDate, string quantity, string packSize, string free, string rackNo, string gst, int costPrice, int mrp, int salePrice, int totalStock)
        {
            cmd = dac.GetCommand("sp_UpdateDentOpeningStockEntry");
            SqlParameter[] par = {
                                    new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
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

        public void insertDentProducts(string doctorId, string productName, string code, string packType, string packing, string genericForm, string manufacturer,
           string reOrderLevel, int costPrice, int salePrice, string maximumReOrderLevel, string packSize, string taxCategory, string selectProduct, string rackNo, string mrp, string schedule, string cst, int discount)
        {


            cmd = dac.GetCommand("sp_insertDentProducts");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),                                    
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

        public void UPDATEDentProducts(int id, string doctorId, string productName, string code, string packType, string packing, string genericForm, string manufacturer,
         string reOrderLevel, int costPrice, int salePrice, string maximumReOrderLevel, string packSize, string taxCategory, string selectProduct, string rackNo, string mrp, string schedule, string cst, int discount)
        {
            cmd = dac.GetCommand("sp_UPDATEDentProducts");
            SqlParameter[] par = {
                                    new SqlParameter("@Id", id),
                                     new SqlParameter("@doctorId", doctorId),
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
        public void insertDentPurchases(string doctorId, string purchaseBillNo, string invoiceNo, string suppiler, string invoiceDate, string recevingDate, string department, string financialYear, string selectPurchases, string duePaidBillNo
         )
        {


            cmd = dac.GetCommand("sp_insertDentPurchases");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),                                    
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

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void UpdateDentPurchases(int id,string doctorId, string purchaseBillNo, string invoiceNo, string suppiler, string invoiceDate, string recevingDate, string department, string financialYear, string selectPurchases, string duePaidBillNo
        )
        {


            cmd = dac.GetCommand("sp_UpdateDentPurchases");
            SqlParameter[] par = {
                                     new SqlParameter("@Id", id),

                                     new SqlParameter("@doctorId", doctorId),
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

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }


        public void insertDentProductCategory(string doctorId, string code, string productCategory)
        {


            cmd = dac.GetCommand("sp_insertdocProductCategory");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),                                    
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
        public void insertDentProductSubCategory(string doctorId, string selectCategory, string productSubCategory)
        {


            cmd = dac.GetCommand("sp_insertDentProductSubCategory");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),                                    
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
        public void insertDentStockist(string doctorId, string supplierName, string apgstRegNo, string cstNo, string tinNo,
            string form20B, string form21B, string address, int city, int area, int state, string zipCode, string telephoneNo,
            string faxNo, string contactPerson, string availablePerson, string mobileNo,
      string designation, string department, string website, string email, string totalProducts, int country)
        {


            cmd = dac.GetCommand("sp_insertDentStockist");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),                                    
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

        public void UpdateDentStockist(int id ,string doctorId, string supplierName, string apgstRegNo, string cstNo, string tinNo,
          string form20B, string form21B, string address, int city, int area, int state, string zipCode, string telephoneNo,
          string faxNo, string contactPerson, string availablePerson, string mobileNo,
    string designation, string department, string website, string email, string totalProducts, int country)
        {


            cmd = dac.GetCommand("sp_UpdateDentStockist");
            SqlParameter[] par = {
                                   new SqlParameter("@Id", id),

                                     new SqlParameter("@doctorId", doctorId),
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

        public DataTable getDentOpeningStockEntry()
        {
            cmd = dac.GetCommand("sp_getDentOpeningStockEntry");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getDentProductCategory()
        {
            cmd = dac.GetCommand("sp_getDentProductCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDentOpeningStockEntry(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentOpeningStockEntry");
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
        public void deleteDentProductCategory(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentProductCategory");
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
        public DataTable getDentProductSubCategory()
        {
            cmd = dac.GetCommand("sp_getDentProductSubCategory");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDentProductSubCategory(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentProductSubCategory");
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
        public DataTable getDentProducts()
        {
            cmd = dac.GetCommand("sp_getDentProducts");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getDentPurchases()
        {
            cmd = dac.GetCommand("sp_getDentPurchases");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable getDentStockist()
        {
            cmd = dac.GetCommand("sp_getDentStockist");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public void deleteDentProducts(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentProducts");
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
        public void deleteDentPurchases(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentPurchases");
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

        public void deleteDentStockist(int id)
        {
            cmd = dac.GetCommand("[sp_deleteDentStockist]");
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


        public DataTable getDentistStockStatus()
        {
            cmd = dac.GetCommand("sp_getDentistStockStatus");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public DataTable getDentistExpiryProduct()
        {
            cmd = dac.GetCommand("sp_getDentistExpiryProduct");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }






        public DataTable getDentistStockReturns()
        {
            cmd = dac.GetCommand("sp_getDentistStockReturns");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public DataTable getDentistStockAdjustment()
        {
            cmd = dac.GetCommand("sp_getDentistStockAdjustment");

            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }


        public void deleteDentistStockStatus(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentistStackStatus");
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


        public void deleteDentistExpiryProduct(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentistExpiryProduct");
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


        public void deleteDentistStockReturns(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentistStockReturns");
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
        public void deleteDentistStockAdjustment(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentistStockAdjustment");
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
