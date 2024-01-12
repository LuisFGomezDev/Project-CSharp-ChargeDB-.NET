using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System;
using System.Linq;
using System.Collections;

using System.Data.Odbc;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;

using WebCargaBDUNO27.CapaControlador;
using WebCargaBDUNO27.Clases;


namespace WebCargaBDUNO27.CapaVista
{
    public partial class PROBADOR_ERROR : System.Web.UI.Page
    {
        SqlConnection MiSqlConexion;

        //*****ACA SE CONFIGURA LA CADENA DE CONEXION AL SERVIDOR DE BASE DE DATOS***********
        //*****SQL SERVER****************************
        //string CadenaConex = "";
        string CadenaConex = @"Data Source=3I_CC_DELL\SQLEXPRESS;"
            + "initial catalog=DBUno27_CARGADBs; persist security info=False;"
            + "Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BotonSalir_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("WebMenuConsultar_CargaBD.aspx");
        }


        //Metodo para consultar el cliente por el Numero de Cedula
        protected void ButtonConsultaCedula_Click(object sender, EventArgs e)
        {
            MiSqlConexion = new SqlConnection(CadenaConex);
            MiSqlConexion.Open();

            LabelMensaje.Text = "";
            //LabelTituloBases.Visible = false;
            string CedulaCliente = TextCedula.Text;
            C_CargarTabla ObjTablaDatos;

            if (CedulaCliente != "")
            {
                ObjTablaDatos = new C_CargarTabla();
                List<C_ClaseTabla> ListaCC_Completa = new List<C_ClaseTabla>();

          //*********************************************************************************
                //Se envian la cedula del cliente y el tipo 1 = Cedula
                //ListaCC_Completa = ObjTablaDatos.ConsultarDatosTabla(CedulaCliente, 1);

                string Parametro1 = CedulaCliente;
                string ProcedimientoSQL = "";
                int Longitud = 0;
                int TipoCampo = 1;

                if (TipoCampo == 1)//Consulta X Cedula
                {
                    ProcedimientoSQL = "P_ProcRecuperaCedulaDatos";
                    Longitud = 25;
                }
                else
                    if (TipoCampo == 2)//Consulta X Email
                    {
                        ProcedimientoSQL = "P_ProcRecuperaEmailDatos";
                        Longitud = 50;
                    }
                    else
                        if (TipoCampo == 3)//Consulta X Telefono
                        {
                            ProcedimientoSQL = "P_ProcRecuperaTelefonoDatos";
                            Longitud = 20;
                        }
                        else//Campo = 4 = Consultar X Nombre
                        {
                            ProcedimientoSQL = "P_ProcRecuperaNombreDatos";
                            Longitud = 80;
                        }

                SqlCommand sqlSelectCommand1 = new SqlCommand();
                SqlParameter MiParametro;

                sqlSelectCommand1 = new SqlCommand(ProcedimientoSQL, MiSqlConexion);

                sqlSelectCommand1.CommandType = CommandType.StoredProcedure;

                MiParametro = sqlSelectCommand1.Parameters.Add("@CLI_DOCUMENTO", SqlDbType.NVarChar, Longitud);
           MiParametro.Value = Parametro1;

            /*    try
                {*/
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "ENTRO AL TRY.......";
                    SqlDataReader reader = sqlSelectCommand1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        /*LabelMensaje.Text = "";
                        LabelMensaje.Text = "EL READER TIENE DATOS";*/

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

                            LabelMensaje.Text = "";
                            LabelMensaje.Text = ("NOMBRE REGISTRO:" + reader[3].ToString());


                            ListaCC_Completa.Add(Cliente);
                        }
                        reader.Close();
                        MiSqlConexion.Close();
                        //return ListaCC_Completa;
                    }
                    else
                    {
                        LabelMensaje.Text = "";
                        LabelMensaje.Text = "OJO!!!!.......EL READER NO TIENE N A D A";

                        reader.Close();
                        MiSqlConexion.Close();
                        //return null;
                    }
            /*    }
            
                catch (Exception f)
                {
                    //LabelMensaje.Text = "";
                    //LabelMensaje.Text = "OJO!!!!.......HUBO UN ERROR CON EL READER";

                    Console.WriteLine("{0} Exception caught.", f);
                    Console.ReadLine();

                    MiSqlConexion.Close();
                    //return null;
                }*/

          //*********************************************************************************
                
      /*          
                if (ListaCC_Completa != null)
                {
                    //En esta zona se recarga el GridView con los datos recibidos

                    //LabelTituloBases.Visible = true;
                    ListaGridConsultarCliente.Visible = true;
                    ListaGridConsultarCliente.DataSource = ListaCC_Completa;*/
        //        }//Fin if
                /*else
                {
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "La Cedula ingresada NO existe";
                    //LabelTituloBases.Visible = false;
                }*/
            }
            else
            {
                LabelMensaje.Text = "";
                LabelMensaje.Text = "Falta Ingresar la Cedula";
            }
        }
 



    }
}
