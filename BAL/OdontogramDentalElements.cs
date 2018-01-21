using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
   public class OdontogramDentalElements
    {
       private readonly DAL.OdontogramDentalElements dental = new DAL.OdontogramDentalElements();

       public void insertDentalExamElement(DropDownList dentalExamId, TextBox dentalExamElement)
        {
            dental.insertDentalExamElement(Convert.ToInt32(dentalExamId.SelectedItem.Value), dentalExamElement.Text);
        }

       public void insertDentalExamName(TextBox dentalExaminationName)
        {
            dental.insertDentalExamName(dentalExaminationName.Text);
        }
     
       public void insertDentalElement(string  toothNo, int examinationId, int examinationelementId, TextBox comments, string doctorId, string patientId)
        {

            //dentEle.insertDentalElement((toothNo ,examinationId ,examinationelementId ,comments.Text ,doctorId ,patientId ,Convert.ToDateTime(datetime.Now));
        }

       public void insertodontogramDentalExamination(string toothNo, string examinationName, int examId, string comments, string doctorId, string patientId)
       {
           dental.insertodontogramDentalExamination(toothNo, examinationName, examId, comments, doctorId, patientId);

       }



        public void getDentalExamNameToDropDown(DropDownList ddlDentalExamName)
        {
            ddlDentalExamName.DataSource = dental.getDentalExamName();
            ddlDentalExamName.DataTextField = "dentalExaminationName";
            ddlDentalExamName.DataValueField = "id";
            ddlDentalExamName.DataBind();
            ddlDentalExamName.Items.Insert(0, new ListItem("--Select DentalExam Name--", "0"));
        }

        public DataTable getDentalExamName()
        {

            DataTable dt = dental.getDentalExamName();
            return dt;
        }
        public DataTable getDentalExamElements()
        {

            DataTable dt = dental.getDentalExamElements();
            return dt;
        }

        public void deleteDentalExamName(int id)
        {
            dental.deleteDentalExamName(id);


        }
        public void deleteDentalExamElements(int id)
        {
            dental.deleteDentalExamElements(id);


        }
    }
}
