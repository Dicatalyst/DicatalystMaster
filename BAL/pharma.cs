using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
    public class pharma
    {
        private readonly DAL.pharma ph = new DAL.pharma();

        //Financials

        public void insertPharmaFinancialYearSetup(string pharmaId, TextBox financialYear, TextBox patientRegistrationSNo)
        {
            ph.insertPharmaFinancialYearSetup(pharmaId, financialYear.Text, patientRegistrationSNo.Text);
        }

        public DataTable getPharmaFinancialYearSetup()
        {

            DataTable dt = ph.getPharmaFinancialYearSetup();
            return dt;
        }



        public void insertPharmaBankAccount(string pharmaId, TextBox bankName, TextBox accountNo)
        {
            ph.insertPharmaBankAccount(pharmaId, bankName.Text, accountNo.Text);
        }

        public DataTable getPharmaBankAccount()
        {

            DataTable dt = ph.getPharmaBankAccount();
            return dt;
        }



        public void insertPharmaTaxCategory(string pharmaId, TextBox taxName, TextBox TaxPercentage)
        {
            ph.insertPharmaTaxCategory(pharmaId, taxName.Text, TaxPercentage.Text);
        }

        public DataTable getPharmaTaxCategory()
        {

            DataTable dt = ph.getPharmaTaxCategory();
            return dt;
        }



        public void insertPharmaExpenses(string pharmaId, TextBox paidTo, TextBox paidBy, TextBox paidAmount, TextBox purposeRemarks)
        {
            ph.insertPharmaExpenses(pharmaId, paidTo.Text, paidBy.Text, Convert.ToInt32(paidAmount.Text), purposeRemarks.Text);
        }

        public DataTable getPharmaExpenses()
        {

            DataTable dt = ph.getPharmaExpenses();
            return dt;
        }



        //inventory
        
        public void insertPharmaOpeningStockEntry(string pharmaId, DropDownList department, TextBox financialYear, TextBox productName, TextBox category, TextBox code, TextBox batchNo, TextBox expiryDate, TextBox quantity, TextBox packSize, TextBox free, TextBox rackNo, TextBox gst, TextBox costPrice, TextBox mrp, TextBox salePrice, TextBox totalStock)
        {
            ph.insertPharmaOpeningStockEntry(pharmaId, Convert.ToString(department.SelectedItem.Value), financialYear.Text, productName.Text, category.Text, code.Text, batchNo.Text, Convert.ToDateTime(expiryDate.Text), quantity.Text, packSize.Text, free.Text, rackNo.Text, gst.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(mrp.Text), Convert.ToInt32(salePrice.Text), Convert.ToInt32(totalStock.Text));
        }
        
        public DataTable getPharmaOpeningStockEntry()
        {
            DataTable dt = ph.getPharmaOpeningStockEntry();
            return dt;
        }



        public void insertPharmaProducts(string pharmaId, TextBox productName, TextBox code, DropDownList packType, TextBox packing, DropDownList genericForm, DropDownList manufacturer,
            TextBox reOrderLevel, TextBox costPrice, TextBox salePrice, TextBox maximumReOrderLevel, TextBox packSize, TextBox taxCategory, RadioButtonList selectProduct, TextBox rackNo, TextBox mrp, TextBox schedule, DropDownList cst, TextBox discount)
        {
            ph.insertPharmaProducts(pharmaId, productName.Text, code.Text, packType.Text, packing.Text, Convert.ToString(genericForm.SelectedItem.Value), Convert.ToString(manufacturer.SelectedItem.Value), reOrderLevel.Text, Convert.ToInt32(costPrice.Text), Convert.ToInt32(salePrice.Text), maximumReOrderLevel.Text, packSize.Text, taxCategory.Text, selectProduct.Text, rackNo.Text, mrp.Text, schedule.Text, Convert.ToString(cst.SelectedItem.Value), Convert.ToInt32(discount.Text));
        }

        public DataTable getPharmaProducts()
        {

            DataTable dt = ph.getPharmaProducts();
            return dt;
        }


        public void insertPharmaProductCategory(string pharmaId, DropDownList code, TextBox productCategory)
        {

            ph.insertPharmaProductCategory(pharmaId, Convert.ToString(code.SelectedItem.Value), productCategory.Text);

        }

        public DataTable getPharmaProductCategory()
        {

            DataTable dt = ph.getPharmaProductCategory();
            return dt;
        }


        public void insertPharmaProductSubCategory(string pharmaId, TextBox selectCategory, TextBox productSubCategory)
        {

            ph.insertPharmaProductSubCategory(pharmaId, selectCategory.Text, productSubCategory.Text);

        }

        public DataTable getPharmaProductSubCategory()
        {

            DataTable dt = ph.getPharmaProductSubCategory();
            return dt;
        }

    }
}
