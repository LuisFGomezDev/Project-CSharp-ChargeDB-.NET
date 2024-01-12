using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCargaBDUNO27.CapaVista
{
    public partial class WebMenuConsultar_CargaBD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ConsultarBases.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Bases_Datos_Banco_Icono_Small.png'");
            ConsultarBases.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Bases_Datos_Banco_Icono.png'");

            ConsultarCliente.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/FotoMiembro_Small.png'");
            ConsultarCliente.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/FotoMiembro.png'");


            ConsultarEmail.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Email_Small.png'");
            ConsultarEmail.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Email.png'");

            ConsultarTelefono.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Telefono_Small.png'");
            ConsultarTelefono.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Telefono.png'");

            ConsultarNombre.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Nombre_Apellido_Small.png'");
            ConsultarNombre.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Nombre_Apellido.png'");


            RegresarMenuPpal.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Flecha_Atras_Small.png'");
            RegresarMenuPpal.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Flecha_Atras.png'");

        }

        protected void BotonCargarBases_Click(object sender, ImageClickEventArgs e)
        {
          
            ListaGridViewBases.Visible = true;
            LabelTituloBases.Visible = true;
          
        }

        protected void ConsultarCliente_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("WebMenuConsultarXCC_CargaBD.aspx");
        }

        protected void ConsultarEmail_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("WebMenuConsultarXEmail_CargaBD.aspx");
        }

        protected void ConsultarTelefono_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("WebMenuConsultarXTel_CargaBD.aspx");
        }

        protected void ConsultarNombre_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("WebMenuConsultarXNombre_CargaBD.aspx");
        }

 
        protected void RegresarMenuPpal_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("WebMenuPpal_CargaBD.aspx");
        }

    }
}