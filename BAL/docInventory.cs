using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
    public class DocInventory
    {
        private DAL.docInventory _inv = new DAL.docInventory();
        private DAL.randomUniqueNumber _ran = new DAL.randomUniqueNumber();

        public void InsertDocProducts(TextBox productName, TextBox code, DropDownList packType, TextBox packing, DropDownList genericForm, DropDownList manufacturer,
            TextBox reOrderLevel, TextBox costPrice, TextBox salePrice, TextBox maximumReOrderLevel, TextBox packSize, TextBox taxCategory, RadioButtonList selectProduct, TextBox rackNo, TextBox mrp, TextBox schedule,DropDownList cst,TextBox discount)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _inv.insertDocProducts(randomId, productName.Text, code.Text, packType.Text, packing.Text, genericForm.Text, manufacturer.Text, reOrderLevel.Text, Convert.ToInt32(costPrice.Text),Convert.ToInt32( salePrice.Text), maximumReOrderLevel.Text, packSize.Text, taxCategory.Text, selectProduct.Text, rackNo.Text, mrp.Text, schedule.Text, cst.Text, Convert.ToInt32(discount.Text));
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }


        public void InsertDocPurchases(TextBox purchaseBillNo, TextBox invoiceNo, TextBox suppiler, TextBox invoiceDate, TextBox recevingDate, TextBox department,
         TextBox financialYear, RadioButtonList selectPurchases, TextBox duePaidBillNo )
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _inv.insertDocPurchases(randomId, purchaseBillNo.Text, invoiceNo.Text, suppiler.Text, invoiceDate.Text, recevingDate.Text, department.Text, Convert.ToInt32(financialYear.Text), selectPurchases.Text, duePaidBillNo.Text);
            
        }
        public void InsertdocProductCategory(DropDownList code, TextBox productCategory)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _inv.insertdocProductCategory(randomId, code.Text, productCategory.Text);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }
        public void InsertdocProductSubCategory(TextBox selectCategory, TextBox productSubCategory)
        {
            string randomId = _ran.getRandomUniqueNumber();
            int userId = _inv.insertdocProductSubCategory(randomId, selectCategory.Text, productSubCategory.Text);
            //string uniqueUserID = usersbal.getUniqueRandomIdbyUserId(userId);
            //return uniqueUserID;
        }
        public DataTable GetdocProductCategory()
        {

            DataTable dt = _inv.getdocProductCategory();
            return dt;
        }
        public void DeleteDocProductCategory(int id)
        {
            _inv.deleteDocProductCategory(id);


        }
        public DataTable GetdocProductSubCategory()
        {

            DataTable dt = _inv.getdocProductSubCategory();
            return dt;
        }
        public void DeleteDocProductSubCategory(int id)
        {
            _inv.deleteDocProductSubCategory(id);


        }
        public DataTable GetdocProducts()
        {

            DataTable dt = _inv.getdocProducts();
            return dt;
        }
        public void DeleteDocProducts(int id)
        {
            _inv.deleteDocProducts(id);


        }
    }
}
