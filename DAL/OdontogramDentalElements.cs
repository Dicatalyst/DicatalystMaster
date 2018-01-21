using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class OdontogramDentalElements
    {
        private SqlCommand cmd;
        private SqlDataAdapter da;
        private DataSet ds;
        private Connections dac = new Connections();


        public void insertDentalExamElement(int dentalExamId ,string dentalExamElement)
        {


            cmd = dac.GetCommand("sp_insertDentalExamElement");
            SqlParameter[] par = {
                new SqlParameter("@dentalExamId", dentalExamId),                                    
                new SqlParameter("@dentalExamElement", dentalExamElement)                                 
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }

        public void insertDentalExamName(string dentalExaminationName)
        {


            cmd = dac.GetCommand("sp_insertDentalExamName");
            SqlParameter[] par = {
                new SqlParameter("@dentalExaminationName", dentalExaminationName)                                 
                                             
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }

            dac.EnsureOpen();
            cmd.ExecuteNonQuery();
            dac.Close();

        }

        public DataTable getDentalExamName()
        {
            cmd = dac.GetCommand("sp_getDentalExamName");
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public DataTable getDentalExamElements()
        {
            cmd = dac.GetCommand("sp_getDentalExamElements");
            ds = dac.ExecuteNonQuery_selectQuery(cmd);
            return ds.Tables[0];
        }

        public void deleteDentalExamName(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentalExamName");
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
        public void deleteDentalExamElements(int id)
        {
            cmd = dac.GetCommand("sp_deleteDentalExamElements");
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


        public void insertDentalElement(string toothNo ,int examinationId ,int examinationelementId ,string comments ,string doctorId ,string patientId , DateTime datetime )
        {


            cmd = dac.GetCommand("sp_insertDentalElement");
            SqlParameter[] par = {
                new SqlParameter("@toothNo", toothNo),       
                new SqlParameter("@examinationId", examinationId),                                    
                                     
                new SqlParameter("@examinationelementId", examinationelementId),  
                new SqlParameter("@comments", comments) ,
                new SqlParameter("@doctorId", doctorId)  ,
  
     
                new SqlParameter("@patientId", patientId),
                new SqlParameter("@datetime", datetime)  
                                    

                                   
            };

            for (int i = 0; i < par.Length; i++)
            {
                cmd.Parameters.Add(par[i]);
            }


            dac.EnsureOpen();

            cmd.ExecuteNonQuery();

            dac.Close();

        }



        public void insertodontogramDentalExamination(string toothNo, string examinationName, int examId, string comments, string doctorId, string patientId)
        {


            cmd = dac.GetCommand("sp_odontogramDentalExamination");
            SqlParameter[] par = {
                new SqlParameter("@toothNo", toothNo),       
                new SqlParameter("@examinationName", examinationName), 
                new SqlParameter("@examId", examId),  
                new SqlParameter("@comments", comments) ,
                new SqlParameter("@doctorId", doctorId)  ,
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


        
    }
}
