

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
    public class inventory
    {
        private readonly DAL.inventory inv = new DAL.inventory();
        public void insertDentistStockStatus(string doctorId, DropDownList reportType, TextBox fieldValue, TextBox searchBy, TextBox productCategory)
        {

            inv.insertDentistStockStatus(doctorId, Convert.ToString(reportType.SelectedItem.Value), fieldValue.Text, searchBy.Text, productCategory.Text);


        }


        public void insertDentistStockReturns(string doctorId, TextBox financialYear, TextBox department, TextBox returnType, TextBox purchaseBillNo, TextBox adjustedPurchaseBillNo,
        TextBox totalAmount, TextBox discountReturn, TextBox discountReturnAmount, TextBox totalTax, TextBox netAmount, TextBox totalCostPrice)
        {

            inv.insertDentistStockReturns(doctorId, financialYear.Text, department.Text, returnType
                .Text, purchaseBillNo.Text, adjustedPurchaseBillNo.Text, Convert.ToInt32(totalAmount.Text), discountReturn.Text, Convert.ToInt32(discountReturnAmount.Text), totalTax.Text, Convert.ToInt32(netAmount.Text), Convert.ToInt32(totalCostPrice.Text));
        }
         
        public void UpdateDentistStockReturns(Label id, string doctorId, TextBox financialYear, TextBox department, TextBox returnType, TextBox purchaseBillNo, TextBox adjustedPurchaseBillNo,
        TextBox totalAmount, TextBox discountReturn, TextBox discountReturnAmount, TextBox totalTax, TextBox netAmount, TextBox totalCostPrice)
        {

            inv.UpdateDentistStockReturns(Convert.ToInt32(id.Text), doctorId, financialYear.Text, department.Text, returnType
                .Text, purchaseBillNo.Text, adjustedPurchaseBillNo.Text, Convert.ToInt32(totalAmount.Text), discountReturn.Text, Convert.ToInt32(discountReturnAmount.Text), totalTax.Text, Convert.ToInt32(netAmount.Text), Convert.ToInt32(totalCostPrice.Text));
        }

        public void insertDentistExpiryProduct(string doctorId, DropDownList searchBy, TextBox fieldValue)
        {

            inv.insertDentistExpiryProduct(doctorId, Convert.ToString(searchBy.SelectedItem.Value), fieldValue.Text);

        }

        public void UpdateDentistExpiryProduct(Label id, string doctorId, DropDownList searchBy, TextBox fieldValue)
        {

            inv.UpdateDentistExpiryProduct(Convert.ToInt32(id.Text), doctorId, Convert.ToString(searchBy.SelectedItem.Value), fieldValue.Text);

        }


        public void insertDentistStockAdjustment(string doctorId,DropDownList productCategory, DropDownList searchBy, TextBox fieldValue)
        {

            inv.insertDentistStockAdjustment(doctorId, Convert.ToString(productCategory.SelectedItem.Value), Convert.ToString(searchBy.SelectedItem.Value), fieldValue.Text);


        }

        public void UpdateDentistStockAdjustment(Label id, string doctorId, DropDownList productCategory, DropDownList searchBy, TextBox fieldValue)
        {
             
            inv.UpdateDentistStockAdjustment(Convert.ToInt32(id.Text), doctorId, Convert.ToString(productCategory.SelectedItem.Value), Convert.ToString(searchBy.SelectedItem.Value), fieldValue.Text);


        }




        public void insertDentOpeningStockEntry(string doctorId, DropDownList department, TextBox financialYear, TextBox productName, TextBox category, TextBox code, TextBox batchNo, TextBox expiryDate, TextBox quantity, TextBox packSize, TextBox free, TextBox rackNo, TextBox gst, TextBox costPrice, TextBox mrp, TextBox salePrice, TextBox totalStock)
        {
            inv.insertDentOpeningStockEntry(doctorId, Convert.ToString(department.SelectedItem.Value), financialYear.Text, productName.Text, category.Text, code.Text, batchNo.Text, Convert.ToDateTime(expiryDate.Text), quantity.Text, packSize.Text, free.Text, rackNo.Text, gst.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(mrp.Text), Convert.ToInt32(salePrice.Text), Convert.ToInt32(totalStock.Text));
        }
        public void UpdateDentOpeningStockEntry(Label id, string doctorId, DropDownList department, TextBox financialYear, TextBox productName, TextBox category, TextBox code, TextBox batchNo, TextBox expiryDate, TextBox quantity, TextBox packSize, TextBox free, TextBox rackNo, TextBox gst, TextBox costPrice, TextBox mrp, TextBox salePrice, TextBox totalStock)
        {
            inv.UpdateDentOpeningStockEntry(Convert.ToInt32(id.Text), doctorId, Convert.ToString(department.SelectedItem.Value), financialYear.Text, productName.Text, category.Text, code.Text, batchNo.Text, Convert.ToDateTime(expiryDate.Text), quantity.Text, packSize.Text, free.Text, rackNo.Text, gst.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(mrp.Text), Convert.ToInt32(salePrice.Text), Convert.ToInt32(totalStock.Text));
        }

        public void insertDentProducts(string doctorId, TextBox productName, TextBox code, DropDownList packType, TextBox packing, DropDownList genericForm, DropDownList manufacturer,
            TextBox reOrderLevel, TextBox costPrice, TextBox salePrice, TextBox maximumReOrderLevel, TextBox packSize, TextBox taxCategory, RadioButtonList selectProduct, TextBox rackNo, TextBox mrp, TextBox schedule, DropDownList cst, TextBox discount)
        {
            inv.insertDentProducts(doctorId, productName.Text, code.Text, packType.Text, packing.Text, Convert.ToString(genericForm.SelectedItem.Value), Convert.ToString(manufacturer.SelectedItem.Value), reOrderLevel.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(salePrice.Text), maximumReOrderLevel.Text, packSize.Text, taxCategory.Text, selectProduct.Text, rackNo.Text, mrp.Text, schedule.Text, Convert.ToString(cst.SelectedItem.Value), Convert.ToInt32(discount.Text));
        }
        
        public void UpdateDentProducts(Label id, string doctorId, TextBox productName, TextBox code, DropDownList packType, TextBox packing, DropDownList genericForm, DropDownList manufacturer,
            TextBox reOrderLevel, TextBox costPrice, TextBox salePrice, TextBox maximumReOrderLevel, TextBox packSize, TextBox taxCategory, RadioButtonList selectProduct, TextBox rackNo, TextBox mrp, TextBox schedule, DropDownList cst, TextBox discount)
        {
            inv.UPDATEDentProducts(Convert.ToInt32(id.Text), doctorId, productName.Text, code.Text, packType.Text, packing.Text, Convert.ToString(genericForm.SelectedItem.Value), Convert.ToString(manufacturer.SelectedItem.Value), reOrderLevel.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(salePrice.Text), maximumReOrderLevel.Text, packSize.Text, taxCategory.Text, selectProduct.Text, rackNo.Text, mrp.Text, schedule.Text, Convert.ToString(cst.SelectedItem.Value), Convert.ToInt32(discount.Text));
        }

        public void insertDentPurchases(string doctorId, TextBox purchaseBillNo, TextBox invoiceNo, TextBox suppiler, TextBox invoiceDate, TextBox recevingDate, TextBox department,
        TextBox financialYear, RadioButtonList selectPurchases, TextBox duePaidBillNo)
        {

            inv.insertDentPurchases(doctorId, purchaseBillNo.Text, invoiceNo.Text, suppiler.Text, invoiceDate.Text, recevingDate.Text, department.Text, financialYear.Text, selectPurchases.Text, duePaidBillNo.Text);

        }
        public void UpdateDentPurchases(Label id, string doctorId, TextBox purchaseBillNo, TextBox invoiceNo, TextBox suppiler, TextBox invoiceDate, TextBox recevingDate, TextBox department,
        TextBox financialYear, RadioButtonList selectPurchases, TextBox duePaidBillNo)
        {

            inv.UpdateDentPurchases(Convert.ToInt32(id.Text), doctorId, purchaseBillNo.Text, invoiceNo.Text, suppiler.Text, invoiceDate.Text, recevingDate.Text, department.Text, financialYear.Text, selectPurchases.Text, duePaidBillNo.Text);

        }
        
        public void insertDentProductCategory(string doctorId, DropDownList code, TextBox productCategory)
        {

            inv.insertDentProductCategory(doctorId, Convert.ToString(code.SelectedItem.Value), productCategory.Text);

        }


        public void insertDentProductSubCategory(string doctorId, TextBox selectCategory, TextBox productSubCategory)
        {

            inv.insertDentProductSubCategory(doctorId, selectCategory.Text, productSubCategory.Text);

        }

        public void insertDentStockist(string doctorId, TextBox supplierName, TextBox apgstRegNo, TextBox cstNo, TextBox tinNo,
           TextBox form20B, TextBox form21B, TextBox address, DropDownList city, DropDownList area, DropDownList state, TextBox zipCode, TextBox telephoneNo,
           TextBox faxNo, TextBox contactPerson, TextBox availablePerson, TextBox mobileNo,
     TextBox designation, TextBox department, TextBox website, TextBox email, TextBox totalProducts, DropDownList country)
        {

            inv.insertDentStockist(doctorId, supplierName.Text, apgstRegNo.Text, cstNo.Text, tinNo.Text, form20B.Text, form21B.Text, address.Text,
      Convert.ToInt32(city.SelectedItem.Value), Convert.ToInt32(area.SelectedItem.Value), Convert.ToInt32(state.SelectedItem.Value), zipCode.Text,
     telephoneNo.Text, faxNo.Text, contactPerson.Text, availablePerson.Text, mobileNo.Text,
       designation.Text, department.Text, website.Text, email.Text, totalProducts.Text, Convert.ToInt32(country.SelectedItem.Value));

        }
        
        public void UpdateDentStockist(Label id, string doctorId, TextBox supplierName, TextBox apgstRegNo, TextBox cstNo, TextBox tinNo,
          TextBox form20B, TextBox form21B, TextBox address, DropDownList city, DropDownList area, DropDownList state, TextBox zipCode, TextBox telephoneNo,
          TextBox faxNo, TextBox contactPerson, TextBox availablePerson, TextBox mobileNo,
    TextBox designation, TextBox department, TextBox website, TextBox email, TextBox totalProducts, DropDownList country)
        {

            inv.UpdateDentStockist(Convert.ToInt32(id.Text), doctorId, supplierName.Text, apgstRegNo.Text, cstNo.Text, tinNo.Text, form20B.Text, form21B.Text, address.Text,
      Convert.ToInt32(city.SelectedItem.Value), Convert.ToInt32(area.SelectedItem.Value), Convert.ToInt32(state.SelectedItem.Value), zipCode.Text,
     telephoneNo.Text, faxNo.Text, contactPerson.Text, availablePerson.Text, mobileNo.Text,
       designation.Text, department.Text, website.Text, email.Text, totalProducts.Text, Convert.ToInt32(country.SelectedItem.Value));

        }


        public DataTable getDentOpeningStockEntry()
        {

            DataTable dt = inv.getDentOpeningStockEntry();
            return dt;
        }
        public void deleteDentOpeningStockEntry(int id)
        {
            inv.deleteDentOpeningStockEntry(id);


        }
        public DataTable getDentProductCategory()
        {

            DataTable dt = inv.getDentProductCategory();
            return dt;
        }
        public void deleteDentProductCategory(int id)
        {
            inv.deleteDentProductCategory(id);


        }
        public DataTable getDentProductSubCategory()
        {

            DataTable dt = inv.getDentProductSubCategory();
            return dt;
        }


        public DataTable getDentPurchases()
        {
            DataTable dt = inv.getDentPurchases();
            return dt;

        }

        public void deleteDentProductSubCategory(int id)
        {
            inv.deleteDentProductSubCategory(id);


        }
        public DataTable getDentProducts()
        {

            DataTable dt = inv.getDentProducts();
            return dt;
        }


        public DataTable getDentStockist()
        {

            DataTable dt = inv.getDentStockist();
            return dt;
        }
        public void deleteDentProducts(int id)
        {
            inv.deleteDentProducts(id);


        }
        public void deleteDentPurchases(int id)
        {
            inv.deleteDentPurchases(id);
        }

        public void deleteDentStockist(int id)
        {
            inv.deleteDentStockist(id);
        }

       
        public DataTable getDentistStockStatus()
        {

            DataTable dt =inv. getDentistStockStatus();
            return dt;
        }



        public DataTable getDentistStockReturns()
        {

            DataTable dt = inv.getDentistStockReturns();
            return dt;
        }
        public DataTable getDentistExpiryProduct()
        {

            DataTable dt =inv. getDentistExpiryProduct();
            return dt;
        }


        public DataTable getDentistStockAdjustment()
        {

            DataTable dt = inv.getDentistStockAdjustment();
            return dt;
        }
        


        public void deleteDentistStockStatus(int id)
        {
            inv.deleteDentistStockStatus(id);



        }
        public void deleteDentistStockReturns(int id)
        {
            inv.deleteDentistStockReturns(id);

        }
        public void deleteDentistExpiryProduct(int id)
        {
            inv.deleteDentistExpiryProduct(id);



        }

        public void deleteDentistStockAdjustment(int id)
        {
            inv.deleteDentistStockAdjustment(id);



        }



    }
}
