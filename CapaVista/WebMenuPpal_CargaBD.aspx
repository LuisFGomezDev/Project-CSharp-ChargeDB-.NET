<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVista/Page_Maestra_Cargador.Master" AutoEventWireup="true" CodeBehind="WebMenuPpal_CargaBD.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.WebMenuPpal_CargaBD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PAGINA MENU PRINCIPAL</title>
    <link rel="stylesheet" type="text/css" href="../App_Themes/HojaEstilo_PortalCarga.css"/> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceIconosMenu" runat="server">
                      <asp:ImageButton ID="CargarBaseD" runat="server" Width="85px" 
                          ToolTip="Cargar a SQLServer" 
                          ImageUrl="~/CapaVista/Imagenes/Database_Icono.png" 
                          Height="50px" onclick="CargarBaseD_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                      <asp:ImageButton ID="BotonConsultar" runat="server" Height="50px" 
                          ImageUrl="~/CapaVista/Imagenes/Buscar2.png"
                          ToolTip="Consultar Bases" Width="85px" onclick="BotonConsultar_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      
                      <asp:ImageButton ID="Salir" runat="server"
                          ImageUrl="~/CapaVista/Imagenes/Cerrar.png" style="margin-top:0px" 
                          Width="85px" ToolTip="Salir de la Aplicacion" Height="50px" 
                          OnclientClick="return cerrarpagina();" onclick="Salir_Click"/>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCargador" runat="server">

                      <asp:FileUpload ID="ControlCargarFile" runat="server" Font-Size="Medium" 
                          ForeColor="White" Height="35px" 
                          ToolTip="Cargar Archivo" Width="400px" />
                      <br />
                      <asp:Label ID="LabelMensaje" runat="server" Font-Size="Large" 
                          ForeColor="#FCFE01" Font-Bold="True"></asp:Label>
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceContenido" runat="server">
</asp:Content>
