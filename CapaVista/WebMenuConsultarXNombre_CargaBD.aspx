<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVista/Page_Maestra_Cargador.Master" AutoEventWireup="true" CodeBehind="WebMenuConsultarXNombre_CargaBD.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.WebMenuConsultarXNombre_CargaBD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PAGINA CONSULTA CLIENTE X NOMBRE</title>
    <link rel="stylesheet" type="text/css" href="../App_Themes/HojaEstilo_PortalCarga.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceIconosMenu" runat="server">
       <asp:ImageButton ID="RegresarMenuPpal" runat="server" Height="70px" 
        ImageUrl="~/CapaVista/Imagenes/Flecha_Atras.png" onclick="BotonSalir_Click" 
        ToolTip="Regresar al Menu Consultar" Width="85px" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCargador" runat="server">

        <asp:Label ID="LabelNombre" runat="server" Text="Digite el Nombre del Cliente:" 
         Font-Bold="True" ForeColor="#FEFF00" Font-Size="Medium"></asp:Label>
         &nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextNombre" runat="server"></asp:TextBox>
                        
         &nbsp;&nbsp;
                          
        <asp:Button ID="ButtonConsultaNombre" runat="server" 
         onclick="ButtonConsultaNombre_Click" Text="Consultar X Nombre" 
         Font-Bold="True" ForeColor="#ED018C" Font-Size="Small" />
         <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <br />

                          <asp:Label ID="LabelMensaje" runat="server" Font-Size="Medium" 
                          ForeColor="#FEFF00" Font-Bold="True"></asp:Label>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceContenido" runat="server">
<div class="EstiloBarraCuerpoCentral">
    <asp:Label ID="LabelTituloBases" runat="server" Text="CONSULTA X NOMBRE CLIENTE" Visible="False" Font-Bold="True" ForeColor="#ED018C" Font-Size="Medium">
    </asp:Label>

  <div class="ContenidoCuerpo">
    <asp:GridView ID="ListaGridConsultarCliente" runat="server" BackColor="#BAC0C5" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1" GridLines="None" Font-Bold="True" Font-Size="Smaller" 
        HorizontalAlign="Center" Visible="False">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
  </div>
</div>

</asp:Content>
