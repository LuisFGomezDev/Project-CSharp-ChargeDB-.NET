<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVista/Page_Maestra_Cargador.Master" AutoEventWireup="true" CodeBehind="PROBADOR_ERROR.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.PROBADOR_ERROR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PROBADOR CEDULA</title>
    <link rel="stylesheet" type="text/css" href="../App_Themes/HojaEstilo_PortalCarga.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceIconosMenu" runat="server">
       <asp:ImageButton ID="RegresarMenuPpal" runat="server" Height="70px" 
        ImageUrl="~/CapaVista/Imagenes/Flecha_Atras.png" onclick="BotonSalir_Click" 
        ToolTip="Regresar al Menu Consultar" Width="85px" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCargador" runat="server">

                          <asp:Label ID="LabelCedula" runat="server" Text="Digite Cedula Ciudadania:" 
                              Font-Bold="True" ForeColor="#FEFF00" Font-Size="Medium"></asp:Label>
                          &nbsp;&nbsp;&nbsp;

                          <asp:TextBox ID="TextCedula" runat="server"></asp:TextBox>
                        
                          &nbsp;&nbsp;
                          
                          <asp:Button ID="ButtonConsultaCedula" runat="server" 
                              onclick="ButtonConsultaCedula_Click" Text="Consultar Cedula" 
                              Font-Bold="True" ForeColor="#ED018C" Font-Size="Small" />
                            <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <br />

                          <asp:Label ID="LabelMensaje" runat="server" Font-Size="Medium" 
                          ForeColor="#FEFF00" Font-Bold="True"></asp:Label>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceContenido" runat="server">
</asp:Content>
