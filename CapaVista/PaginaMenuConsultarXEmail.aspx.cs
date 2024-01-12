using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCargaBDUNO27.CapaVista
{
    public partial class PaginaMenuConsultarXEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegresarMenuPpal.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Flecha_Atras_Small.png'");
            RegresarMenuPpal.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Flecha_Atras.png'");

        }

        protected void ButtonConsultaEmail_Click(object sender, EventArgs e)
        {

            LabelMensaje.Text = "";
            LabelTituloBases.Visible = false;

            if (TextEmail.Text != "")
            {
                if (ListaGridConsultarClienteEmail.Rows.Count > 0)
                {
                    ListaGridConsultarClienteEmail.Visible = true;
                    LabelTituloBases.Visible = true;
                }
                else
                {
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "El Email ingresado NO existe";
                    LabelTituloBases.Visible = false;
                }
            }
            else
            {
                LabelMensaje.Text = "";
                LabelMensaje.Text = "Falta Ingresar el Email";
            }
            
        }

        protected void RegresarMenuPpal_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Pagina_WebPpal_Carga.aspx");
        }
    }
}
