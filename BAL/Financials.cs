using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;
namespace BAL
{
    public class Financials
    {

        private readonly DAL.Financials fin = new DAL.Financials();

        public void insertFinancialYearSetup(string doctorId, TextBox financialYear, TextBox patientRegistrationSNo, TextBox expiryBillNo, TextBox purchaseBillNo, TextBox purchaseReturnsBillNo, TextBox sampleCollBillNo)
        {
            fin.insertFinancialYearSetup(doctorId,financialYear.Text, patientRegistrationSNo.Text, expiryBillNo.Text, purchaseBillNo.Text, purchaseReturnsBillNo.Text, sampleCollBillNo.Text);
        }
        //todo Ravi finUpdate
        public void UpdateFinancialYearSetup(Label id, string doctorId, TextBox financialYear, TextBox patientRegistrationSNo, TextBox expiryBillNo, TextBox purchaseBillNo, TextBox purchaseReturnsBillNo, TextBox sampleCollBillNo)
        {
            fin.UpdateFinancialYearSetup(Convert.ToInt32(id.Text), doctorId, financialYear.Text, patientRegistrationSNo.Text, expiryBillNo.Text, purchaseBillNo.Text, purchaseReturnsBillNo.Text, sampleCollBillNo.Text);
        }
        public DataTable getFinancialYearSetup()
        {

            DataTable dt = fin.getFinancialYearSetup();
            return dt;
        }
        
        public void deleteFinancialYearSetup(int id)
        {
            fin.deleteFinancialYearSetup(id);
            
        }

        
        
        public void insertBankAccount(string doctorId, TextBox bankName, TextBox accountNo)
        {
            fin.insertBankAccount(doctorId, bankName.Text, accountNo.Text);
        }
        //todo Ravi BankUpdate
        public void UpdateBankAccount(Label id,string doctorId, TextBox bankName, TextBox accountNo)
        {
            fin.UpdateBankAccount(Convert.ToInt32(id.Text), doctorId, bankName.Text, accountNo.Text);
        }

        public DataTable getBankAccount()
        {

            DataTable dt = fin.getBankAccount();
            return dt;
        }

        public void deleteBankAccount(int id)
        {
            fin.deleteBankAccount(id);

        }


        
        public void insertExpenses(string doctorId, TextBox paidTo, TextBox paidBy,TextBox paidAmount,TextBox purposeRemarks)
        {
            fin.insertExpenses(doctorId, paidTo.Text, paidBy.Text,Convert.ToInt32(paidAmount.Text), purposeRemarks.Text);
        }
        //todo Ravi ExpensesUpdate
        public void UpdateExpenses(Label id, string doctorId, TextBox paidTo, TextBox paidBy, TextBox paidAmount, TextBox purposeRemarks)
        {
            fin.UpdateExpenses(Convert.ToInt32(id.Text), doctorId, paidTo.Text, paidBy.Text, Convert.ToInt32(paidAmount.Text), purposeRemarks.Text);
        }
        public DataTable getExpenses()
        {

            DataTable dt = fin.getExpenses();
            return dt;
        }

        public void deleteExpenses(int id)
        {
            fin.deleteExpenses(id);

        }



        public void insertTaxCategory(string doctorId, TextBox taxName, TextBox TaxPercentage)
        {
            fin.insertTaxCategory(doctorId, taxName.Text, TaxPercentage.Text);
        }

        public void UpdateTaxCategory(Label id, string doctorId, TextBox taxName, TextBox TaxPercentage)
        {
            fin.UpdateTaxCategory(Convert.ToInt32(id.Text), doctorId, taxName.Text, TaxPercentage.Text);
        }

        public DataTable getTaxCategory()
        {

            DataTable dt = fin.getTaxCategory();
            return dt;
        }

        public void deleteTaxCategory(int id)
        {
            fin.deleteTaxCategory(id);

        }


        public DataTable getPatients()
        {

            DataTable dt = fin.getPatients();
            return dt;
        }
        public DataTable GetPatientsinfo(string doctorId)
        {

            DataTable dt = fin.GetPatientsinfo(doctorId);
            return dt;
        }

        public DataTable GetPatientsBillinfo(string doctorId)
        {

            DataTable dt = fin.GetPatientsBillinfo(doctorId);
            return dt;
        }



        //lab
        public void insertLabFinancialYearSetup(string labId, TextBox financialYear, TextBox patientRegistrationSNo, TextBox expiryBillNo, TextBox purchaseBillNo, TextBox purchaseReturnsBillNo )
        {
            fin.insertLabFinancialYearSetup(labId, financialYear.Text, patientRegistrationSNo.Text, expiryBillNo.Text, purchaseBillNo.Text, purchaseReturnsBillNo.Text );
        }

        public DataTable getLabFinancialYearSetup()
        {

            DataTable dt = fin.getLabFinancialYearSetup();
            return dt;
        }

        public void insertLabBankAccount(string labId, TextBox bankName, TextBox accountNo)
        {
            fin.insertLabBankAccount(labId, bankName.Text, accountNo.Text);
        }
        public DataTable getLabBankAccount()
        {

            DataTable dt = fin.getLabBankAccount();
            return dt;
        }
        public void insertLabTaxCategory(string labId, TextBox taxName, TextBox TaxPercentage)
        {
            fin.insertLabTaxCategory(labId, taxName.Text, TaxPercentage.Text);
        }

        public DataTable getLabTaxCategory()
        {

            DataTable dt = fin.getLabTaxCategory();
            return dt;
        }
        public void insertLabExpenses(string labId, TextBox paidTo, TextBox paidBy, TextBox paidAmount, TextBox purposeRemarks)
        {
            fin.insertLabExpenses(labId, paidTo.Text, paidBy.Text,Convert.ToInt32(paidAmount.Text) , purposeRemarks.Text);
        }

        public DataTable getlabExpenses()
        {

            DataTable dt = fin.getLabExpenses();
            return dt;
        }
        public void insertLabDueCollections(string labId,
            TextBox billNo ,
            TextBox finanacialYear ,
            TextBox registrationNo ,
            TextBox branch ,
            TextBox payMode ,
            TextBox patientName ,
            TextBox registrationDate ,
            TextBox dueAmount,
            TextBox towards,
            TextBox paidAmount ,
            TextBox customerPaid,
            TextBox returnsToCustomer,
            TextBox remarks,
            TextBox paidBy,
            TextBox discount, 
            TextBox currentDueAmount ,
            TextBox chequeNo, 
            TextBox chequeDetails)
        {
            fin.insertLabDueCollections(labId, 
                billNo.Text,
                finanacialYear.Text,
                registrationNo.Text,
                branch.Text,
                payMode.Text,
                patientName.Text,
                Convert.ToDateTime(registrationDate.Text),
                dueAmount.Text,
                towards.Text,
                paidAmount.Text,
                customerPaid.Text,
                returnsToCustomer.Text,
                remarks.Text,
                paidBy.Text,
                discount.Text,
                currentDueAmount.Text,
                chequeNo.Text ,
                chequeDetails.Text);
        }
    }



    }

