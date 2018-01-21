using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
    public class labInventory
    
    {
        private readonly DAL.labInventory lab = new DAL.labInventory();
        public void insertLabStockStatus(string labId, DropDownList reportType, TextBox fieldValue, TextBox searchBy, TextBox productCategory)
        {

            lab.insertLabStockStatus(labId, Convert.ToString(reportType.SelectedItem.Value), fieldValue.Text, searchBy.Text, productCategory.Text);


        }


        public void insertLabStockReturns(string labId, TextBox financialYear, TextBox department, TextBox returnType, TextBox purchaseBillNo, TextBox adjustedPurchaseBillNo,
        TextBox totalAmount, TextBox discountReturn, TextBox discountReturnAmount, TextBox totalTax, TextBox netAmount, TextBox totalCostPrice)
        {

            lab.insertLabStockReturns(labId, financialYear.Text, department.Text, returnType
                .Text, purchaseBillNo.Text, adjustedPurchaseBillNo.Text, Convert.ToInt32(totalAmount.Text), discountReturn.Text, Convert.ToInt32(discountReturnAmount.Text), totalTax.Text, Convert.ToInt32(netAmount.Text), Convert.ToInt32(totalCostPrice.Text));


        }


        public void insertLabExpiryProduct(string labId, DropDownList searchBy, TextBox fieldValue)
        {

            lab.insertLabExpiryProduct(labId, Convert.ToString(searchBy.SelectedItem.Value), fieldValue.Text);


        }




        public void insertLabStockAdjustment(string labId, DropDownList productCategory, DropDownList searchBy, TextBox fieldValue)
        {

            lab.insertLabStockAdjustment(labId, Convert.ToString(productCategory.SelectedItem.Value), Convert.ToString(searchBy.SelectedItem.Value), fieldValue.Text);


        }




        public void insertLabOpeningStockEntry(string labId, DropDownList department, TextBox financialYear, TextBox productName, TextBox category, TextBox code, TextBox batchNo, TextBox expiryDate, TextBox quantity, TextBox packSize, TextBox free, TextBox rackNo, TextBox gst, TextBox costPrice, TextBox mrp, TextBox salePrice, TextBox totalStock)
        {
            lab.insertLabOpeningStockEntry(labId, Convert.ToString(department.SelectedItem.Value), financialYear.Text, productName.Text, category.Text, code.Text, batchNo.Text, Convert.ToDateTime(expiryDate.Text), quantity.Text, packSize.Text, free.Text, rackNo.Text, gst.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(mrp.Text), Convert.ToInt32(salePrice.Text), Convert.ToInt32(totalStock.Text));
        }
        public void insertLabProducts(string labId, TextBox productName, TextBox code, DropDownList packType, TextBox packing, DropDownList genericForm, DropDownList manufacturer,
            TextBox reOrderLevel, TextBox costPrice, TextBox salePrice, TextBox maximumReOrderLevel, TextBox packSize, TextBox taxCategory, RadioButtonList selectProduct, TextBox rackNo, TextBox mrp, TextBox schedule, DropDownList cst, TextBox discount)
        {
            lab.insertLabProducts(labId, productName.Text, code.Text, packType.Text, packing.Text, Convert.ToString(genericForm.SelectedItem.Value), Convert.ToString(manufacturer.SelectedItem.Value), reOrderLevel.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(salePrice.Text), maximumReOrderLevel.Text, packSize.Text, taxCategory.Text, selectProduct.Text, rackNo.Text, mrp.Text, schedule.Text, Convert.ToString(cst.SelectedItem.Value), discount.Text);
        }


        public void insertLabPurchases(string labId, TextBox purchaseBillNo, TextBox invoiceNo, TextBox supplier, TextBox invoiceDate, TextBox receivingDate, TextBox department,
        TextBox financialYear, RadioButtonList selectPurchases, TextBox duePaidBillNo)
        {

            lab.insertLabPurchases(labId, purchaseBillNo.Text, invoiceNo.Text, supplier.Text, invoiceDate.Text, receivingDate.Text, department.Text, financialYear.Text, selectPurchases.Text, duePaidBillNo.Text);

        }
        public void insertLabProductCategory(string labId, DropDownList code, TextBox productCategory)
        {

            lab.insertLabProductCategory(labId, Convert.ToString(code.SelectedItem.Value), productCategory.Text);

        }


        public void insertLabProductSubCategory(string labId, TextBox selectCategory, TextBox productSubCategory)
        {

            lab.insertLabProductSubCategory(labId, selectCategory.Text, productSubCategory.Text);

        }

        public void insertLabStockist(string labId, TextBox supplierName, TextBox apgstRegNo, TextBox cstNo, TextBox tinNo,
           TextBox form20B, TextBox form21B, TextBox address, DropDownList city, DropDownList area, DropDownList state, TextBox zipCode, TextBox telephoneNo,
           TextBox faxNo, TextBox contactPerson, TextBox availablePerson, TextBox mobileNo,
     TextBox designation, TextBox department, TextBox website, TextBox email, TextBox totalProducts, DropDownList country)
        {

            lab.insertLabStockist(labId, supplierName.Text, apgstRegNo.Text, cstNo.Text, tinNo.Text, form20B.Text, form21B.Text, address.Text,
      Convert.ToInt32(city.SelectedItem.Value), Convert.ToInt32(area.SelectedItem.Value), Convert.ToInt32(state.SelectedItem.Value), zipCode.Text,
     telephoneNo.Text, faxNo.Text, contactPerson.Text, availablePerson.Text, mobileNo.Text,
       designation.Text, department.Text, website.Text, email.Text, totalProducts.Text, Convert.ToInt32(country.SelectedItem.Value));

        }



        public DataTable getLabOpeningStockEntry()
        {

            DataTable dt = lab.getLabOpeningStockEntry();
            return dt;
        }
        
        public DataTable getLabProducts()
        {

            DataTable dt = lab.getLabProducts();
            return dt;
        }


        public DataTable getLabProductCategory()
        {

            DataTable dt = lab.getLabProductCategory();
            return dt;
        }
        public DataTable getLabProductSubCategory()
        {

            DataTable dt = lab.getLabProductSubCategory();
            return dt;
        }

        public DataTable getLabPurchases()
        {
            DataTable dt = lab.getLabPurchases();
            return dt;

        }


        public DataTable getLabExpiryProduct()
        {

            DataTable dt = lab.getLabExpiryProduct();
            return dt;
        }

        public DataTable getLabStockist()
        {

            DataTable dt = lab.getLabStockist();
            return dt;
        }
        


        public DataTable getLabStockStatus()
        {

            DataTable dt = lab.getLabStockStatus();
            return dt;
        }



        public DataTable getLabStockReturns()
        {

            DataTable dt = lab.getLabStockReturns();
            return dt;
        }
       


        public DataTable getLabStockAdjustment()
        {

            DataTable dt = lab.getLabStockAdjustment();
            return dt;
        }

     

    }

}
