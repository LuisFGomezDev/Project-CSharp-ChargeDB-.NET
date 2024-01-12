using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCargaBDUNO27.CapaVista
{
    public partial class PaginaMenuConsultarXNombre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegresarMenuPpal.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Flecha_Atras_Small.png'");
            RegresarMenuPpal.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Flecha_Atras.png'");
        }

        protected void ButtonConsultaNombre_Click(object sender, EventArgs e)
        {
            LabelMensaje.Text = "";
            LabelTituloConsultaNombre.Visible = false;

            if (TextNombre.Text != "")
            {
                if (ListaGridConsultarClienteNombre.Rows.Count > 0)
                {
                    ListaGridConsultarClienteNombre.Visible = true;
                    LabelTituloConsultaNombre.Visible = true;
                }
                else
                {
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "El Nombre del Cliente NO existe";
                    LabelTituloConsultaNombre.Visible = false;
                }
            }
            else
            {
                LabelMensaje.Text = "";
                LabelMensaje.Text = "Falta Ingresar el Nombre del Cliente";
            }
        }



        protected void RegresarMenuPpal_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Pagina_WebPpal_Carga.aspx");
        }
    }
}
