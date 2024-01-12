using System;
using System.Linq;
using System.IO;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Data.SqlTypes;
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
using WebCargaBDUNO27.CapaModelo;

using WebCargaBDUNO27.Clases;

namespace WebCargaBDUNO27.CapaControlador
{
    public class C_CargarTabla
    {
        protected ConexionBD con;

        public int CargarBaseD(string NombreArchivo)
        {
            int Rta = 4;
            con = new ConexionBD();
            con.Conectar();

            Rta = con.CargarBaseD(NombreArchivo);

            if (Rta == 1)
            {
                con.Desconectar();
                return 1;//La Carga fue Exitosa
            }
            else
            {
                con.Desconectar();
                return 0;//La Carga NO fue Exitosa... Tuvo problemas
            }
        }//Fin del metodo
        //*******************************************************


        public List<C_ClaseTabla> ConsultarDatosTabla(string Campo, int Tipo)
        {
            con = new ConexionBD();
            con.Conectar();
            return con.ConsultarDatosTabla(Campo, Tipo);

        }//Fin del metodo
        //*******************************************************
    }//Fin de la Clase
}//Fin Namespace
