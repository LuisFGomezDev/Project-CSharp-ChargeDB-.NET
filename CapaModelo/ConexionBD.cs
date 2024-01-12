using System;
using System.Linq;
using System.Data.Odbc;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using WebCargaBDUNO27.Clases;

namespace WebCargaBDUNO27.CapaModelo
{
    public class ConexionBD
    {
    SqlConnection MiSqlConexion;

    //*****ACA SE CONFIGURA LA CADENA DE CONEXION AL SERVIDOR DE BASE DE DATOS***********
    //*****SQL SERVER****************************
    //string CadenaConex = "";
        string CadenaConex = @"Data Source=3I_CC_DELL\SQLEXPRESS;"
            + "initial catalog=DBUno27_CARGADBs; persist security info=False;"
			+ "Integrated Security=True";

    /*string CadenaConex = @"Data Source=DBUno27CARGADBs.mssql.somee.com;"
            + "initial catalog=DBUno27CARGADBs; persist security info=False;"
            + "workstation id=DBUno27CARGADBs.mssql.somee.com;"
            + "packet size=4096;"
            + "user id=Fernangm_SQLLogin_1;"
            + "pwd=2z6qelr1jx";*/

            


        public ConexionBD()//Constructor de la Clase ConexionBD
		{
		}


		public void Conectar()
		{
			MiSqlConexion=new SqlConnection(CadenaConex);
			MiSqlConexion.Open();
		}


		public void Desconectar()
		{
			
			MiSqlConexion.Close();
		}
		
//*****************************************************************

		//*****************************************************************
		//METODOS Y EVENTOS UTILIZADOS PARA CONEXIONES
		//CON LA BASE DE DATOS.
		//*****************************************************************


//*****************************************************************

		//*******************************************************************
		//Método que permite Cargar la tabla con los datos de la Base
        //retornando un 1 si fue efectiva la carga o 0 si no fue exitosa
		//*******************************************************************
        public int CargarBaseD(string NombreArchivo)		
		{
            //*****ACA SE CONFIGURA LA RUTA DEL SERVIDOR DONDE QUEDAN LOS ARCHIVOS EXCEL
            string RutaOrigen = ("D:/PROYECTOS SW_2015/WebCargaBDUNO27/WebCargaBDUNO27/Bases/" + NombreArchivo);

            //El primer paso es llenar el DataTable con los datos de la base en Excel.
            DataTable DT;
            OleDbDataAdapter MyCommand;
            OleDbConnection MyConnection;

            MyConnection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Extended Properties='Excel 12.0 Xml;HDR=Yes';" +
                           "Data Source=" + RutaOrigen);
            
            // Seleccion de la hoja de Excel a cargar
            MyCommand = new OleDbDataAdapter("select * from [Hoja1$]", MyConnection);
            //MyCommand = new OleDbDataAdapter("select * from [prueba$]",);

            DT = new DataTable();
            MyCommand.Fill(DT);
            MyConnection.Close();


            //El segundo paso es llenar la tabla de la Base de datos con el DataSet.
            SqlBulkCopy bulkcopy = new SqlBulkCopy(CadenaConex);
            bulkcopy.DestinationTableName = "dbo.TablaBDsCarga";

            try
            {
                //Escribimos en la tabla, los datos del DataTable
                bulkcopy.WriteToServer(DT);
                return 1;
            }
            
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return 0;
            }
            
		}//Fin del metodo CargarBaseD
		
		//*******************************************************************


        //*********************************************************************
        //Metodo que permite recuperar todos los campos existentes del Cliente 
        //segun el tipo de campo ingresado: Cedula, Email, Telefono, Nombre.
        //Se efectuan Busquedas Fraccionadas.
        //*********************************************************************

        public List<C_ClaseTabla> ConsultarDatosTabla(string Campo, int TipoCampo)
        {
            List<C_ClaseTabla> ListaCC_Completa = new List<C_ClaseTabla>();
            string Parametro1 = Campo;
            string CampoProc = "";
            string ProcedimientoSQL = "";
            int Longitud = 0;

            if (TipoCampo==1)//Consulta X Cedula
            {
               ProcedimientoSQL="P_ProcRecuperaCedulaDatos";
               Longitud = 25;
               CampoProc = "@CLI_DOCUMENTO";
            }
                else
            if (TipoCampo==2)//Consulta X Email
            {
               ProcedimientoSQL="P_ProcRecuperaEmailDatos";
               Longitud = 50;
               CampoProc = "@CLI_EMAIL";
            }
                else
            if (TipoCampo==3)//Consulta X Telefono
            {
               ProcedimientoSQL="P_ProcRecuperaTelefonoDatos";
               Longitud = 20;
               CampoProc = "@CLI_TELEFONO";
            }
                else//Campo = 4 = Consultar X Nombre
            {
               ProcedimientoSQL="P_ProcRecuperaNombreDatos";
               Longitud = 80;
               CampoProc = "@CLI_NOMBRE";
            }

            SqlCommand sqlSelectCommand1 = new SqlCommand();
            SqlParameter MiParametro;

            sqlSelectCommand1 = new SqlCommand(ProcedimientoSQL, MiSqlConexion);

            sqlSelectCommand1.CommandType = CommandType.StoredProcedure;

            MiParametro = sqlSelectCommand1.Parameters.Add(CampoProc, SqlDbType.NVarChar, Longitud);
            MiParametro.Value = Parametro1;

            try
            {
                SqlDataReader reader = sqlSelectCommand1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        C_ClaseTabla Cliente = new C_ClaseTabla();
                        Cliente.MesRemision = (reader[0].ToString());
                        Cliente.Campaña = (reader[1].ToString());
                        Cliente.NombreBase = (reader[2].ToString());
                        Cliente.Nombre = (reader[3].ToString());
                        Cliente.Apellido = (reader[4].ToString());
                        Cliente.Cedula = (reader[5].ToString());
                        Cliente.FechaConvocatoria = (reader[6].ToString());
                        Cliente.Tel1 = (reader[7].ToString());
                        Cliente.Tel2 = (reader[8].ToString());
                        Cliente.Tel3 = (reader[9].ToString());
                        Cliente.Tel4 = (reader[10].ToString());
                        Cliente.Email = (reader[11].ToString());
                        Cliente.EstadoFosFec = (reader[12].ToString());
                        Cliente.FechaRetiro = (reader[13].ToString());
                        Cliente.Empresa = (reader[14].ToString());

                        ListaCC_Completa.Add(Cliente);
                    }
                    reader.Close();
                    Desconectar();
                    return ListaCC_Completa;
                }
                else
                {
                    reader.Close();
                    Desconectar();
                    return null;
                }
            }

            catch
            {
                Desconectar();
                return null;
            }
        }


        //*****************************************************************

	}//Final de la clase ConexionBD
}//Final del NameSpace WebCargaBDUNO27
