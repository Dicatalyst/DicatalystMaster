using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Connections
    {
        private SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dicatalyst"].ConnectionString);

        public Connections()
        {
        }

        #region Connection

        public void EnsureOpen()
        {
            if (scon.State != ConnectionState.Open) scon.Open();
        }

        public void Close()
        {
            if (scon.State != ConnectionState.Closed
                && transaction == null) scon.Close();
        }

        #endregion Connection

        #region Command

        public SqlCommand GetCommand(string spName)
        {
            SqlCommand command = new SqlCommand(spName, scon);
            command.CommandType = CommandType.StoredProcedure;
            return command;
        }

        public SqlCommand GetCommand(string spName, params SqlParameter[] parameters)
        {
            EnsureOpen();
            SqlCommand command = new SqlCommand();
            command.Connection = scon;
            command.CommandText = spName;
            command.CommandType = CommandType.StoredProcedure;
            if (transaction != null) command.Transaction = transaction;

            foreach (SqlParameter parameter in parameters)
            {
                command.Parameters.Add(parameter);
            }
            return command;
        }

        public SqlCommand GetScalar(string commandtext)
        {
            EnsureOpen();
            SqlCommand command = new SqlCommand();
            command.CommandText = commandtext;
            command.Connection = scon;
            command.CommandType = CommandType.Text;
            if (transaction != null) command.Transaction = transaction;
            return command;
        }

        public SqlCommand GetCommand(string spName, ArrayList parameters)
        {
            EnsureOpen();
            SqlCommand command = new SqlCommand();
            command.Connection = scon;
            command.CommandText = spName;
            command.CommandType = CommandType.StoredProcedure;
            if (transaction != null) command.Transaction = transaction;

            foreach (SqlParameter parameter in parameters)
            {
                command.Parameters.Add(parameter);
            }
            return command;
        }

        #endregion Command

        #region Execute Queries

        public DataSet ExecuteNonQuery_selectQuery(SqlCommand command)
        {
            try
            {
                EnsureOpen();
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                RollBackTransaction();
                throw ex;
            }
            finally
            {
                Close();
            }
        }

        public DataSet ExecuteNonQueryPaging(SqlCommand command, int current, int pagesize, string tablename)
        {
            try
            {
                EnsureOpen();
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                da.Fill(ds, current, pagesize, tablename);
                return ds;
            }
            catch (Exception ex)
            {
                RollBackTransaction();
                throw ex;
            }
            finally
            {
                Close();
            }
        }

        public int ExecuteNonQuery(SqlCommand command)
        {
            int i = 0;
            try
            {
                EnsureOpen();
                command.Connection = scon;
                i = command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                RollBackTransaction();
                throw ex;
            }
            finally
            {
                Close();
            }

            return i;
        }

        public int ExecuteNonQuery2(SqlCommand command)
        {
            try
            {
                EnsureOpen();
                command.Connection = scon;
                command.ExecuteNonQuery();
                return ExecuteScalar("SELECT @@IDENTITY AS New_ID");
            }
            catch (Exception ex)
            {
                RollBackTransaction();
                throw ex;
            }
            finally
            {
                Close();
            }
        }

        public int ExecuteScalar(string commandText)
        {
            SqlCommand command = new SqlCommand();
            try
            {
                EnsureOpen();
                command.Connection = scon;
                command.CommandText = commandText;
                if (transaction != null) command.Transaction = transaction;
                object result = command.ExecuteScalar();
                //if(result !=null)
                return Convert.ToInt32(command.ExecuteScalar());
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Close();
            }
        }

        public int GetCurrentID()
        {
            return ExecuteScalar("SELECT @@IDENTITY AS New_ID");
        }

        #endregion Execute Queries

        #region Transaction

        public void BeginTransaction()
        {
            EnsureOpen();
            if (transaction == null)
                transaction = scon.BeginTransaction();
        }

        public void CommitTransaction()
        {
            if (transaction != null)
            {
                transaction.Commit();
                transaction = null;
                Close();
            }
        }

        public void RollBackTransaction()
        {
            if (transaction != null)
            {
                transaction.Rollback();
                transaction = null;
                Close();
            }
        }

        #endregion Transaction

        private SqlTransaction transaction = null;
    }
}