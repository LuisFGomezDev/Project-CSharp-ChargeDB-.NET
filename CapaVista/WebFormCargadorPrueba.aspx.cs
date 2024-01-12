using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.IO;
using System.Web.SessionState;
using System.Web.Configuration;

using WebCargaBDUNO27.CapaControlador;

namespace WebCargaBDUNO27.CapaVista
{
    public partial class WebFormCargadorPrueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarBaseD.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Database_Icono_Small.png'");
            CargarBaseD.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Database_Icono.png'");

            BotonConsultar.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Buscar2_Small.png'");
            BotonConsultar.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Buscar2.png'");

            Salir.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Cerrar_Small.png'");
            Salir.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Cerrar.png'");

        }

        //******Este metodo se encarga de trasladar el archivo Excel desde 
        //******el cliente hasta el servidor Web de la Aplicacion
        protected void BotonCargar_Click(object sender, ImageClickEventArgs e)
        {
        }


        //******Este metodo se encarga de Cargar los datos de la Base en Excel a SQL Server
        protected void CargarBaseD_Click(object sender, ImageClickEventArgs e)
        {
            int resultado = 4;
            string NombreArchivo = "";
            C_CargarTabla Carga = new C_CargarTabla();
            string Path_Server = Server.MapPath("~/Bases/");

            if (ControlCargarFile.HasFile)
            {
                NombreArchivo = (ControlCargarFile.FileName).ToString();

                if (!File.Exists(Path_Server + NombreArchivo))
                {
                    //Guardamos el archivo trasladandolo desde el cliente a la carpeta “Bases” del     
                    //servidor.
                    ControlCargarFile.SaveAs(MapPath("~/Bases/" + ControlCargarFile.FileName.ToString()));

                    if (NombreArchivo != "")
                    {
                        resultado = Carga.CargarBaseD(NombreArchivo);

                        if (resultado == 1)
                        {
                            LabelMensaje.Text = "";
                            LabelMensaje.Text = "La carga de la Base fue Exitosa";
                        }
                        else
                        {
                            LabelMensaje.Text = "";
                            LabelMensaje.Text = "Hubo un error al cargar la Base de Datos";
                        }
                    }
                    else
                    {
                        LabelMensaje.Text = "";
                        LabelMensaje.Text = "No se ha elegido el archivo Excel para la Carga";
                    }

                }
                else
                {
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "ATENCION !!!!!! BASE YA HABIA SIDO CARGADA ANTES...";
                }

            }
            else
            {
                LabelMensaje.Text = "";
                LabelMensaje.Text = "No se ha seleccionado el archivo a cargar";
            }

        }//Fin Metodo


        protected void BotonConsultar_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("PaginaMenuConsultar.aspx");
        }

        protected void Salir_Click(object sender, ImageClickEventArgs e)
        {
            this.Dispose();
        }

    }
}