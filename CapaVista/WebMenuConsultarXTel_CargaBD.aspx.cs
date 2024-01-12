﻿using System.Collections.Generic;
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

using WebCargaBDUNO27.CapaControlador;
using WebCargaBDUNO27.Clases;

namespace WebCargaBDUNO27.CapaVista
{
    public partial class WebMenuConsultarXTel_CargaBD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            RegresarMenuPpal.Attributes.Add("onmouseover", "this.src = '/CapaVista/Imagenes/Flecha_Atras_Small.png'");
            RegresarMenuPpal.Attributes.Add("onmouseleave", "this.src = '/CapaVista/Imagenes/Flecha_Atras.png'");

        }



        protected void BotonSalir_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("WebMenuConsultar_CargaBD.aspx");
        }


        //Metodo para consultar el cliente por el Email (Tipo 2)
        protected void ButtonConsultaTel_Click(object sender, EventArgs e)
        {
            LabelMensaje.Text = "";
            //LabelTituloBases.Visible = false;
            string TelefonoCliente = TextTel.Text;
            C_CargarTabla ObjTablaDatos;

            if (TelefonoCliente != "")
            {
                ObjTablaDatos = new C_CargarTabla();
                List<C_ClaseTabla> ListaCC_Completa = new List<C_ClaseTabla>();


                //Se envian el Telefono del cliente y el tipo 3 = Telefono
                ListaCC_Completa = ObjTablaDatos.ConsultarDatosTabla(TelefonoCliente, 3);

                if (ListaCC_Completa != null)
                {
                    //En esta zona se recarga el GridView con los datos recibidos

                    LabelTituloBases.Visible = true;
                    ListaGridConsultarCliente.Visible = true;
                    ListaGridConsultarCliente.DataSource = ListaCC_Completa;
                    ListaGridConsultarCliente.DataBind();
                }//Fin if
                else
                {
                    LabelMensaje.Text = "";
                    LabelMensaje.Text = "El Telefono ingresado NO existe";
                    LabelTituloBases.Visible = false;
                }
            }
            else
            {
                LabelMensaje.Text = "";
                LabelMensaje.Text = "Falta Ingresar el Telefono";
            }
        }
    }
}