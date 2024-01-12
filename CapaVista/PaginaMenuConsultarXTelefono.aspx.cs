using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCargaBDUNO27.CapaVista
{
    public partial class PaginaMenuConsultarXTelefono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegresarMenuPpal.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Flecha_Atras_Small.png'");
            RegresarMenuPpal.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Flecha_Atras.png'");

        }

        protected void ButtonConsultaTelefono_Click(object sender, EventArgs e)
        {
            LabelMensaje.Text = "";
            ListaGridConsultarClienteTelefono.Visible = false;

            if (TextTelefono.Text != "")
            {
                if (ListaGridConsultarClienteTelefono.Rows.Count > 0)
                {
                    LabelTituloConsultaTelefono.Visible = true;
                    ListaGridConsultarClienteTelefono.Visible = true;
                }
                else
                {
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "El Numero de Telefono ingresado NO existe";
                    LabelTituloConsultaTelefono.Visible = false;
                }
            }
            else
            {
                LabelMensaje.Text = "";
                LabelMensaje.Text = "Falta Ingresar el Telefono";
            }
        }

        protected void RegresarMenuPpal_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Pagina_WebPpal_Carga.aspx");
        }
    }
}
