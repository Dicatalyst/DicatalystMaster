using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class dentistDiagnosis
    {
        private SqlCommand cmd;
        private DataSet ds;
        private DAL.Connections dac = new Connections();

        public void insertMedicalHistory(int questionId, string answer, string qusComments, string patientId)
        {

            cmd = dac.GetCommand("sp_insertMedicalHistory");
            SqlParameter[] par = {
                                                                     
                                     new SqlParameter("@questionId", questionId),
                                     new SqlParameter("@answer", answer),
                                        new SqlParameter("@qusComments", qusComments),
                                            new SqlParameter("@patientId", patientId)

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();



        }




        public void insertTreatmentPlan(string patientId, string doctorId, int toothNo, string treatmentAdvice, int duration, int fee, string discount, int amount, string notestoReceptionist)
        {

            cmd = dac.GetCommand("sp_insertTreatmentPlan");
            SqlParameter[] par = {
                                           new SqlParameter("@patientId", patientId),
                                               new SqlParameter("@doctorId", doctorId),
                             
                                     new SqlParameter("@toothNo", toothNo),
                                     new SqlParameter("@treatmentAdvice", treatmentAdvice),
                                        new SqlParameter("@duration", duration),
                                         new SqlParameter("@fee", fee),
                                         
                                           new SqlParameter("@discount", discount),
                                     new SqlParameter("@amount", amount),
                                        new SqlParameter("@notestoReceptionist", notestoReceptionist),
                                        
                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }




        public void insertMedia(string patientId, string doctorId, DateTime date, string description, string uploadFile)
        {

            cmd = dac.GetCommand("sp_insertMedia");
            SqlParameter[] par = {
                                           new SqlParameter("@patientId", patientId),
                                               new SqlParameter("@doctorId", doctorId),
                                                 new SqlParameter("@date", date),                             
                                     new SqlParameter("@description", description),
                                     new SqlParameter("@uploadFile", uploadFile),
                                                                          
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();



        }

        public void MedicalReports(string patientId, string doctorId, DateTime date, string serverPath)
        {

            cmd = dac.GetCommand("sp_insertMedicalReports");
            SqlParameter[] par = {
                                           new SqlParameter("@patientId", patientId),
                                               new SqlParameter("@doctorId", doctorId),
                                                 new SqlParameter("@date", date),
                                     new SqlParameter("@uploadFile", serverPath)
                                                                          
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();



        }



        public void insertTPNotes(string patientId, string doctorId, string startDate, int toothNo, string treatment, int fee, string discount, int amount, string nextVisitedDate, string notestoReceptionist)
        {

            cmd = dac.GetCommand("sp_insertTPNotes");
            SqlParameter[] par = {
                               new SqlParameter("@patientId", patientId),
                               new SqlParameter("@doctorId", doctorId),
                               new SqlParameter("@startDate", startDate),
                                     new SqlParameter("@toothNo", toothNo),
                                     new SqlParameter("@treatment", treatment),                                      
                                         new SqlParameter("@fee", fee),                                         
                                           new SqlParameter("@discount", discount),
                                     new SqlParameter("@amount", amount),
                                        new SqlParameter("@nextVisitedDate", nextVisitedDate),                                     
                                        new SqlParameter("@notestoReceptionist", notestoReceptionist),
                                        
                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();



        }



        public void insertInvestigation(string patientId, string doctorId, string investigationCode, string investigationName)
        {

            cmd = dac.GetCommand("sp_insertInvestigation");
            SqlParameter[] par = {
                                           new SqlParameter("@patientId", patientId),
                                               new SqlParameter("@doctorId", doctorId),
                               new SqlParameter("@investigationCode", investigationCode),
                                     new SqlParameter("@investigationName", investigationName),
                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();



        }

        public void insertBasicInfoClinicalHistory(string doctorId, string patientId, string weight, string bp, string temperature, string pulse, string oralHabits, string currentMedications, string allergies)
        {
            cmd = dac.GetCommand("sp_insertBasicInfoClinicalHistory");
            SqlParameter[] par = {
                                        new SqlParameter("@doctorId", doctorId),       
                                     new SqlParameter("@patientId", patientId), 
     new SqlParameter("@weight", weight),  
     new SqlParameter("@bp", bp) ,
     new SqlParameter("@temperature", temperature)  ,     
     new SqlParameter("@pulse", pulse),
    new SqlParameter("@oralHabits", oralHabits)  ,
     new SqlParameter("@currentMedications", currentMedications),  
       new SqlParameter("@allergies", allergies)
            };
            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();
        }

        public void insertIntraOralExamination(int basicClinicalHistoryId, string txtPharynx, string txtTonsils, string txtSoftPalate, string txtHardPalate, string txtTongue, string txtFloorOfMouth, string txtBuccalMucosa,
           string txtLipsSkin, int radOral, int radCalculus, int radPlaque, int radCervical, int radBleeding, string bleedingOnProbingComments, int radpalpable,
           string txtPalpableLymphNodeComment, string chktmj, string chkright, string chkleft, string txtMuscles, string chkdeviation, string doctorId, string patientId)
        {


            cmd = dac.GetCommand("sp_insertIntraOralExamination");
            SqlParameter[] par = {

     new SqlParameter("@basicClinicalHistoryId", basicClinicalHistoryId),       
     new SqlParameter("@pharynx", txtPharynx),
     new SqlParameter("@tonsils", txtTonsils),  
     new SqlParameter("@softPalate", txtSoftPalate),
     new SqlParameter("@hardPalate", txtHardPalate),     
     new SqlParameter("@tongue", txtTongue),
     new SqlParameter("@floorOfMouth", txtFloorOfMouth),
     new SqlParameter("@buccalMucosa", txtBuccalMucosa),
     new SqlParameter("@lipsSkin", txtLipsSkin),       
     new SqlParameter("@oralHygiene", radOral),                                    
     new SqlParameter("@calculus", radCalculus),  
     new SqlParameter("@plaque", radPlaque),
     new SqlParameter("@cervicalBleeding", radCervical),
     new SqlParameter("@bleedingOnProbing", radBleeding),
     new SqlParameter("@bleedingOnProbingComments",bleedingOnProbingComments),
     new SqlParameter("@palpable", radpalpable),
     new SqlParameter("@palpableComments", txtPalpableLymphNodeComment),
     new SqlParameter("@tmj", chktmj),
     new SqlParameter("@tdpRight", chkright),
     new SqlParameter("@tdpLeft", chkleft),
     new SqlParameter("@tdpMuscles", txtMuscles),
     new SqlParameter("@tdpDOC", chkdeviation),
     new SqlParameter("@doctorId", doctorId),
     new SqlParameter("@patientId", patientId)
                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }


            dac.EnsureOpen();

            cmd.ExecuteNonQuery();

            dac.Close();


        }





        public void insertExtraOralExaminationClinicalHistory(string txtTooth, DateTime txtDatePlaced, string txtcondition3, string doctorId, string patientId)
        {

            cmd = dac.GetCommand("sp_insertExtraOralExaminationClinicalHistory");
            SqlParameter[] par = {
                                        new SqlParameter("@toothNumber", txtTooth),       
                                     new SqlParameter("@dateplace", txtDatePlaced),
     new SqlParameter("@condition", txtcondition3),  
     new SqlParameter("@doctorId", doctorId),
     new SqlParameter("@patientId", patientId)

                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }


            dac.EnsureOpen();

            cmd.ExecuteNonQuery();

            dac.Close();

        }



        public void insertXrayDetails(string doctorId, string patientId, string xrayPurpose, DateTime xrayDate, string doctorName, string mobileNo, string xrayType, string xrayFile)
        {

            cmd = dac.GetCommand("sp_insertXrayDetails");
            SqlParameter[] par = {
                                        new SqlParameter("@doctorId", doctorId),       
                                     new SqlParameter("@patientId", patientId),                                    
                                     
     new SqlParameter("@xrayPurpose", xrayPurpose),  
     new SqlParameter("@xrayDate", xrayDate) ,
    
     
     new SqlParameter("@doctorName", doctorName),
    new SqlParameter("@mobileNo", mobileNo)  ,
     new SqlParameter("@xrayType", xrayType),  
       new SqlParameter("@xrayFile", xrayFile)
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }


            dac.EnsureOpen();

            cmd.ExecuteNonQuery();

            dac.Close();
        }

        public void insertDiagnosisPrognosis(string doctorId, string patientId, string txtToothNo, string txtExaminationName, string txtDescription, string ddlPrognosis, string txtAdditionalNotes, DateTime dateTime)
        {
            cmd = dac.GetCommand("[sp_updateDiagnosisPrognosis]");
            SqlParameter[] par = {
                                        new SqlParameter("@doctorId", doctorId),       
                                     new SqlParameter("@patientId", patientId),                                    
                                     
     new SqlParameter("@toothNo", txtToothNo),  
     new SqlParameter("@description", txtDescription) ,
     new SqlParameter("@dateTime", dateTime)  ,
  
     
     new SqlParameter("@prognosis", ddlPrognosis),
    new SqlParameter("@additionalNotes", txtAdditionalNotes),
     new SqlParameter("@examinationName", txtExaminationName)

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }


            dac.EnsureOpen();

            cmd.ExecuteNonQuery();

            dac.Close();
        }


        public void insertAccounts(string doctorId, string patientId, string treatmentName, int fee, int paid, int due, string discount, int totalAmount)
        {


            cmd = dac.GetCommand("sp_insertAccounts");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),       
                                     new SqlParameter("@patientId", patientId), 
                                     new SqlParameter("@treatmentName", treatmentName),  
                                     new SqlParameter("@fee", fee) ,
                                     new SqlParameter("@paid", paid)  ,
                                     new SqlParameter("@due", due),
                                     new SqlParameter("@discount", discount),
                                     new SqlParameter("@totalAmount", totalAmount),

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();

            cmd.ExecuteNonQuery();

            dac.Close();
        }




        public DataTable getMedicalHistory( string patientId)
        {
            cmd = dac.GetCommand("sp_getMedicalHistory");
            SqlParameter[] par = {
                                    
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }




        public DataTable getClinicalHistory(string doctorId, string patientId)
        {
            cmd = dac.GetCommand("sp_getClinicalHistory");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }






        public DataTable getDiagnosisPrognosis(string doctorId, string patientId)
        {
            cmd = dac.GetCommand("sp_getDiagnosisPrognosis");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public void deleteDiagnosisPrognosis(int id)
        {
            cmd = dac.GetCommand("sp_deleteDiagnosisPrognosis");
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

        public DataTable getAccounts(string doctorId, string patientId, string dueamount, string invoiceId)
        {
            int due = Convert.ToInt32(dueamount);
            cmd = dac.GetCommand("sp_getAccounts");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId),
                                     new SqlParameter("@due", due),
                                     new SqlParameter("@invoiceId",invoiceId ) // Added by Kalyan
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }
        public DataTable getAccountsForPatients(string patientId, string dueamount)
        {
            int due = Convert.ToInt32(dueamount);
            cmd = dac.GetCommand("sp_getAccountsforPatients");
            SqlParameter[] par = {
                                    
                                     new SqlParameter("@patientId", patientId),
                                     new SqlParameter("@due", due)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }

        public void deleteAccounts(int id)
        {
            cmd = dac.GetCommand("sp_deleteAccounts");
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




        public DataTable getTreatmentPlan(string doctorId, string patientId)
        {
            cmd = dac.GetCommand("sp_getTreatmentPlan");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);

            return ds.Tables[0];

        }




        public DataTable getTPNotes(string doctorId, string patientId)
        {
            cmd = dac.GetCommand("sp_getTPNotes");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }



        public DataTable getMedia(string doctorId, string patientId)
        {
            cmd = dac.GetCommand("sp_getMedia");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];

        }



        public void deleteTreatmentPlan(int id)
        {
            cmd = dac.GetCommand("sp_deleteTreatmentPlan");
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



        public void deleteTPNotes(int id)
        {
            cmd = dac.GetCommand("sp_deleteTPNotes");
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




        public void deleteMedia(int id)
        {
            cmd = dac.GetCommand("sp_deleteMedia");
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



        public DataTable getInvestigation(string doctorId, string patientId)
        {
            cmd = dac.GetCommand("sp_getInvestigation");
            SqlParameter[] par = {
                                     new SqlParameter("@doctorId", doctorId),
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);

            return ds.Tables[0];

        }

        public DataTable getInvestigationforPatient(string patientId)
        {
            cmd = dac.GetCommand("sp_getInvestigationforpatient");
            SqlParameter[] par = {
                                     new SqlParameter("@patientId", patientId)
                                 };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }
            ds = dac.ExecuteNonQuery_selectQuery(cmd);

            return ds.Tables[0];

        }

        


        public void deleteInvestigation(int id)
        {
            cmd = dac.GetCommand("sp_deleteInvestigation");
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


        //public string getUniqueRandomIdbyUserId(int userId)
        //{
        //    cmd = dac.GetCommand("sp_getUniqueRandomIdbyUserId");
        //    SqlParameter[] par = {
        //                             new SqlParameter("@id", userId)
        //                         };

        //    for (int i = 0; i < par.Length; i++)
        //    {
        //        cmd.Parameters.Add(par[i]);
        //    }

        //    dac.EnsureOpen();
        //    string uniqueRandomId = cmd.ExecuteScalar().ToString();
        //    dac.Close();

        //    return uniqueRandomId;
        //}

    }
}
