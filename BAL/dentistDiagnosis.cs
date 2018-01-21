using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace BAL
{
   public class dentistDiagnosis
    {
       private readonly DAL.dentistDiagnosis medical = new DAL.dentistDiagnosis();
       public void insertMedicalHistory(int questionId, RadioButtonList answer, string qusComments, string patientId)
       {

          medical.insertMedicalHistory(questionId, answer.SelectedValue, qusComments, patientId);
           //string uniqueUserId = medical.getUniqueRandomIdbyUserId(userId);
           //return uniqueUserId;
       }



     
       public void insertTreatmentPlan(string patientId, string doctorId, TextBox toothNo, TextBox treatmentAdvice, TextBox duration, TextBox fee, TextBox discount, TextBox amount, TextBox notestoReceptionist)
       {

           medical.insertTreatmentPlan(patientId, doctorId, Convert.ToInt32(toothNo.Text), treatmentAdvice.Text, Convert.ToInt32(duration.Text), Convert.ToInt32(fee.Text), discount.Text, Convert.ToInt32(amount.Text), notestoReceptionist.Text);
          
       }



       public void insertTPNotes(string patientId, string doctorId, TextBox startDate, TextBox toothNo, TextBox treatment, TextBox fee, TextBox discount, TextBox amount, TextBox nextVisitedDate, TextBox notestoReceptionist)
       {
           medical.insertTPNotes(patientId, doctorId, startDate.Text, Convert.ToInt32(toothNo.Text), treatment.Text, Convert.ToInt32(fee.Text), discount.Text, Convert.ToInt32(amount.Text),nextVisitedDate.Text, notestoReceptionist.Text);

          
          
       }





       public void insertMedia(string patientId, string doctorId, TextBox date, TextBox description, string serverPath)
       {
           medical.insertMedia(patientId, doctorId, Convert.ToDateTime(date.Text),description.Text, serverPath);



       }

       public void MedicalReports(string patientId, string doctorId, DateTime date, string serverPath)
       {
           medical.MedicalReports(patientId, doctorId, date, serverPath);



       }
       


       public void insertInvestigation(string patientId, string doctorId, TextBox investigationCode, TextBox investigationName)
       {

           medical.insertInvestigation(patientId, doctorId, investigationCode.Text, investigationName.Text);



       }


       public void insertBasicInfoClinicalHistory(string doctorId, string patientId, TextBox weight, TextBox bp, TextBox temperature, TextBox pulse, TextBox oralHabits, TextBox currentMedications, TextBox allergies)
       {

           medical.insertBasicInfoClinicalHistory(doctorId, patientId, weight.Text, bp.Text, temperature.Text, pulse.Text, oralHabits.Text, currentMedications.Text, allergies.Text);
       }


       public void insertIntraOralExamination(int basicClinicalHistoryId,TextBox txtPharynx,TextBox txtTonsils,TextBox txtSoftPalate,TextBox txtHardPalate,TextBox txtTongue,TextBox txtFloorOfMouth,TextBox txtBuccalMucosa,
           TextBox txtLipsSkin, RadioButtonList radOral, RadioButtonList radCalculus, RadioButtonList radPlaque, RadioButtonList radCervical, RadioButtonList radBleeding, TextBox bleedingOnProbingComments, RadioButtonList radpalpable,
           TextBox txtPalpableLymphNodeComment, string chktmj, string chkright, string chkleft, TextBox txtMuscles, string chkdeviation, string doctorId, string patientId)
       {

           medical.insertIntraOralExamination(basicClinicalHistoryId, txtPharynx.Text, txtTonsils.Text, txtSoftPalate.Text, txtHardPalate.Text, txtTongue.Text, txtFloorOfMouth.Text, txtBuccalMucosa.Text,
           txtLipsSkin.Text, Convert.ToInt32(radOral.SelectedValue), Convert.ToInt32(radCalculus.SelectedValue), Convert.ToInt32(radPlaque.SelectedValue), Convert.ToInt32(radCervical.SelectedValue),
           Convert.ToInt32(radBleeding.SelectedValue), bleedingOnProbingComments.Text, Convert.ToInt32(radpalpable.SelectedValue), txtPalpableLymphNodeComment.Text, 
           chktmj, chkright, chkleft, txtMuscles.Text, chkdeviation, doctorId, patientId);
       }



       public void insertExtraOralExaminationClinicalHistory(string txtTooth, DateTime txtDatePlaced, string txtcondition3, string doctorId, string patientId)
       {

           medical.insertExtraOralExaminationClinicalHistory(txtTooth,txtDatePlaced,txtcondition3,doctorId,patientId);
       }


       public void insertXrayDetails(string doctorId, string patientId, TextBox xrayPurpose, TextBox xrayDate, TextBox doctorName, TextBox mobileNo, DropDownList xrayType, string serverPath)
       {
           medical.insertXrayDetails(doctorId, patientId, xrayPurpose.Text, Convert.ToDateTime(xrayDate.Text), doctorName.Text, mobileNo.Text, Convert.ToString(xrayType.SelectedItem.Value), serverPath);
       }

      
       public void insertDiagnosisPrognosis(string doctorId, string patientId, Label txtToothNo,Label txtExaminationName, TextBox txtDescription, DropDownList ddlPrognosis, TextBox txtAdditionalNotes, TextBox dateTime)
       {
           medical.insertDiagnosisPrognosis(doctorId, patientId, txtToothNo.Text, txtExaminationName.Text, txtDescription.Text, ddlPrognosis.SelectedItem.Text, txtAdditionalNotes.Text, Convert.ToDateTime(dateTime.Text));
       }

       public void insertAccounts(string doctorId, string patientId, TextBox treatmentName, TextBox fee, TextBox paid, TextBox due, TextBox discount, TextBox totalAmount)
       {
           medical.insertAccounts(doctorId, patientId, treatmentName.Text, Convert.ToInt32(fee.Text), Convert.ToInt32(paid.Text), Convert.ToInt32(due.Text), discount.Text, Convert.ToInt32(totalAmount.Text));
       }


       public DataTable getMedicalHistory( string patientId)
        {

            DataTable dt = medical.getMedicalHistory(patientId);
            return dt;
        }

       public DataTable getDiagnosisPrognosis(string doctorId,string patientId)
       {

           DataTable dt = medical.getDiagnosisPrognosis(doctorId, patientId);
           return dt;
       }

       public void deleteDiagnosisPrognosis(int id)
       {
           medical.deleteDiagnosisPrognosis(id);



       }

       public DataTable getAccounts(string doctorId, string patientId, string dueamount, string invoiceId)
       {

           DataTable dt = medical.getAccounts(doctorId, patientId, dueamount,invoiceId);
           return dt;
       }

       public DataTable getAccountsForPatients( string patientId, string dueamount)
       {

           DataTable dt = medical.getAccountsForPatients( patientId, dueamount);
           return dt;
       }
       

       public void deleteAccounts(int id)
       {
           medical.deleteAccounts(id);



       }

       public DataTable getClinicalHistory(string doctorId, string patientId)
        {

            DataTable dt = medical.getClinicalHistory(doctorId,patientId);
            return dt;
        }

        

       public DataTable getTreatmentPlan(string doctorId,string patientId)
        {

            DataTable dt = medical.getTreatmentPlan(doctorId,patientId);
            return dt;
        }

       public DataTable getTPNotes(string doctorId, string patientId)
        {

            DataTable dt = medical.getTPNotes(doctorId,patientId);
            return dt;
        }
       
       public void deleteTreatmentPlan(int id)
        {
            medical.deleteTreatmentPlan(id);


        }

       public DataTable getMedia(string doctorId, string patientId)
       {

           DataTable dt = medical.getMedia(doctorId,patientId);
           return dt;
       }

       public void deleteMedia(int id)
       {
           medical.deleteMedia(id);


       }


       public void deleteTPNotes(int id)
       {
           medical.deleteTPNotes(id);


       }


       public DataTable getInvestigation(string doctorId, string patientId)
       {

           DataTable dt = medical.getInvestigation(doctorId,patientId);
           return dt;
       }

       public DataTable getInvestigationforPatient(string patientId)
       {

           DataTable dt = medical.getInvestigationforPatient(patientId);
           return dt;
       }


       public void deleteInvestigation(int id)
       {
           medical.deleteInvestigation(id);


       }

       
       
    }



}
