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

namespace WebCargaBDUNO27.Clases
{
    public class C_ClaseTabla
    {
        //*******************************************************
        //Area  para declarar los atributos de la clase Usuario
        //*******************************************************
        public string MesRemision { get; set; }
        public string Campaña { get; set; }
        public string NombreBase { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cedula { get; set; }
        public string FechaConvocatoria { get; set; }
        public string Tel1 { get; set; }
        public string Tel2 { get; set; }
        public string Tel3 { get; set; }
        public string Tel4 { get; set; }
        public string Email { get; set; }
        public string EstadoFosFec { get; set; }
        public string FechaRetiro { get; set; }
        public string Empresa { get; set; }

        //*******************************************************

    }
}
