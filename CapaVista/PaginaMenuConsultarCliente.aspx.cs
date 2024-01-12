using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCargaBDUNO27.CapaVista
{
    public partial class PaginaMenuConsultarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegresarMenuPpal.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Flecha_Atras_Small.png'");
            RegresarMenuPpal.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Flecha_Atras.png'");

        }

        protected void BotonSalir_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("PaginaMenuConsultar.aspx");
        }

        protected void ButtonConsultaCedula_Click(object sender, EventArgs e)
        {
            LabelMensaje.Text = "";
            LabelTituloBases.Visible = false;

            if (TextCedula.Text != "") 
            {
                if (ListaGridConsultarCliente.Rows.Count > 0)
                {
                    ListaGridConsultarCliente.Visible = true;
                    LabelTituloBases.Visible = true;
                }
                else
                {
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "La Cedula ingresada NO existe";
                    LabelTituloBases.Visible = false;
                }
            }
            else
            {
                LabelMensaje.Text = "";
                LabelMensaje.Text = "Falta Ingresar la Cedula";
            }
        }
        
    }
}
