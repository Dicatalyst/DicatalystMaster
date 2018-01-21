using System;
using System.Web.UI;

public partial class Dentist_financial : MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
        if (currentPage.Contains("FinancialYearSetUp"))
            financialYearSetup.Attributes.Add("class", "btn btnActive");
        else if (currentPage.Contains("BankAccount"))
            bankAccounts.Attributes.Add("class", "btn btnActive");
        else if (currentPage.Contains("Taxcaterory"))
            taxCategory.Attributes.Add("class", "btn btnActive");
        else if (currentPage.Contains("Expenses"))
            expenses.Attributes.Add("class", "btn btnActive");
        else if (currentPage.Contains("PatientAccount"))
            patientAccount.Attributes.Add("class", "btn btnActive");
        else if (currentPage.Contains("BillRegistar"))
            billRegister.Attributes.Add("class", "btn btnActive");

    }
}