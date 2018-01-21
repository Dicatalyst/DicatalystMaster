using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
    
   public class manageLabInvestigations
    {
       private readonly DAL.manageLabInvestigations labInv = new DAL.manageLabInvestigations();

       public void insertLabInvestigationProfile(TextBox investigationProfileName)
       {

           int userId = labInv.insertLabInvestigationProfile(investigationProfileName.Text);
          
       }
       public void insertLabTest(TextBox testName, DropDownList specimen, TextBox conventionalUnit, TextBox siUnit, RadioButtonList gender)
       {

           int userId = labInv.insertLabTest(testName.Text, specimen.Text, conventionalUnit.Text, siUnit.Text, gender.Text);

       }
       public void insertLabSpecimen(TextBox specimenName,TextBox description)
       {

           int userId = labInv.insertLabSpecimen(specimenName.Text, description.Text);

       }
       public void insertLabConventionalUnits(TextBox agent, TextBox conventionalUnit, TextBox conversionFactor,TextBox siUnit)
       {

           int userId = labInv.insertLabConventionalUnits(agent.Text, conventionalUnit.Text, conversionFactor.Text, siUnit.Text);

       }
       public DataTable getLabInvestigationProfile()
       {

           DataTable dt = labInv.getLabInvestigationProfile();
           return dt;
       }
       public DataTable getLabTest()
       {

           DataTable dt = labInv.getLabTest();
           return dt;
       }
        public DataTable getLabSpecimen()
       {

           DataTable dt = labInv.getLabSpecimen();
           return dt;
       }
        public DataTable getLabConventionalUnits()
       {

           DataTable dt = labInv.getLabConventionalUnits();
           return dt;
       }
        public void deleteLabInvestigationProfile(int id)
        {
            labInv.deleteLabInvestigationProfile(id);


        }
        public void deleteLabTest(int id)
        {
            labInv.deleteLabTest(id);


        }
        public void deleteLabSpecimen(int id)
        {
            labInv.deleteLabSpecimen(id);


        }
        public void deleteLabConventionalSIUnits(int id)
        {
            labInv.deleteLabConventionalSIUnits(id);


        }
    }
}
